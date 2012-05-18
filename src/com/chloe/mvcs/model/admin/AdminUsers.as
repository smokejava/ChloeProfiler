package com.chloe.mvcs.model.admin
{
	import org.robotlegs.mvcs.Actor;
	
	public class AdminUsers extends Actor implements IAdminUsers
	{
		private var _adminUsers:Array;
		public function AdminUsers()
		{
			super();
		}
		
		public function addAdminUser(adminUser:AdminUserModel):void{
			
			this._adminUsers.push(adminUser);
		}
		
		public function get adminUser():Array{
			return null;
		}
	}
}