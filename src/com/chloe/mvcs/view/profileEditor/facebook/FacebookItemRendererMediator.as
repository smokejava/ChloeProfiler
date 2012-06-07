package com.chloe.mvcs.view.profileEditor.facebook
{
	import org.robotlegs.mvcs.Mediator;
	
	public class FacebookItemRendererMediator extends Mediator
	{
		[Inject]
		public var view:FacebookItemRenderer
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, FacebookEvent.EDIT_FACEBOOK_ACCOUNT, dispatch);
		}
	}
}