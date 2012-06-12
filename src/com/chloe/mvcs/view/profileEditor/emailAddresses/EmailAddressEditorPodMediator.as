package com.chloe.mvcs.view.profileEditor.emailAddresses
{
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class EmailAddressEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:EmailAddressEditorPod
		public function EmailAddressEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, EmailAddressEvent.ADD_EMAIL_ADDRESS, dispatch);
			
			eventMap.mapListener(eventDispatcher, EmailAddressEvent.SAVE_NEW_EMAIL_ADDRESS, onSaveNewEmailAddressHandler);
			eventMap.mapListener(eventDispatcher, EmailAddressEvent.SAVE_EXISTING_EMAIL_ADDRESS, onSaveExistingEmailAddressHandler);
		}
		
		private function onSaveNewEmailAddressHandler(event:EmailAddressEvent):void {
			
			view.saveNewEmailAddress(event.emailAddressHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
		
		private function onSaveExistingEmailAddressHandler(event:EmailAddressEvent):void {
			
			view.saveExistingEmailAddress(event.emailAddressHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
	}
}