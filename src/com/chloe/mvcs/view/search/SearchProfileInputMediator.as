package com.chloe.mvcs.view.search
{
	import org.robotlegs.mvcs.Mediator;
	
	public class SearchProfileInputMediator extends Mediator
	{
		[Inject]
		public var view:SearchProfileInput;
		public function SearchProfileInputMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			trace("input registered");
		}
	}
}