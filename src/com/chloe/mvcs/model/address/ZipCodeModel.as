package com.chloe.mvcs.model.address
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class ZipCodeModel extends EventDispatcher
	{
		public var id:String;
		public var zipCode:String;
		public function ZipCodeModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}