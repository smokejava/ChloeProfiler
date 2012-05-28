package com.chloe.mvcs.view.profileEditor.facebook
{
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
		}
	}
}