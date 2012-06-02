package com.chloe.mvcs.view.profileEditor.names
{
	import com.chloe.mvcs.view.common.RadioSelectEvent;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class NameEditorMediator extends Mediator
	{
		[Inject]
		public var view:NameEditor
		public function NameEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, NameEvent.SAVE_EXISTING_NAME, dispatch);
			eventMap.mapListener(view, NameEvent.SAVE_NEW_NAME, dispatch);
			eventMap.mapListener(view, NameTranslateEvent.TRANSLATE_NAME, dispatch);
			
			eventMap.mapListener(eventDispatcher, NameEvent.ADD_NEW_NAME, onAddedNewNameHandler);
			eventMap.mapListener(eventDispatcher, NameEvent.EDIT_NAME, onEditNameHandler);
			eventMap.mapListener(eventDispatcher, NameTranslateEvent.NAME_TRANSLATED, onNameTranslatedHandler);
		}
		
		private function onAddedNewNameHandler(event:NameEvent):void {
			
			view.typeOfEdit = "add"
			view.nameHistory = event.nameHistory;
			view.currentState = "show"
		}
		
		private function onEditNameHandler(event:NameEvent):void {
			
			view.typeOfEdit = "edit";
			view.nameHistory = event.nameHistory;
			view.currentState = "show";
		}

		private function onNameTranslatedHandler(event:NameTranslateEvent):void {
			
			
		}
	}
}