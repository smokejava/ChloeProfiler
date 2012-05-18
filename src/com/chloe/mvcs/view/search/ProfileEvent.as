package com.chloe.mvcs.view.search
{
	import com.chloe.mvcs.model.ChloeProfileModel;
	
	import flash.events.Event;
	
	public class ProfileEvent extends Event
	{
		public static const SEARCH_FOR_PROFILE:String = "SEARCH_FOR_PROFILE";
		public static const CREATE_NEW_PROFILE:String = "CREATE_NEW_PROFILE";
		
		private var _profile:ChloeProfileModel;
		public function ProfileEvent(type:String, aProfile:ChloeProfileModel = null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_profile = aProfile;
		}
		
		public function get profile():ChloeProfileModel {
			
			return _profile;
		}
		
		override public function clone():Event {
			
			return new ProfileEvent(type, _profile, bubbles, cancelable);
		}
	}
}