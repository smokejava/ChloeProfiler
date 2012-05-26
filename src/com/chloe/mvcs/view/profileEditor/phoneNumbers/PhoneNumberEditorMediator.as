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
			
			eventMap.mapListener(eventDispatcher, PhoneEvent.ADD_NEW_PHONE_NUMBER , onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, PhoneEvent.EDIT_PHONE_NUMBER, onEditNameHandler);
		}
		
		private function onAddedNewNameHandler(event:PhoneEvent):void {
			
			view.phoneHistory = event.phoneHistory
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:PhoneEvent):void {
			
			view.phoneHistory = event.phoneHistory
			view.currentState = "show";
		}
		
	}
}