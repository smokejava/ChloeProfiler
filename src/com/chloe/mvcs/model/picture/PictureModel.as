package com.chloe.mvcs.model.picture
{
	
	import flash.display.Bitmap;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.geom.Rectangle;
	
	public class PictureModel extends EventDispatcher
	{
		public var id:String;
		public var rawPath:String;
		public var rawBitmap:Bitmap;
		public var scale:Number;
		public var cropX:Number;
		public var cropY:Number;
		public var cropWidth:Number;
		public var cropHeight:Number;
		public var filter:Array;
		public var tags:Array;

		private var tagVector:Vector.<TagHistoryModel>;
		public function PictureModel(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function get cropBounds():Rectangle {
			
			return new Rectangle(cropX, cropY, cropWidth, cropHeight);
		}
		
		public function pictureTags():Vector.<TagHistoryModel> {
			
			var $temp:Vector.<TagHistoryModel>;
			if(tagVector.length>0) {
				$temp = tagVector
			} else if (tags.length != tagVector.length) {
				$temp = convertTagToVector();
			}
			
			return $temp;
		}

		private function convertTagToVector():Vector.<TagHistoryModel> {
			
			var $temp:Vector.<TagHistoryModel> = new Vector.<TagHistoryModel>();
			
			for each(var aTag:TagHistoryModel in tags) {
				$temp.push(aTag);
			}
			
			return $temp;
			
			
		}
		
	}
}