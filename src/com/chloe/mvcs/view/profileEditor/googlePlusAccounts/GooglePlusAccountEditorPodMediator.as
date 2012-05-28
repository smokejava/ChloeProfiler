package com.chloe.mvcs.view.profileEditor.googlePlusAccounts
{
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
		}
	}
}