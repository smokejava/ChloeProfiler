package com.chloe.mvcs.service.address
{
	import com.chloe.mvcs.model.address.AddressModel;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressVerificationEvent;
	
	import flash.events.Event;
	import flash.events.NetStatusEvent;
	import flash.net.NetConnection;
	import flash.net.ObjectEncoding;
	import flash.net.Responder;
	
	import org.robotlegs.mvcs.Actor;
	
	public class AddressService extends Actor implements IAddressService
	{
		private var netConnection:NetConnection = new NetConnection();
		public function AddressService()
		{
			super();

		}
		
		public function verifyAddress(value:String):void
		{
			
			//TODO Add calls for mapquest address geocoding calls
		}
		
		private function onAddressVerifiedSuccessHandler(event:Event):void {
			
			
			var tempAddress:AddressModel = new AddressModel();
			
			dispatch(new AddressVerificationEvent(AddressVerificationEvent.ADDRESS_VERIFIED, null, tempAddress));
		}
		
		
		private function setupConnection():void {
			
			netConnection = new NetConnection();
			netConnection.client = this;
			netConnection.objectEncoding = ObjectEncoding.AMF3;
			
			registerClasses();
			
			try{
				
				netConnection.connect("http://www.thechloeproject.com/gateway.aspx");
			} catch(event:NetStatusEvent) {
				
			}
		}
		
		private function registerClasses():void {
			
			flash.net.registerClassAlias('Chloe.AddressModel', AddressModel);
			
			
		}
	}
}