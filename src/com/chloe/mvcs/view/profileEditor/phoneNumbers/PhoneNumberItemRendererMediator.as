package com.chloe.mvcs.view.profileEditor.phoneNumbers
{
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneNumberItemRendererMediator extends Mediator
	{
		[Inject]
		public var view:PhoneNumberItemRenderer
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, PhoneNumberEvent.EDIT_PHONE_NUMBER, dispatch);
		}
	}
}