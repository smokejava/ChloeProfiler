package com.chloe.mvcs.view.profileEditor.addresses
{
	
	import com.chloe.mvcs.model.address.AddressHistoryModel;
	
	import flash.events.Event;
	
	public class AddressEvent extends Event
	{
		public static const ADD_NEW_ADDRESS:String = "ADD_NEW_ADDRESS";
		public static const EDIT_ADDRESS:String = "EDIT_ADDRESS";
		
		private var _addressHistory:AddressHistoryModel;
		public function AddressEvent(type:String, aAddressHistory:AddressHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_addressHistory = aAddressHistory;
		}
		
		public function get addressHistory():AddressHistoryModel {
			
			return _addressHistory;
		}
		
		override public function clone():Event {
			
			return new AddressEvent(type, _addressHistory, bubbles, cancelable);
		}
	}
}