package com.chloe.mvcs.view.profileEditor.facebook
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class FacebookEditorMediator extends Mediator
	{
		[Inject]
		public var view:FacebookEditor
		public function FacebookEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(eventDispatcher, FacebookEvent.ADD_FACEBOOK_ACCOUNT, onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, FacebookEvent.EDIT_FACEBOOK_ACCOUNT, onEditNameHandler);
			//eventMap.mapListener(eventDispatcher, RadioSelectEvent.ITEM_SELECTED, onItemSelectedHandler);
		}
		
		private function onAddedNewNameHandler(event:FacebookEvent):void {
			
			view.facebookAccountHistory = event.facebookAccountHistory
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:FacebookEvent):void {
			
			view.facebookAccountHistory = event.facebookAccountHistory;
			view.currentState = "show";
		}
		
		private function onItemSelectedHandler(event:RadioSelectEvent):void {
			
			//view.reasonSelected(event.radioId);
		}
	}
}