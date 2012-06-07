package com.chloe.mvcs.view.profileEditor.addresses
{
	import com.chloe.mvcs.model.address.AddressModel;
	
	import flash.events.Event;
	
	public class AddressVerificationEvent extends Event
	{
		public static const VERIFY_ADDRESS:String = "VERIFY_ADDRESS";
		public static const ADDRESS_VERIFIED:String = "ADDRESS_VERIFIED";
		public static const BAD_ADDRESS:String = "BAD_ADDRESS";
		public static const UNABLE_TO_VERIFY_ADDRESS:String = "UNABLE_TO_VERIFY_ADDRESS";
		
		private var _addressToVerify:String = new String();
		private var _verifiedAddress:AddressModel
		public function AddressVerificationEvent(type:String, aAddressToVerify:String = null, aVerifiedAddress:AddressModel = null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_addressToVerify = aAddressToVerify;
			_verifiedAddress = aVerifiedAddress;
		}
		
		public function get addressToVerify():String		{return _addressToVerify};
		public function get verifiedAddress():AddressModel	{return _verifiedAddress};
		
		override public function clone():Event {
			
			return new AddressVerificationEvent(type, _addressToVerify, _verifiedAddress, bubbles, cancelable);
		}
	}
}