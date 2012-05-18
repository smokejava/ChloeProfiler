package com.chloe.mvcs.model.admin
{
	import flash.events.Event;
	
	public class AdminUserEvent extends Event
	{
		public static const ADMIN_USER_CREATED:String = "ADMIN_USER_CREATED";
		
		private var _adminUser:AdminUserModel;
		public function AdminUserEvent(type:String, aAdminUser:AdminUserModel, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
			
			_adminUser = aAdminUser;
		}
		
		public function get adminUser():AdminUserModel
		{
			return _adminUser;
		}

		override public function clone():Event {
			
			return new AdminUserEvent(type, _adminUser, bubbles, cancelable);
		}
	}
}