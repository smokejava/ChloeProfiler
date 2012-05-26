package com.chloe.mvcs.view.profileEditor.emailAddresses
{
	import com.chloe.mvcs.model.email.EmailHistoryModel;
	
	import flash.events.Event;
	
	public class EmailAddressEvent extends Event
	{
		public static const ADD_EMAIL_ADDRESS:String = "ADD_EMAIL_ADDRESS";
		public static const EDIT_EMAIL_ADDRESS:String = "EDIT_EMAIL_ADDRESS";
		
		private var _emailAddressHistory:EmailHistoryModel;
		public function EmailAddressEvent(type:String, aEmailAddressHistory:EmailHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_emailAddressHistory = aEmailAddressHistory;
		}
		
		public function get emailAddressHistory():EmailHistoryModel {
			
			return _emailAddressHistory;
		}
		
		override public function clone():Event {
			
			return new EmailAddressEvent(type, _emailAddressHistory, bubbles, cancelable);
		}
	}
}