package com.chloe.mvcs.view.profileEditor.addresses
{
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEvent;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressItemRenderer;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class AddressItemRendererMediator extends Mediator
	{
		[Inject]
		public var view:AddressItemRenderer

		override public function onRegister():void { 
			
			eventMap.mapListener(view, AddressEvent.EDIT_ADDRESS, dispatch);
		}
	}
}