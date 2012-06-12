package com.chloe.mvcs.view.profileEditor.facebook
{
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class FacebookAccountEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:FacebookAccountsEditorPod
		public function FacebookAccountEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, FacebookEvent.ADD_FACEBOOK_ACCOUNT, dispatch);
			
			eventMap.mapListener(eventDispatcher, FacebookEvent.SAVE_EXISTING_FACEBOOK_ACCOUNT, onSaveExistingFacebookAccountHandler);
			eventMap.mapListener(eventDispatcher, FacebookEvent.SAVE_NEW_FACEBOOK_ACCOUNT, onSaveNewFacebookAccountHandler);
		}
		
		private function onSaveNewFacebookAccountHandler(event:FacebookEvent):void {
			
			view.saveNewFacebookAccountHistory(event.facebookAccountHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
		
		private function onSaveExistingFacebookAccountHandler(event:FacebookEvent):void {
			
			view.saveExistingFacebookAccountHistory(event.facebookAccountHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
	}
}