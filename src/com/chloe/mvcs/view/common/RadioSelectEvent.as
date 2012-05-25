package com.chloe.mvcs.view.common
{
	import flash.events.Event;
	
	public class RadioSelectEvent extends Event
	{
		public static const ITEM_SELECTED:String = "ITEM_SELECTED";
		
		private var _radioId:int = new int();
		public function RadioSelectEvent(type:String, aRadioId:int, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_radioId = aRadioId;
		}
		
		public function get radioId():int {
			
			return _radioId;
		}
		
		override public function clone():Event {
			
			return new RadioSelectEvent(type, _radioId, bubbles, cancelable);
		}
	}
}