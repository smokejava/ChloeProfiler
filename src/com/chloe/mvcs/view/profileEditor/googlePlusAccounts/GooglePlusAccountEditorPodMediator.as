package com.chloe.mvcs.view.profileEditor.googlePlusAccounts
{
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class GooglePlusAccountEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:GooglePlusAccountsEditorPod
		public function GooglePlusAccountEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, GooglePlusEvent.ADD_GOOGLE_PLUS_ACCOUNT, dispatch);
			
			eventMap.mapListener(eventDispatcher, GooglePlusEvent.SAVE_EXISTING_GOOGLE_PLUS_ACCOUNT, onSaveExistingGooglePlusAccountHandler);
			eventMap.mapListener(eventDispatcher, GooglePlusEvent.SAVE_NEW_GOOGLE_PLUS_ACCOUNT, onSaveNewGooglePlusAccountHandler);
		}
		
		private function onSaveExistingGooglePlusAccountHandler(event:GooglePlusEvent):void {
		
			view.saveExistingGooglePlusAccount(event.googlePlusAccountHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
		
		private function onSaveNewGooglePlusAccountHandler(event:GooglePlusEvent):void {
		
			view.saveNewGooglePlusAccount(event.googlePlusAccountHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
	}
}