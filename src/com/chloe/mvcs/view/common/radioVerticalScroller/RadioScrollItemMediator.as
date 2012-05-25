package com.chloe.mvcs.view.common.radioVerticalScroller
{
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	
	public class RadioScrollItemMediator extends Mediator
	{
		[Inject]
		public var view:RadioScrollItem
		public function RadioScrollItemMediator()
		{
			super();
		}
		
		override public function onRegister():void{
			
			eventMap.mapListener(view, RadioSelectEvent.ITEM_SELECTED, dispatch);
		}
	}
}