package com.chloe.mvcs.view.profileEditor.addresses
{
	import org.robotlegs.mvcs.Mediator;
	
	public class AddressEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:AddressEditorPod
		public function AddressEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, AddressEvent.ADD_NEW_ADDRESS, dispatch);
		}
	}
}