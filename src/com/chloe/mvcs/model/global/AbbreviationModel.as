package com.chloe.mvcs.model.global
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class AbbreviationModel extends EventDispatcher
	{
		public var id:String;
		public var abbreviation:String;
		public function AbbreviationModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}