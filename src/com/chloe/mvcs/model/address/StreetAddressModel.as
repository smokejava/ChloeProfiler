package com.chloe.mvcs.model.address
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class StreetAddressModel extends EventDispatcher
	{
		public var id:String;
		public var streetAddress:String;
		public function StreetAddressModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}