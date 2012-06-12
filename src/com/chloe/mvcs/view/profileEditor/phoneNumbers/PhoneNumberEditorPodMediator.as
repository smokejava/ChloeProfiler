package com.chloe.mvcs.view.profileEditor.phoneNumbers
{
	import com.chloe.mvcs.controller.commands.ProfileSavedCommand;
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneNumberEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:PhoneNumbersEditorPod
		public function PhoneNumberEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, PhoneNumberEvent.ADD_NEW_PHONE_NUMBER , dispatch);
			
			eventMap.mapListener(eventDispatcher, PhoneNumberEvent.SAVE_EXISTING_PHONE_NUMBER, onSaveExistingPhoneNumberHandler);
			eventMap.mapListener(eventDispatcher, PhoneNumberEvent.SAVE_NEW_PHONE_NUMBER, onSaveNewPhoneNumberHandler);
		}
		
		private function onSaveExistingPhoneNumberHandler(event:PhoneNumberEvent):void {
			
			view.saveExistingPhoneNumber(event.phoneHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
		
		private function onSaveNewPhoneNumberHandler(event:PhoneNumberEvent):void {
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
	}
}