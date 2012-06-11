package com.chloe.mvcs.view.profileEditor.phoneNumbers
{
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneNumberEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:PhoneNumbersEditorPod
		public function PhoneNumberEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, PhoneNumberEvent.ADD_NEW_PHONE_NUMBER , dispatch);
		}
	}
}