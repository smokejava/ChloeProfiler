package com.chloe.mvcs.service.address
{
	import com.chloe.mvcs.model.address.AddressModel;
	import com.chloe.mvcs.model.address.CityModel;
	import com.chloe.mvcs.model.address.CountryModel;
	import com.chloe.mvcs.model.address.CountyModel;
	import com.chloe.mvcs.model.address.StateModel;
	import com.chloe.mvcs.model.address.StreetAddressModel;
	import com.chloe.mvcs.model.address.ZipCodeModel;
	import com.chloe.mvcs.model.global.AbbreviationModel;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressVerificationEvent;
	import com.mapquest.services.geocode.Geocoder;
	import com.mapquest.services.geocode.GeocoderEvent;
	import com.mapquest.services.geocode.GeocoderLocation;
	
	import flash.events.Event;
	import flash.events.NetStatusEvent;
	import flash.net.NetConnection;
	import flash.net.ObjectEncoding;
	import flash.net.Responder;
	
	import org.robotlegs.mvcs.Actor;
	
	public class AddressService extends Actor implements IAddressService
	{
		private var geocoder:Geocoder = new Geocoder("Fmjtd%7Cluu2206tn0%2Cb2%3Do5-huawl");
		private var location:GeocoderLocation = new GeocoderLocation();
		private var addressToVerify:String = new String();
		public function AddressService()
		{
			super();
			
			geocoder.addEventListener(GeocoderEvent.GEOCODE_RESPONSE, onAddressVerifiedSuccessHandler);
			geocoder.addEventListener(GeocoderEvent.GEOCODE_ERROR_EVENT, onGeocoderErrorHandler);
			geocoder.addEventListener(GeocoderEvent.HTTP_ERROR_EVENT, onHttpErrorHandler);

		}
		
		public function verifyAddress(value:String):void{
			
			addressToVerify = value;
			geocoder.geocode(addressToVerify);
		}
		
		private function onAddressVerifiedSuccessHandler(event:GeocoderEvent):void {
			
			var verifiedAddress:AddressModel = new AddressModel();
			for each (var loc:GeocoderLocation in event.geocoderResponse.locations) {
				var o:Object = new Object();
				o.LatLng = loc.displayLatLng.lat + ", " + loc.displayLatLng.lng;
				o.GeocodeQuality = loc.geocodeQuality;
				o.GeocodeQualityCode = loc.geocodeQualityCode;
				
				var street:StreetAddressModel = new StreetAddressModel();
				street.streetAddress = loc.street;
				verifiedAddress.street = street;
				
				var city:CityModel = new CityModel();
				city.city = loc.city;
				verifiedAddress.city = city;
				
				var state:StateModel = new StateModel();
				state.state = loc.state;
				verifiedAddress.state = state;
				
				var zipCode:ZipCodeModel = new ZipCodeModel();
				zipCode.zipCode = loc.postalCode;
				verifiedAddress.zipCode = zipCode;
				
				var county:CountyModel = new CountyModel();
				county.county = loc.county;
				verifiedAddress.county = county;
				
				var country:CountryModel = new CountryModel();
				var countryAbbreviation:AbbreviationModel = new AbbreviationModel();
				countryAbbreviation.abbreviation = loc.country;
				country.abbreviation = countryAbbreviation;
				verifiedAddress.country = country;
				
				verifiedAddress.lat = loc.displayLatLng.lat;
				verifiedAddress.lng = loc.displayLatLng.lng;
			}
			
			dispatch(new AddressVerificationEvent(AddressVerificationEvent.ADDRESS_VERIFIED, null, verifiedAddress));
		}
		
		private function onGeocoderErrorHandler(event:GeocoderEvent):void {
			
			dispatch(new AddressVerificationEvent(AddressVerificationEvent.BAD_ADDRESS, addressToVerify));
		}
		
		private function onHttpErrorHandler(event:GeocoderEvent):void{
			
			dispatch(new AddressVerificationEvent(AddressVerificationEvent.UNABLE_TO_VERIFY_ADDRESS, addressToVerify));
		}
	}
}