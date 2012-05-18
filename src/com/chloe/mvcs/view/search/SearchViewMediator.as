package com.chloe.mvcs.view.search
{
	import org.robotlegs.mvcs.Mediator;
	
	public class SearchViewMediator extends Mediator
	{
		[Inject]
		public var view:SearchView
		public function SearchViewMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			trace("registered")
			eventMap.mapListener(view, ProfileEvent.CREATE_NEW_PROFILE, dispatch);
		}
		
		private function onTest(event:ProfileEvent):void {
			
			trace("got it")
		}
	}
}