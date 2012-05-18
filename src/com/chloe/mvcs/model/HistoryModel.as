package com.chloe.mvcs.model
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	
	public class HistoryModel extends EventDispatcher
	{
		public var id:String;
		public var startDate:DateModel;
		public var endDate:DateModel;
		public function HistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}