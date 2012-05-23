package com.chloe.mvcs.view.profileEditor.pictureEditor
{
	import com.chloe.mvcs.model.picture.PictureHistoryModel;
	
	import flash.events.Event;
	
	public class PictureSaveEvent extends Event
	{
		public static const SAVE_PICTURE:String = "SAVE_PICTURE";
		
		private var _pictureHistoryModel:PictureHistoryModel;
		public function PictureSaveEvent(type:String, aPictureHistoryModel:PictureHistoryModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_pictureHistoryModel = aPictureHistoryModel;
		}
		
		public function get pictureHistoryModel():PictureHistoryModel {
			
			return _pictureHistoryModel;
		}
		
		override public function clone():Event {
			
			return new PictureSaveEvent(type, _pictureHistoryModel, bubbles, cancelable);
		}
	}
}