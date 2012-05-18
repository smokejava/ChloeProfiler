package com.chloe.mvcs.model.address
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.global.AbbreviationModel;
	
	public class StateModel extends EventDispatcher
	{
		public var id:String;
		public var state:String;
		public var abbreviation:AbbreviationModel;
		public function StateModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}