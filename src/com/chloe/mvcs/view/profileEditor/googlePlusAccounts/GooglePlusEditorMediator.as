package com.chloe.mvcs.view.profileEditor.googlePlusAccounts
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class GooglePlusEditorMediator extends Mediator
	{
		[Inject]
		public var view:GooglePlusEditor
		public function GooglePlusEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(eventDispatcher, GooglePlusEvent.ADD_GOOGLE_PLUS_ACCOUNT, onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, GooglePlusEvent.EDIT_GOOGLE_PLUS_ACCOUNT, onEditNameHandler);
			//eventMap.mapListener(eventDispatcher, RadioSelectEvent.ITEM_SELECTED, onItemSelectedHandler);
		}
		
		private function onAddedNewNameHandler(event:GooglePlusEvent):void {
			
			view.googlePlusAccountHistory = event.googlePlusAccountHistory
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:GooglePlusEvent):void {
			
			view.googlePlusAccountHistory = event.googlePlusAccountHistory
			view.currentState = "show";
		}
		
		private function onItemSelectedHandler(event:RadioSelectEvent):void {
			
			//view.reasonSelected(event.radioId);
		}
	}
}