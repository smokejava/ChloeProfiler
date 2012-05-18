package com.chloe.mvcs.model.picture
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.date.DateModel;
	
	public class PictureHistoryModel extends EventDispatcher
	{
		public var picture:PictureModel;
		public function PictureHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}