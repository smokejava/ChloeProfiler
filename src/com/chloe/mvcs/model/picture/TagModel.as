package com.chloe.mvcs.model.picture
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.geom.Point;
	
	public class TagModel extends EventDispatcher
	{
		public var id:String;
		public var chloeProfile:String;
		public var tagCoordinates:Point;
		public function TagModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}