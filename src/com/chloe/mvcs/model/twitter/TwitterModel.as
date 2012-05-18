package com.chloe.mvcs.model.twitter
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class TwitterModel extends EventDispatcher
	{
		public var id:String;
		public var username:String;
		public function TwitterModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}