package com.chloe.mvcs.view.profileEditor.pictureEditor
{
	import com.chloe.mvcs.model.picture.PictureModel;
	
	import flash.events.Event;
	
	public class PictureChangeEvent extends Event
	{
		public static const PICTURE_EDIT_COMPLETE:String = "PICTURE_EDIT_COMPLETE";
		
		private var _pictureModel:PictureModel
		public function PictureChangeEvent(type:String, aPictureModel:PictureModel, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public function get pictureModel():PictureModel {
			
			return _pictureModel;
		}
		
		override public function clone():Event {
			
			return new PictureChangeEvent(type, _pictureModel, bubbles, cancelable);
		}
	}
}