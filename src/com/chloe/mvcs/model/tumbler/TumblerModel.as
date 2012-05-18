package com.chloe.mvcs.model.tumbler
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class TumblerModel extends EventDispatcher
	{
		public var id:String;
		public var username:String;
		public function TumblerModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}