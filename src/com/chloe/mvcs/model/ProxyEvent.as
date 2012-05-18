package com.chloe.mvcs.model
{
	import flash.events.Event;
	
	public class ProxyEvent extends Event
	{
		public static const NAMES_NEED_TRANSLATION:String = "NAMES_NEED_TRANSLATION";
		public static const NAME_EVALUATED:String = "NAME_EVALUATED";
		public static const SUBMIT_FINAL_NAME:String = "SUBMIT_FINAL_NAME";
		public static const FINAL_NAME_ADDED:String = "FINAL_NAME_ADDED";
		public static const GOT_TOTAL_NAMES:String = "GOT_TOTAL_NAMES";
		
		public var totalNames:int = new int();
		public function ProxyEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			
			return new ProxyEvent(type, bubbles, cancelable);
		}
	}
}