package com.chloe.mvcs.controller
{
	import com.chloe.mvcs.view.ClientContextMediator;
	import com.chloe.mvcs.view.ClientContextView;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItemMediator;
	import com.chloe.mvcs.view.profileEditor.ProfileEditor;
	import com.chloe.mvcs.view.profileEditor.ProfileEditorMediator;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditor
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditorMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameEditor;
	import com.chloe.mvcs.view.profileEditor.names.NameEditorMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameEditorPod;
	import com.chloe.mvcs.view.profileEditor.names.NameEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameItemRenderer;
	import com.chloe.mvcs.view.profileEditor.names.NameItemRendererMediator;
	import com.chloe.mvcs.view.profileEditor.pictureEditor.PictureEditorItemRender;
	import com.chloe.mvcs.view.profileEditor.pictureEditor.PictureEditorItemRenderMediator;
	import com.chloe.mvcs.view.search.SearchProfileInput;
	import com.chloe.mvcs.view.search.SearchProfileInputMediator;
	import com.chloe.mvcs.view.search.SearchView;
	import com.chloe.mvcs.view.search.SearchViewMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	public class Controller extends Context
	{
		private var _stage:DisplayObjectContainer;
		private var view:ClientContextView
		public function Controller(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			
			super(contextView, autoStartup);

			_stage = contextView;
		}
		
		override public function startup():void {

			mapCommands();
			mapModels();
			mapServices();
			mapMediators();
		}
		
		private function mapCommands():void {
			
		}
		
		private function mapModels():void {
			
			
		}
		
		private function mapServices():void {
			
		}
		
		private function mapMediators():void {
			
			mediatorMap.mapView(ClientContextView, ClientContextMediator);
			mediatorMap.mapView(SearchProfileInput, SearchProfileInputMediator);
			mediatorMap.mapView(SearchView, SearchViewMediator);
			mediatorMap.mapView(ProfileEditor, ProfileEditorMediator);
			mediatorMap.mapView(PictureEditorItemRender, PictureEditorItemRenderMediator);
			mediatorMap.mapView(NameEditorPod, NameEditorPodMediator);
			mediatorMap.mapView(NameEditor, NameEditorMediator);
			mediatorMap.mapView(RadioScrollItem, RadioScrollItemMediator);
			mediatorMap.mapView(NameItemRenderer, NameItemRendererMediator);
			mediatorMap.mapView(AddressEditor, AddressEditorMediator);
		}
	}
}