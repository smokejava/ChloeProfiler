package com.chloe.mvcs.view.profileEditor.phoneNumbers
{
	import com.chloe.mvcs.model.phone.PhoneNumberHistoryModel;
	
	import flash.events.Event;
	
	public class PhoneNumberEvent extends Event
	{
		public static const SAVE_NEW_PHONE_NUMBER:String = "SAVE_NEW_PHONE_NUMBER";
		public static const SAVE_EXISTING_PHONE_NUMBER:String = "SAVE_EXISTING_PHONE_NUMBER";
		public static const ADD_NEW_PHONE_NUMBER:String = "ADD_NEW_PHONE_NUMBER";
		public static const EDIT_PHONE_NUMBER:String = "EDIT_PHONE_NUMBER";;
		
		private var _phoneHistory:PhoneNumberHistoryModel;
		public function PhoneNumberEvent(type:String, aPhoneHistory:PhoneNumberHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_phoneHistory = aPhoneHistory
		}
		
		public function get phoneHistory():PhoneNumberHistoryModel {
			
			return _phoneHistory;
		}
		
		override public function clone():Event {
			
			return new PhoneNumberEvent(type, _phoneHistory, bubbles, cancelable);
		}
	}
}