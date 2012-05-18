package com.chloe.mvcs.view
{
	import com.chloe.mvcs.view.search.ProfileEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ClientContextMediator extends Mediator
	{
		[Inject]
		public var view:ClientContextView;
		public function ClientContextMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(eventDispatcher, ProfileEvent.SEARCH_FOR_PROFILE, onSearchForProfileHandler);
			eventMap.mapListener(eventDispatcher, ProfileEvent.CREATE_NEW_PROFILE, onCreateProfileHandler);
		}
		
		private function onCreateProfileHandler(event:ProfileEvent):void {
			trace("change")
			this.view.currentState = "profileEditor";
		}
		
		private function onSearchForProfileHandler(event:ProfileEvent):void {
			
			this.view.currentState = "search";
		}
	}
}