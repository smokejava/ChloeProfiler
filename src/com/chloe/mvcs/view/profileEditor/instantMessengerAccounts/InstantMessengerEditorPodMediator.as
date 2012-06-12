package com.chloe.mvcs.view.profileEditor.instantMessengerAccounts
{
	import com.chloe.mvcs.model.instantMessenger.InstantMessengerHistoryModel;
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class InstantMessengerEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:InstantMessengerAccountsEditorPod
		public function InstantMessengerEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, InstantMessengerEvent.ADD_INSTANT_MESSENGER_ACCOUNT, dispatch);
			
			eventMap.mapListener(eventDispatcher, InstantMessengerEvent.SAVE_EXISTING_INSTANT_MESSENGER_ACCOUNT, onSaveExistingInstantMessengerAccountHandler);
			eventMap.mapListener(eventDispatcher, InstantMessengerEvent.SAVE_NEW_INSTANT_MESSENGER_ACCOUNT, onSaveNewInstantMessengerAccountHandler);
		}
		
		private function onSaveExistingInstantMessengerAccountHandler(event:InstantMessengerEvent):void {
			
			view.saveExistingInstantMessengerAccount(event.instantMessengerHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
		
		private function onSaveNewInstantMessengerAccountHandler(event:InstantMessengerEvent):void {
			
			view.saveNewInstantMessengerAccount(event.instantMessengerHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
	}
}