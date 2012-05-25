package com.chloe.mvcs.view.profileEditor.names
{
	import org.robotlegs.mvcs.Mediator;
	
	public class NameEditorPodMediator extends Mediator
	{
		[Inject]
		public var view:NameEditorPod
		public function NameEditorPodMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, NameEvent.ADD_NEW_NAME, dispatch);
		}
	}
}