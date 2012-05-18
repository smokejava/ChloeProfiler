package com.chloe.mvcs.view.profileEditor
{
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
			
		}
	}
}