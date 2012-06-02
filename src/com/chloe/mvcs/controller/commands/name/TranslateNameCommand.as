package com.chloe.mvcs.controller.commands.name
{
	import com.chloe.mvcs.service.name.INameService;
	import com.chloe.mvcs.service.name.NameService;
	import com.chloe.mvcs.view.profileEditor.names.NameTranslateEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class TranslateNameCommand extends Command
	{
		[Inject]
		public var service:INameService
		
		[Inject]
		public var event:NameTranslateEvent;
		public function TranslateNameCommand()
		{
			super();
		}
		
		override public function execute():void {
			
			service.translateName(event.nameToTranslate);
		}
	}
}