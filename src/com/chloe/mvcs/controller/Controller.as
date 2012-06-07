package com.chloe.mvcs.controller
{
	import com.chloe.mvcs.controller.commands.ProfileSavedCommand;
	import com.chloe.mvcs.controller.commands.address.VerifyAddressCommand;
	import com.chloe.mvcs.controller.commands.name.TranslateNameCommand;
	import com.chloe.mvcs.service.address.AddressService;
	import com.chloe.mvcs.service.address.IAddressService;
	import com.chloe.mvcs.service.chloeProfileSave.ChloeProfileSave;
	import com.chloe.mvcs.service.chloeProfileSave.IChloeProfileSave;
	import com.chloe.mvcs.service.chloeProfileSave.ProfileSaveEvent;
	import com.chloe.mvcs.service.name.INameService;
	import com.chloe.mvcs.service.name.NameService;
	import com.chloe.mvcs.service.ques.ISavingQue;
	import com.chloe.mvcs.service.ques.SavingQue;
	import com.chloe.mvcs.view.ClientContextMediator;
	import com.chloe.mvcs.view.ClientContextView;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItem;
	import com.chloe.mvcs.view.common.radioVerticalScroller.RadioScrollItemMediator;
	import com.chloe.mvcs.view.profileEditor.ProfileEditor;
	import com.chloe.mvcs.view.profileEditor.ProfileEditorMediator;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditor;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditorMediator;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditorPod;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressItemRenderer;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressItemRendererMediator;
	import com.chloe.mvcs.view.profileEditor.addresses.AddressVerificationEvent;
	import com.chloe.mvcs.view.profileEditor.emailAddresses.EmailAddressEditor;
	import com.chloe.mvcs.view.profileEditor.emailAddresses.EmailAddressEditorMediator;
	import com.chloe.mvcs.view.profileEditor.emailAddresses.EmailAddressEditorPod;
	import com.chloe.mvcs.view.profileEditor.emailAddresses.EmailAddressEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.facebook.FacebookAccountEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.facebook.FacebookAccountsEditorPod;
	import com.chloe.mvcs.view.profileEditor.facebook.FacebookEditor;
	import com.chloe.mvcs.view.profileEditor.facebook.FacebookEditorMediator;
	import com.chloe.mvcs.view.profileEditor.googlePlusAccounts.GooglePlusAccountEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.googlePlusAccounts.GooglePlusAccountsEditorPod;
	import com.chloe.mvcs.view.profileEditor.googlePlusAccounts.GooglePlusEditor;
	import com.chloe.mvcs.view.profileEditor.googlePlusAccounts.GooglePlusEditorMediator;
	import com.chloe.mvcs.view.profileEditor.instantMessengerAccounts.InstantMessengerAccountsEditorPod;
	import com.chloe.mvcs.view.profileEditor.instantMessengerAccounts.InstantMessengerEditor;
	import com.chloe.mvcs.view.profileEditor.instantMessengerAccounts.InstantMessengerEditorMediator;
	import com.chloe.mvcs.view.profileEditor.instantMessengerAccounts.InstantMessengerEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameEditor;
	import com.chloe.mvcs.view.profileEditor.names.NameEditorMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameEditorPod;
	import com.chloe.mvcs.view.profileEditor.names.NameEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameItemRenderer;
	import com.chloe.mvcs.view.profileEditor.names.NameItemRendererMediator;
	import com.chloe.mvcs.view.profileEditor.names.NameTranslateEvent;
	import com.chloe.mvcs.view.profileEditor.phoneNumbers.PhoneNumberEditor;
	import com.chloe.mvcs.view.profileEditor.phoneNumbers.PhoneNumberEditorMediator;
	import com.chloe.mvcs.view.profileEditor.phoneNumbers.PhoneNumberEditorPodMediator;
	import com.chloe.mvcs.view.profileEditor.phoneNumbers.PhoneNumberItemRenderer;
	import com.chloe.mvcs.view.profileEditor.phoneNumbers.PhoneNumberItemRendererMediator;
	import com.chloe.mvcs.view.profileEditor.phoneNumbers.PhoneNumbersEditorPod;
	import com.chloe.mvcs.view.profileEditor.pictureEditor.PictureEditorItemRender;
	import com.chloe.mvcs.view.profileEditor.pictureEditor.PictureEditorItemRenderMediator;
	import com.chloe.mvcs.view.search.SearchProfileInput;
	import com.chloe.mvcs.view.search.SearchProfileInputMediator;
	import com.chloe.mvcs.view.search.SearchView;
	import com.chloe.mvcs.view.search.SearchViewMediator;
	
	import flash.display.DisplayObjectContainer;
	
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

			commandMap.mapEvent(NameTranslateEvent.TRANSLATE_NAME, TranslateNameCommand);
			commandMap.mapEvent(AddressVerificationEvent.VERIFY_ADDRESS, VerifyAddressCommand);
			commandMap.mapEvent(ProfileSaveEvent.PROFILE_SAVED, ProfileSavedCommand);
		}
		
		private function mapModels():void {
			
			
		}
		
		private function mapServices():void {
			
			injector.mapSingletonOf(INameService, NameService);
			injector.mapSingletonOf(IAddressService, AddressService);
			injector.mapSingletonOf(ISavingQue, SavingQue);
			injector.mapSingletonOf(IChloeProfileSave, ChloeProfileSave);
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
			mediatorMap.mapView(AddressEditorPod, AddressEditorPodMediator);
			mediatorMap.mapView(AddressItemRenderer, AddressItemRendererMediator);
			mediatorMap.mapView(PhoneNumbersEditorPod, PhoneNumberEditorPodMediator);
			mediatorMap.mapView(PhoneNumberEditor, PhoneNumberEditorMediator);
			mediatorMap.mapView(PhoneNumberItemRenderer, PhoneNumberItemRendererMediator);
			mediatorMap.mapView(EmailAddressEditorPod, EmailAddressEditorPodMediator);
			mediatorMap.mapView(EmailAddressEditor, EmailAddressEditorMediator);
			mediatorMap.mapView(InstantMessengerAccountsEditorPod, InstantMessengerEditorPodMediator);
			mediatorMap.mapView(InstantMessengerEditor, InstantMessengerEditorMediator);
			mediatorMap.mapView(FacebookAccountsEditorPod, FacebookAccountEditorPodMediator);
			mediatorMap.mapView(FacebookEditor, FacebookEditorMediator);
			mediatorMap.mapView(GooglePlusAccountsEditorPod, GooglePlusAccountEditorPodMediator);
			mediatorMap.mapView(GooglePlusEditor, GooglePlusEditorMediator);
		}
	}
}