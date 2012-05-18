package com.chloe.mvcs.model.date
{
	[RemoteClass(alias='Chloe.dto.date.DateModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class DateModel extends EventDispatcher
	{
		public var id:String;
		public var day:String;
		public var month:String;
		public var year:String;
		
		public function DateModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}