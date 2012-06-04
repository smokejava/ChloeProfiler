package com.chloe.mvcs.service.chloeProfileSave
{
	import com.chloe.mvcs.model.ChloeProfileModel;
	
	import flash.events.Event;
	
	public class ProfileSaveEvent extends Event
	{
		public static const PROFILE_SAVED:String = "PROFILE_SAVED";
		
		private var _chloeProfile:ChloeProfileModel;
		public function ProfileSaveEvent(type:String, aChloeProfile:ChloeProfileModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_chloeProfile = aChloeProfile;
		}
		
		public function get chloeProfile():ChloeProfileModel {
			
			return _chloeProfile
		}
		
		override public function clone():Event {
			
			return new ProfileSaveEvent(type, _chloeProfile, bubbles, cancelable);
		}
	}
}