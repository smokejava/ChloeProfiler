package com.chloe.mvcs.model.address
{
	[RemoteClass(alias='Chloe.dto.address.AddressHistoryModel')]
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class AddressHistoryModel extends HistoryModel
	{
		public var address:AddressModel = new AddressModel();
		public function AddressHistoryModel()
		{
			super();
		}
	}
}