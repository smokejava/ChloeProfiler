package com.chloe.mvcs.view.profileEditor.phoneNumbers
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditor;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneNumberEditorMediator extends Mediator
	{
		[Inject]
		public var view:PhoneNumberEditor;
		public function PhoneNumberEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, PhoneNumberEvent.SAVE_EXISTING_PHONE_NUMBER, dispatch);
			eventMap.mapListener(view, PhoneNumberEvent.SAVE_NEW_PHONE_NUMBER, dispatch);
			
			eventMap.mapListener(eventDispatcher, PhoneNumberEvent.ADD_NEW_PHONE_NUMBER , onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, PhoneNumberEvent.EDIT_PHONE_NUMBER, onEditNameHandler);
		}
		
		private function onAddedNewNameHandler(event:PhoneNumberEvent):void {
			
			view.phoneHistory = event.phoneHistory
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:PhoneNumberEvent):void {
			
			view.phoneHistory = event.phoneHistory
			view.currentState = "show";
		}
		
	}
}