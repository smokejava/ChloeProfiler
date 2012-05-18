package com.chloe.mvcs.model.instantMessenger
{
	import com.chloe.mvcs.model.HistoryModel;
	
	import flash.events.IEventDispatcher;
	
	public class InstantMessengerHistoryModel extends HistoryModel
	{
		public var account:InstantMessengerModel;
		public function InstantMessengerHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}