package com.chloe.mvcs.model.posterous
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class PosterousModel extends EventDispatcher
	{
		public var id:String;
		public var username:String;
		public function PosterousModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}