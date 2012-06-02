package com.chloe.mvcs.model.address
{
	[RemoteClass(alias='Chloe.dto.address.AddressModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.geom.Point;
	
	public class AddressModel extends EventDispatcher
	{
		public var id:String;
		public var lat:Number = new Number();
		public var lng:Number = new Number();
		public var street:StreetAddressModel;
		public var city:CityModel;
		public var county:CountyModel;
		public var state:StateModel;
		public var country:CountryModel;
		public var zipCode:ZipCodeModel;
		
		private var _latLng:Point = new Point();
		public function AddressModel(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function get latLng():Point {
			
			return latLng;
		}
		
		public function set latLng(arg1:Point):void {
			
			latLng = arg1;
			lat = latLng.x;
			lng = latLng.y;
		}
		
		public function addressToString():String {
			
			return this.street.streetAddress + " " + this.city.city + " " + this.state.state + " " + this.zipCode.zipCode
		}
	}
}