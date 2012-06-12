package com.chloe.mvcs.view.profileEditor.emailAddresses
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class EmailAddressEditorMediator extends Mediator
	{
		[Inject]
		public var view:EmailAddressEditor
		public function EmailAddressEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, EmailAddressEvent.SAVE_NEW_EMAIL_ADDRESS, dispatch);
			eventMap.mapListener(view, EmailAddressEvent.SAVE_EXISTING_EMAIL_ADDRESS, dispatch);
			
			eventMap.mapListener(eventDispatcher, EmailAddressEvent.ADD_EMAIL_ADDRESS, onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, EmailAddressEvent.EDIT_EMAIL_ADDRESS, onEditNameHandler);
			//eventMap.mapListener(eventDispatcher, RadioSelectEvent.ITEM_SELECTED, onItemSelectedHandler);
		}
		
		private function onAddedNewNameHandler(event:EmailAddressEvent):void {
			
			view.emailAddressHistory = event.emailAddressHistory
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:EmailAddressEvent):void {
			
			view.emailAddressHistory = event.emailAddressHistory;
			view.currentState = "show";
		}
		
		private function onItemSelectedHandler(event:RadioSelectEvent):void {
			
			//view.reasonSelected(event.radioId);
		}

	}
}