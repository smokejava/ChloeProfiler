package com.chloe.mvcs.model.name
{
	[RemoteClass(alias='Chloe.dto.name.FullNameHistoryModel')]
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class FullNameHistoryModel extends HistoryModel
	{
		public var fullName:FullNameModel = new FullNameModel();
		public function FullNameHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}