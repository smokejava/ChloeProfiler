package com.chloe.mvcs.model.address
{
	import com.chloe.mvcs.model.global.AbbreviationModel;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class CountyModel extends EventDispatcher
	{
		public var id:String;
		public var county:String;
		public var abbreviation:AbbreviationModel;
		public function CountyModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}