package com.chloe.mvcs.view.profileEditor.googlePlusAccounts
{
	import org.robotlegs.mvcs.Mediator;
	
	public class GooglePlusItemRendererMediator extends Mediator
	{
		[Inject]
		public var view:GooglePlusItemRenderer;
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, GooglePlusEvent.EDIT_GOOGLE_PLUS_ACCOUNT, dispatch);
		}
	}
}