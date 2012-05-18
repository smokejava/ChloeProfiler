package com.chloe.mvcs.view.profileEditor
{
	import com.chloe.mvcs.model.ChloeProfileModel;
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
			eventMap.mapListener(eventDispatcher, ProfileEvent.CREATE_NEW_PROFILE, onCreateNewProfileHandler);
		}
		
		private function onCreateNewProfileHandler(event:ProfileEvent):void {
			
			view.profileToEdit = new ChloeProfileModel();
		}
	}
}