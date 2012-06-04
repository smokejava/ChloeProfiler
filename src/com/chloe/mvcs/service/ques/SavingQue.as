package com.chloe.mvcs.service.ques
{
	import com.chloe.mvcs.model.ChloeProfileModel;
	import com.chloe.mvcs.service.chloeProfileSave.ChloeProfileSave;
	import com.chloe.mvcs.service.chloeProfileSave.IChloeProfileSave;
	import com.freshplanet.nativeExtensions.AirNetworkInfo;
	
	import flash.net.NetConnection;
	import flash.net.dns.AAAARecord;
	
	import org.robotlegs.mvcs.Actor;
	
	public class SavingQue extends Actor implements ISavingQue
	{
		private var chloeSaveProfileService:IChloeProfileSave = new ChloeProfileSave();
		private var itemsToSave:Vector.<ChloeProfileModel> = new Vector.<ChloeProfileModel>();

		public function SavingQue()
		{
			super();

		}
		
		public function saveItem(value:ChloeProfileModel):void
		{
			itemsToSave.push(value);
			
			if(itemsToSave.length==1){
				
				processQue();
			}
		}
		
		public function checkQue():void {
			
			itemsToSave.splice(0, 1);
			
			if(itemsToSave.length>0) {
				processQue();
			}
		}
		
		private function processQue():void {
			
			if(AirNetworkInfo.networkInfo.isConnected()()) {
				
				chloeSaveProfileService.saveProfile(itemsToSave[0]);
			}
		}
	}
}