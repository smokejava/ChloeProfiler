package com.chloe.mvcs.model.admin
{
	[RemoteClass(alias='Chloe.AdminPasswordPictureModel')]
	import com.chloe.mvcs.view.picturePasswordWizard.vo.PasspointModel;
	
	import flash.utils.ByteArray;
	
	import org.robotlegs.mvcs.Actor;
	
	public class AdminPasswordPictureModel extends Actor implements IAdminPasswordPicture
	{
		public var id:int;
		public var imagePath:String;
		public var imageContainerScale:Number;
		public var imageContainerXPos:Number;
		public var imageContainerYPos:Number;
		public var ImageByteArrayFromFlex:ByteArray;
		public var passpoints:Array;
		public var passPointsToFlex:Array;
		public function AdminPasswordPictureModel()
		{
			super();
		}
	}
}