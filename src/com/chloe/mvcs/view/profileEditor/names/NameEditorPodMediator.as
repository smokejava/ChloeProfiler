package com.chloe.mvcs.view.profileEditor.names
{
	import com.chloe.mvcs.view.profileEditor.ProfileChangeEvent;
	
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
			
			eventMap.mapListener(eventDispatcher, NameEvent.SAVE_NEW_NAME, onSaveNewNameHandler);
			eventMap.mapListener(eventDispatcher, NameEvent.SAVE_EXISTING_NAME, onSaveExistingNameHandler);
			eventMap.mapListener(view, NameEvent.ADD_NEW_NAME, dispatch);
		}
		
		private function onSaveNewNameHandler(event:NameEvent):void {
			
			view.saveNewName(event.nameHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
		
		private function onSaveExistingNameHandler(event:NameEvent):void {
		
			view.saveExistingName(event.nameHistory);
			
			dispatch(new ProfileChangeEvent(ProfileChangeEvent.PROFILE_ITEM_CHANGED));
		}
	}
}