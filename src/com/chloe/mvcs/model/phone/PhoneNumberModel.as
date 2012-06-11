package com.chloe.mvcs.model.phone
{
	[RemoteClass(alias='Chloe.dto.phone.PhoneNumberModel')]
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	public class PhoneNumberModel extends EventDispatcher
	{
		public var id:String;
		public var countryCode:Number;
		public var areaCode:Number;
		public var prefix:Number;
		public var number:Number;
		public var extension:Number;
		public var type:PhoneNumberType;
		public function PhoneNumberModel(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function phoneNumber(value:String):void {
			
		}
		
		public function set fullPhoneNumber(value:String):void {
			
			
		}
		
		public function get fullPhoneNumber():String {
			
			return areaCode.toString() + prefix.toString() + number.toString();
		}
	}
}