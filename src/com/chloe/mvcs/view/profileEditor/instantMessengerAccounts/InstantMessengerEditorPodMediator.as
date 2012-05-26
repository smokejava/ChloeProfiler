package com.chloe.mvcs.view.profileEditor.instantMessengerAccounts
{
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
		}
	}
}