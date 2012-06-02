package com.chloe.mvcs.view.profileEditor.names
{
	import com.chloe.mvcs.model.name.FullNameModel;
	
	import flash.events.Event;
	
	public class NameTranslateEvent extends Event
	{
		public static const TRANSLATE_NAME:String = "TRANSLATE_NAME";
		public static const NAME_TRANSLATED:String = "NAME_TRANSLATED";
		
		private var _nameToTranslate:String = new String();
		private var _nameTranslated:FullNameModel;
		public function NameTranslateEvent(type:String, aNameToTranslate:String = null, aNameTranslated:FullNameModel = null,  bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_nameToTranslate = aNameToTranslate;
			_nameTranslated = aNameTranslated;
		}
		
		public function get nameToTranslate():String			{return _nameToTranslate};
		public function get nameTranslated():FullNameModel		{return _nameTranslated};
		
		override public function clone():Event {
			
			return new NameTranslateEvent(type, _nameToTranslate, _nameTranslated, bubbles, cancelable);
		}
	}
}