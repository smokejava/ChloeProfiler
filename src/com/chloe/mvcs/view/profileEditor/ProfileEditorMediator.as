package com.chloe.mvcs.view.profileEditor
{
	import com.chloe.mvcs.model.ChloeProfileModel;
	import com.chloe.mvcs.view.profileEditor.pictureEditor.PictureSaveEvent;
	import com.chloe.mvcs.view.search.ProfileEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ProfileEditorMediator extends Mediator
	{
		[Inject]
		public var view:ProfileEditor
		public function ProfileEditorMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, ProfileEvent.SEARCH_FOR_PROFILE, dispatch);
			eventMap.mapListener(eventDispatcher, PictureSaveEvent.SAVE_PICTURE, onSavePictureHandler);
			eventMap.mapListener(eventDispatcher, ProfileEvent.CREATE_NEW_PROFILE, onCreateNewProfileHandler);
			eventMap.mapListener(eventDispatcher, ProfileChangeEvent.PROFILE_ITEM_CHANGED, onProfileChangedHandler);
		}
		
		private function onCreateNewProfileHandler(event:ProfileEvent):void {
			
			view.profileToEdit = new ChloeProfileModel();
		}
		
		private function onSavePictureHandler(event:PictureSaveEvent):void {
			
			view.addNewPhoto(event.pictureHistoryModel);
		}
		
		private function onProfileChangedHandler(event:ProfileChangeEvent):void {
			
		}
	}
}