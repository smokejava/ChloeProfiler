package com.chloe.mvcs.controller.commands.address
{
	import com.chloe.mvcs.service.address.IAddressService;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressVerificationEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class VerifyAddressCommand extends Command
	{
		[Inject]
		public var service:IAddressService
		
		[Inject]
		public var event:AddressVerificationEvent;
		public function VerifyAddressCommand()
		{
			super();
		}
		
		override public function execute():void {
			
			service.verifyAddress(event.addressToVerify);
		}
	}
}