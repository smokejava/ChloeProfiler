package com.chloe.mvcs.model.email
{
	[RemoteClass(alias='Chloe.dto.email.EmailHistoryModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class EmailHistoryModel extends HistoryModel
	{
		public var email:EmailModel;
		public function EmailHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}