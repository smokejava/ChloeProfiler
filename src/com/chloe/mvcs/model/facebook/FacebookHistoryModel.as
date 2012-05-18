package com.chloe.mvcs.model.facebook
{
	[RemoteClass(alias='Chloe.dto.facebook.FacebookHistoryModel')]
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class FacebookHistoryModel extends HistoryModel
	{
		public var facebookAccount:FacebookModel;
		public function FacebookHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}