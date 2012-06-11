package com.chloe.mvcs.view.profileEditor.googlePlusAccounts
{
	import com.chloe.mvcs.model.googlePlus.GooglePlusHistoryModel;
	
	import flash.events.Event;
	
	public class GooglePlusEvent extends Event
	{
		public static const SAVE_NEW_GOOGLE_PLUS_ACCOUNT:String = "SAVE_NEW_GOOGLE_PLUS_ACCOUNT";
		public static const SAVE_EXISTING_GOOGLE_PLUS_ACCOUNT:String = "SAVE_EXISTING_GOOGLE_PLUS_ACCOUNT";
		public static const ADD_GOOGLE_PLUS_ACCOUNT:String = "ADD_GOOGLE_PLUS_ACCOUNT";
		public static const EDIT_GOOGLE_PLUS_ACCOUNT:String = "EDIT_GOOGLE_PLUS_ACCOUNT";
		
		private var _googlePlusAccountHistory:GooglePlusHistoryModel;
		public function GooglePlusEvent(type:String, aGooglePlusAccountHistory:GooglePlusHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_googlePlusAccountHistory = aGooglePlusAccountHistory
		}
		
		public function get googlePlusAccountHistory():GooglePlusHistoryModel {
			
			return _googlePlusAccountHistory;
		}
		
		override public function clone():Event {
			
			return new GooglePlusEvent(type, _googlePlusAccountHistory, bubbles, cancelable);
		}
	}
}