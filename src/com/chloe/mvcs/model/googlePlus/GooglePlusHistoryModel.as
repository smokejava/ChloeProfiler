package com.chloe.mvcs.model.googlePlus
{
	[RemoteClass(alias='Chloe.dto.googlePlus.GooglePlusHistoryModel')]
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class GooglePlusHistoryModel extends HistoryModel
	{
		public var account:GooglePlusModel;
		public function GooglePlusHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}