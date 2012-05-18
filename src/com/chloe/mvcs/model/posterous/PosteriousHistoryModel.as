package com.chloe.mvcs.model.posterous
{
	import flash.events.IEventDispatcher;
	import com.chloe.mvcs.model.HistoryModel;
	
	public class PosteriousHistoryModel extends HistoryModel
	{
		public var account:PosterousModel;
		public function PosteriousHistoryModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}