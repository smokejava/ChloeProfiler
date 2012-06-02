package com.chloe.mvcs.view.profileEditor.addresses
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditor;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class AddressEditorMediator extends Mediator
	{
		[Inject]
		public var view:AddressEditor
		public function AddressEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, AddressEvent.SAVE_EXISTING_ADDRESS, dispatch);
			eventMap.mapListener(view, AddressEvent.SAVE_NEW_ADDRESS, dispatch);
			eventMap.mapListener(view, AddressVerificationEvent.VERIFY_ADDRESS, dispatch);
			
			eventMap.mapListener(eventDispatcher, AddressVerificationEvent.ADDRESS_VERIFIED, onAddressVerifiedHandler);
			eventMap.mapListener(eventDispatcher, AddressEvent.ADD_NEW_ADDRESS , onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, AddressEvent.EDIT_ADDRESS, onEditNameHandler);
		}
		
		private function onAddedNewNameHandler(event:AddressEvent):void {
			
			view.addressHistory = event.addressHistory;
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:AddressEvent):void {
			
			view.addressHistory = event.addressHistory;
			view.currentState = "show";
		}
		
		private function onAddressVerifiedHandler(event:AddressVerificationEvent):void {
			
			view.verifiedAddress = event.verifiedAddress;
		}

	}
}