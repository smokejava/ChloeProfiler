package com.chloe.mvcs.model.instantMessenger
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.utils.StringUtil;
	
	public class InstantMessengerModel extends EventDispatcher
	{
		public var id:String = new String();
		public var account:String = new String();
		public var domain:String = new String();
		public var instantMessengerType:InstantMessengerType;
		public function InstantMessengerModel(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function get fullInstantMessengerAccount():String {
			
			var temp:String = account

			if(StringUtil.trim(domain).length>0) {
				
				temp = account + "@" + domain;
			}
			
			return temp;
		}
		
		public function set fullInstantMessengerAccount(value:String):void {
			
			if(value.indexOf("@") == -1) {
				
				account = value;
				domain = "";
			} else {
				account = value.substr(0, value.indexOf("@")-1);
				domain = value.substr(value.indexOf("@")+1, value.length);
			}
		}
	}
}