package com.chloe.mvcs.model.address
{
	import com.chloe.mvcs.model.global.AbbreviationModel;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class CountryModel extends EventDispatcher
	{
		public var id:String;
		public var country:String;
		public var abbreviation:AbbreviationModel;
		public function CountryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}