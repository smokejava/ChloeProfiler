package com.chloe.mvcs.service.name
{
	import com.chloe.mvcs.model.name.FullNameModel;
	import com.chloe.mvcs.view.profileEditor.names.NameTranslateEvent;
	
	import flash.events.NetStatusEvent;
	import flash.net.NetConnection;
	import flash.net.ObjectEncoding;
	import flash.net.Responder;
	import flash.net.registerClassAlias;
	
	import org.robotlegs.mvcs.Actor;

	public class NameService extends Actor implements INameService
	{
		private var netConnection:NetConnection = new NetConnection();
		public function NameService()
		{
			
			setupConnection();
			registerClasses();
		}
		
		public function translateName(value:String):void {
			
			var translateNameResponder:Responder = new Responder(onNameTranslateSuccessHandler, onNameTranslateFailureHandler);
			this.netConnection.call('Chloe.AdminService.translateNameToFullName', translateNameResponder, value);
		}
		
		private function onNameTranslateSuccessHandler(value:FullNameModel):void {
			
			
			dispatch(new NameTranslateEvent(NameTranslateEvent.NAME_TRANSLATED, null, value));
		}
		
		private function onNameTranslateFailureHandler(value:Object):void {
			
			trace("ERROR: Bad name translation call");
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
		
		private function registerClasses():void {
			
			flash.net.registerClassAlias('Chloe.FullNameModel', FullNameModel);


		}
	}
}