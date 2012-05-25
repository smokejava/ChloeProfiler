package com.chloe.mvcs.view.profileEditor.names
{
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class NameEditorMediator extends Mediator
	{
		[Inject]
		public var view:NameEditor
		public function NameEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(eventDispatcher, NameEvent.ADD_NEW_NAME, onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, NameEvent.EDIT_NAME, onEditNameHandler);
			eventMap.mapListener(eventDispatcher, RadioSelectEvent.ITEM_SELECTED, onItemSelectedHandler);
		}
		
		private function onAddedNewNameHandler(event:NameEvent):void {
			
			view.nameHistory = event.nameHistory;
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:NameEvent):void {
			
			view.nameHistory = event.nameHistory;
			view.currentState = "show";
		}
		
		private function onItemSelectedHandler(event:RadioSelectEvent):void {
			
			view.reasonSelected(event.radioId);
		}
	}
}