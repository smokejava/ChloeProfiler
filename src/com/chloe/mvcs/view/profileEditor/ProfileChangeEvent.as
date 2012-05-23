package com.chloe.mvcs.view.profileEditor
{
	import flash.events.Event;
	
	public class ProfileChangeEvent extends Event
	{
		public function ProfileChangeEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}