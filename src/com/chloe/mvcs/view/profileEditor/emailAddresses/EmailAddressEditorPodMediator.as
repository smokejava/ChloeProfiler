package com.chloe.mvcs.view.profileEditor.emailAddresses
{
	import org.robotlegs.mvcs.Mediator;
	
	public class EmailAddressEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:EmailAddressEditorPod
		public function EmailAddressEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, EmailAddressEvent.ADD_EMAIL_ADDRESS, dispatch);
		}
	}
}