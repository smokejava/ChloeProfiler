package com.chloe.mvcs.model.phone
{
	[RemoteClass(alias='Chloe.dto.phone.PhoneNumberHistoryModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class PhoneNumberHistoryModel extends HistoryModel
	{
		public var phoneNumber:PhoneNumberModel;
		public function PhoneNumberHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}