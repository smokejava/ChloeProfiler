package com.chloe.mvcs.view.profileEditor.names
{
	import com.chloe.mvcs.model.name.FullNameHistoryModel;
	
	import flash.events.Event;
	
	public class NameEvent extends Event
	{
		public static const ADD_NEW_NAME:String = "ADD_NEW_NAME";
		public static const EDIT_NAME:String = "EDIT_NAME";
		
		private var _nameHistory:FullNameHistoryModel;
		public function NameEvent(type:String, aNameHistory:FullNameHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_nameHistory = aNameHistory;
		}
		
		public function get nameHistory():FullNameHistoryModel {
			
			return _nameHistory;
		}
		
		override public function clone():Event {
			
			return new NameEvent(type, _nameHistory, bubbles, cancelable);
		}
	}
}