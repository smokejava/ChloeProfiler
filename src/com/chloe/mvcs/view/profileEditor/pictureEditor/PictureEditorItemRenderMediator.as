package com.chloe.mvcs.view.profileEditor.pictureEditor
{
	import org.robotlegs.mvcs.Mediator;
	
	public class PictureEditorItemRenderMediator extends Mediator
	{
		[Inject]
		public var view:PictureEditorItemRender
		public function PictureEditorItemRenderMediator()
		{
			super();
		}
		
		override public function onRegister():void {
			
			eventMap.mapListener(view, PictureSaveEvent.SAVE_PICTURE, dispatch);
		}
	}
}