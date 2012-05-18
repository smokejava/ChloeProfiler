package com.chloe.mvcs.model.twitter
{
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class TwitterHistoryModel extends HistoryModel
	{
		public var twitterAccount:TwitterModel;
		public function TwitterHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}