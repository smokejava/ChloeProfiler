package com.chloe.mvcs.view.profileEditor
{
	import com.chloe.mvcs.model.ChloeProfileModel;
	
	import flash.events.Event;
	
	public class ProfileChangeEvent extends Event
	{
		public static const PROFILE_ITEM_CHANGED:String = "PROFILE_ITEM_CHANGED";
		public static const SAVE_PROFILE:String = "SAVE_PROFILE";
		public static const PROFILE_SAVE:String = "PROFILE_SAVE";
		
		private var _profile:ChloeProfileModel;
		public function ProfileChangeEvent(type:String, aProfile:ChloeProfileModel = null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_profile = aProfile;
		}
		
		override public function clone():Event {
			
			return new ProfileChangeEvent(type, _profile, bubbles, cancelable);
		}
	}
}