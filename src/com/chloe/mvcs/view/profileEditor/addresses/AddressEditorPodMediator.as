package com.chloe.mvcs.view.profileEditor.addresses
{
	import org.robotlegs.mvcs.Mediator;
	
	public class AddressEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:AddressEditorPod
		public function AddressEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, AddressEvent.ADD_NEW_ADDRESS, dispatch);
			
			eventMap.mapListener(eventDispatcher, AddressEvent.SAVE_NEW_ADDRESS, onSaveNewAddressHandler);
			eventMap.mapListener(eventDispatcher, AddressEvent.SAVE_EXISTING_ADDRESS, onSaveExistingAddressHandler);
		}
		
		private function onSaveNewAddressHandler(event:AddressEvent):void {
			
			view.saveNewAddress(event.addressHistory);
		}
		
		private function onSaveExistingAddressHandler(event:AddressEvent):void {
			
			view.saveExistingAddress(event.addressHistory);
		}
	}
}