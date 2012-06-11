package com.chloe.mvcs.view.profileEditor.instantMessengerAccounts
{
	import com.chloe.mvcs.model.instantMessenger.InstantMessengerHistoryModel;
	
	import flash.events.Event;
	
	public class InstantMessengerEvent extends Event
	{
		public static const SAVE_NEW_INSTANT_MESSENGER_ACCOUNT:String = "SAVE_NEW_INSTANT_MESSENGER_ACCOUNT";
		public static const SAVE_EXISTING_INSTANT_MESSENGER_ACCOUNT:String = "SAVE_EXISTING_INSTANT_MESSENGER_ACCOUNT";
		public static const ADD_INSTANT_MESSENGER_ACCOUNT:String = "ADD-INSTANT_MESSENGER_ACCOUNT";
		public static const EDIT_INSTANT_MESSENGER_ACCOUNT:String = "EDIT_INSTANT_MESSENGER_ACCOUNT";
		
		private var _instantMessengerHistory:InstantMessengerHistoryModel;
		public function InstantMessengerEvent(type:String, aInstantMessengerHistory:InstantMessengerHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_instantMessengerHistory = aInstantMessengerHistory;
		}
		
		public function get instantMessengerHistory():InstantMessengerHistoryModel {
			
			return _instantMessengerHistory;
		}
		
		override public function clone():Event {
			
			return new InstantMessengerEvent(type, _instantMessengerHistory, bubbles, cancelable);
		}
	}
}