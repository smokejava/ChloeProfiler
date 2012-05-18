package com.chloe.mvcs.model.user
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	
	public class UserModel extends EventDispatcher
	{
		public var _userName:String = new String();
		public var _userPhotoPath:String = new String();
		public var _userPassword:Array;
		private var _userPhotoBitmap:Bitmap =new Bitmap();
		
		public function UserModel(target:IEventDispatcher=null)
		{
			super(target);
		}

		public function get userPhotoBitmap():Bitmap
		{
			return _userPhotoBitmap;
		}

		public function get userPassword():Array
		{
			return _userPassword;
		}

		public function set userPassword(value:Array):void
		{
			_userPassword = value;
		}

		public function get userPhoto():String
		{
			return _userPhotoPath;
		}

		public function set userPhoto(value:String):void
		{
			_userPhotoPath = value;
			
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onImageLoadComplete);
			
			var request:URLRequest = new URLRequest(_userPhotoPath);
			loader.load(request)
		}

		public function get userName():String
		{
			return _userName;
		}

		public function set userName(value:String):void
		{
			_userName = value;
		}
		
		private function onImageLoadComplete(event:Event):void {

			trace("got phto");
			this._userPhotoBitmap = event.target.content;
		}

	}
}