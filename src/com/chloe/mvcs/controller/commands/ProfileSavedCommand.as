package com.chloe.mvcs.controller.commands
{
	import com.chloe.mvcs.service.ques.ISavingQue;
	
	import org.robotlegs.mvcs.Command;
	
	public class ProfileSavedCommand extends Command
	{
		[Inject]
		public var service:ISavingQue
		
		override public function execute():void {
			
			service.checkQue();
		}
	}
}