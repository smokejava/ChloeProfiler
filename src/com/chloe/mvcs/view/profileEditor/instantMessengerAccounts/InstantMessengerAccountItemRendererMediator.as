package com.chloe.mvcs.view.profileEditor.instantMessengerAccounts
{
	import org.robotlegs.mvcs.Mediator;
	
	public class InstantMessengerAccountItemRendererMediator extends Mediator
	{
		[Inject]
		public var view:InstantMessengerAccountItemRenderer
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, InstantMessengerEvent.EDIT_INSTANT_MESSENGER_ACCOUNT, dispatch);
		}
	}
}