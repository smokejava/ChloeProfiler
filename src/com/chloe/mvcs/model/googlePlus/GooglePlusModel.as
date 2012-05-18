package com.chloe.mvcs.model.googlePlus
{
	[RemoteClass(alias='Chloe.dto.googlePlus.GooglePlusModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class GooglePlusModel extends EventDispatcher
	{
		public var id:String;
		public var username:String;
		public function GooglePlusModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}