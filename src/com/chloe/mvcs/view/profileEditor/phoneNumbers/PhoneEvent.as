package com.chloe.mvcs.view.profileEditor.phoneNumbers
{
	import com.chloe.mvcs.model.phone.PhoneNumberHistoryModel;
	
	import flash.events.Event;
	
	public class PhoneEvent extends Event
	{
		public static const ADD_NEW_PHONE_NUMBER:String = "ADD_NEW_PHONE_NUMBER";
		public static const EDIT_PHONE_NUMBER:String = "EDIT_PHONE_NUMBER";;
		
		private var _phoneHistory:PhoneNumberHistoryModel;
		public function PhoneEvent(type:String, aPhoneHistory:PhoneNumberHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_phoneHistory = aPhoneHistory
		}
		
		public function get phoneHistory():PhoneNumberHistoryModel {
			
			return _phoneHistory;
		}
		
		override public function clone():Event {
			
			return new PhoneEvent(type, _phoneHistory, bubbles, cancelable);
		}
	}
}