package com.chloe.mvcs.model.tumbler
{
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class TumberHistoryModel extends HistoryModel
	{
		public var account:TumblerModel;
		public function TumberHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}