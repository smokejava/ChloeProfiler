package com.chloe.mvcs.view.profileEditor.facebook
{
	import com.chloe.mvcs.model.facebook.FacebookHistoryModel;
	
	import flash.events.Event;
	
	public class FacebookEvent extends Event
	{
		public static const SAVE_NEW_FACEBOOK_ACCOUNT:String = "SAVE_NEW_FACEBOOK_ACCOUNT";
		public static const SAVE_EXISTING_FACEBOOK_ACCOUNT:String = "SAVE_EXISTING_FACEBOOK_ACCOUNT";
		public static const ADD_FACEBOOK_ACCOUNT:String = "ADD_FACEBOOK_ACCOUNT";
		public static const EDIT_FACEBOOK_ACCOUNT:String = "EDIT_FACEBOOK_ACCOUNT";
		
		private var _facebookAccountHistory:FacebookHistoryModel;
		public function FacebookEvent(type:String, aFacebookHistory:FacebookHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_facebookAccountHistory = aFacebookHistory;
		}
		
		public function get facebookAccountHistory():FacebookHistoryModel {
			
			return _facebookAccountHistory;
		}
		
		override public function clone():Event {
			
			return new FacebookEvent(type, _facebookAccountHistory, bubbles, cancelable);
		}
	}
}