package com.chloe.mvcs.service.chloeProfileSave
{
	import com.chloe.mvcs.model.ChloeProfileModel;
	
	import flash.events.NetStatusEvent;
	import flash.net.NetConnection;
	import flash.net.ObjectEncoding;
	import flash.net.Responder;
	import flash.net.dns.AAAARecord;
	
	import org.robotlegs.mvcs.Actor;
	
	public class ChloeProfileSave extends Actor implements IChloeProfileSave
	{
		private var netConnection:NetConnection = new NetConnection();
		private var responder:Responder = new Responder(onSaveSuccessHandler, onSaveFailedHandler);
		
		private var profileToSave:ChloeProfileModel;
		public function ChloeProfileSave()
		{
			super();
			
			setupConnection();
			registerClasses();
		}
		
		public function saveProfile(value:ChloeProfileModel):void
		{
			
			profileToSave = value;
			netConnection.call('Chloe.AdminService.saveProfile', responder, profileToSave);
		}
		
		private function setupConnection():void {
			
			netConnection = new NetConnection();
			netConnection.client = this;
			netConnection.objectEncoding = ObjectEncoding.AMF3;
			
			registerClasses();
			
			try{
				
				netConnection.connect("http://www.thechloeproject.com/gateway.aspx");
			} catch(event:NetStatusEvent) {
				
			}
		}
		
		private function onSaveSuccessHandler(value:ChloeProfileModel):void {
			
			dispatch(new ProfileSaveEvent(ProfileSaveEvent.PROFILE_SAVED, value));
		}
		
		private function onSaveFailedHandler(event:Object):void {
			
		}
		
		private function registerClasses():void {
			
			flash.net.registerClassAlias('Chloe.ChloeProfileModel', ChloeProfileModel);
			
			
		}
	}
}