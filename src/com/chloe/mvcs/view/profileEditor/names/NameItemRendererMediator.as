package com.chloe.mvcs.view.profileEditor.names
{
	import org.robotlegs.mvcs.Mediator;
	
	public class NameItemRendererMediator extends Mediator
	{
		[Inject]
		public var view:NameItemRenderer;

		override public function onRegister():void { 
			
			eventMap.mapListener(view, NameEvent.EDIT_NAME, dispatch);
		}
	}
}