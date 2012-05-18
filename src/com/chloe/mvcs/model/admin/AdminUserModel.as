package com.chloe.mvcs.model.admin
{
	[RemoteClass(alias='Chloe.AdminUserModel')]
	
	import com.chloe.mvcs.model.admin.AdminPasswordPictureModel;
	
	import org.robotlegs.mvcs.Actor;
	
	public class AdminUserModel extends Actor implements IAdminUser
	{
		public var id:int = new int();
		public var tempUserId:int = new int();
		public var UserName:String = new String();
		public var UserPhotoPath:String = new String();
		public var FirstName:String = new String();
		public var LastName:String = new String();
		public var AdminPictureModel:AdminPasswordPictureModel;
		public function AdminUserModel()
		{
			super();
		}
	}
}