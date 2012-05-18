package com.chloe.mvcs.model.tempUser
{
	import org.robotlegs.mvcs.Actor;
	
	public class TempUserModel extends Actor implements ITempUser
	{
		private var _user:String = new String();
		private var _keyCode:String = new String();
		public function TempUserModel()
		{
			super();
		}
		
		public function setUser(aUser:String):void{
			
			_user = aUser;
		}
		
		public function getUser():String
		{
			return _user
		}
		
		public function setKeyCode(aKeyCode:String):void{
			
			_keyCode = aKeyCode
		}
		
		public function getKeyCode():String{
			
			return _keyCode;
		}
	}
}