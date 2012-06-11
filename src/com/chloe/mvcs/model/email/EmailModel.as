package com.chloe.mvcs.model.email
{
	[RemoteClass(alias='Chloe.dto.email.EmailModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class EmailModel extends EventDispatcher
	{
		public var id:String;
		public var username:String;
		public var domain:String;
		
		public function EmailModel(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function get fullEmailAddress():String {
			
			return username + "@" + domain;
		}
		
		public function set fullEmailAddress(value:String):void  {
			
			username = value.substr(0, value.indexOf("@")-1);
			domain = value.substr(value.indexOf("@")+1, value.length)
		}
	}
}