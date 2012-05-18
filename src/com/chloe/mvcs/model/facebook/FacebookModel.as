package com.chloe.mvcs.model.facebook
{
	[RemoteClass(alias='Chloe.dto.facebook.FacebookModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class FacebookModel extends EventDispatcher
	{
		public var id:String;
		public var username:String;
		public var facebookAccount:String;
		public function FacebookModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}