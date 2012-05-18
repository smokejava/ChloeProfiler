package com.chloe.mvcs.model.instantMessenger
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
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
	}
}