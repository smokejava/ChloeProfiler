package com.chloe.mvcs.model.picture
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class TagHistoryModel extends HistoryModel
	{
		public var tag:TagModel;
		public function TagHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}