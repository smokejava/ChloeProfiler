package com.chloe.mvcs.model.address
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class CityModel extends EventDispatcher
	{
		public var id:String;
		public var city:String;
		public function CityModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}