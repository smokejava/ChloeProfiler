package com.chloe.mvcs.view.profileEditor.instantMessengerAccounts
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class InstantMessengerEditorMediator extends Mediator
	{
		[Inject]
		public var view:InstantMessengerEditor
		public function InstantMessengerEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, InstantMessengerEvent.SAVE_EXISTING_INSTANT_MESSENGER_ACCOUNT, dispatch);
			eventMap.mapListener(view, InstantMessengerEvent.SAVE_NEW_INSTANT_MESSENGER_ACCOUNT, dispatch);
			
			eventMap.mapListener(eventDispatcher, InstantMessengerEvent.ADD_INSTANT_MESSENGER_ACCOUNT, onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, InstantMessengerEvent.EDIT_INSTANT_MESSENGER_ACCOUNT, onEditNameHandler);
			//eventMap.mapListener(eventDispatcher, RadioSelectEvent.ITEM_SELECTED, onItemSelectedHandler);
		}
		
		private function onAddedNewNameHandler(event:InstantMessengerEvent):void {
			
			view.instantMessengerHistory = event.instantMessengerHistory
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:InstantMessengerEvent):void {
			
			view.instantMessengerHistory = event.instantMessengerHistory;
			view.currentState = "show";
		}
		
		private function onItemSelectedHandler(event:RadioSelectEvent):void {
			
			//view.reasonSelected(event.radioId);
		}
	}
}