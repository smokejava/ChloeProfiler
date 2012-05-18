package com.chloe.mvcs.model
{
	
	import flash.events.EventDispatcher;
	
	import mx.utils.StringUtil;
	import com.chloe.mvcs.model.name.FullNameModel;
	import com.chloe.mvcs.model.name.NameModel;
	
	public class NameTranslationProxy extends EventDispatcher
	{
		private var _namesToTranslate:Array = new Array();
		private var _translateName:FullNameModel = new FullNameModel();
		public function NameTranslationProxy()
		{
		}
		
		public function get translatedName():FullNameModel
		{
			return _translateName;
		}
		
		public function set translatedName(arg1:FullNameModel):void
		{
			_translateName = arg1;
			trace("name set");
			
			dispatchEvent(new ProxyEvent(ProxyEvent.NAME_EVALUATED));
		}
		
		public function set nameToTranslate(arg1:String):void {
			
			this._namesToTranslate = [];
			this._translateName = new FullNameModel();
			createPossibleFullNames(arg1);
		}
		
		public function get namesToTranslate():Array {
			
			return this._namesToTranslate;
		}
		
		public function submitFinalName():void {
			
			dispatchEvent(new ProxyEvent(ProxyEvent.SUBMIT_FINAL_NAME));
		}
		
		private function createPossibleFullNames(arg1:String):void {
			
			switch(arg1.split(" ").length) {
				
				case 1:
					
					oneName(arg1.split(" "))
				break
				case 2:
					twoNames(arg1.split(" "))
				break
				case 3:
					threeNames(arg1.split(" "))
				break
				case 4:
					fourNames(arg1.split(" "))
				break
				case 5:
					fiveNames(arg1.split(" "))
				break
														
														}
		}
		
		private function oneName(arg1:Array):void {
			
			this._namesToTranslate.push(createFullName(arg1[0], "", "", ""));
			this._namesToTranslate.push(createFullName("", arg1[0], "", ""));
			this._namesToTranslate.push(createFullName("", "", arg1[0], ""));
			this._namesToTranslate.push(createFullName("", "", "", arg1[0]));	
			
			dispatchEvent(new ProxyEvent(ProxyEvent.NAMES_NEED_TRANSLATION));
		}
		
		private function twoNames(arg1:Array):void {
			
			this._namesToTranslate.push(createFullName(arg1[0], "", "", arg1[1]));
			this._namesToTranslate.push(createFullName(arg1[0] + "" + arg1[1], "", "", ""));
			this._namesToTranslate.push(createFullName(arg1[0], arg1[1], "", ""));
			
			dispatchEvent(new ProxyEvent(ProxyEvent.NAMES_NEED_TRANSLATION));
		}
		
		private function threeNames(arg1:Array):void {
			
			this._namesToTranslate.push(createFullName(arg1[0], arg1[1], "", arg1[2]));
			this._namesToTranslate.push(createFullName(arg1[0] + "" + arg1[1], "", "", arg1[2]));
			this._namesToTranslate.push(createFullName(arg1[0] , "", "",arg1[1] + " " + arg1[2]));
			
			dispatchEvent(new ProxyEvent(ProxyEvent.NAMES_NEED_TRANSLATION));
		}
		
		private function fourNames(arg1:Array):void {
			
			this._namesToTranslate.push(createFullName(arg1[0], arg1[1], arg1[2], arg1[3]));
			this._namesToTranslate.push(createFullName(arg1[0] + "" + arg1[1], arg1[2], "",  arg1[3]));
			this._namesToTranslate.push(createFullName(arg1[0] + "" + arg1[1], "", "", arg1[2] + "" + arg1[3]));
			this._namesToTranslate.push(createFullName(arg1[0], arg1[1], "", arg1[2] + " " +  arg1[3]));
			
			
			dispatchEvent(new ProxyEvent(ProxyEvent.NAMES_NEED_TRANSLATION));
		}
		
		private function fiveNames(arg1:Array):void {
			
			
			dispatchEvent(new ProxyEvent(ProxyEvent.NAMES_NEED_TRANSLATION));
		}
		
		private function createFullName($firstName:String, $middle1:String, $middle2:String, $lastName:String):FullNameModel {
			
			var firstName:NameModel = new NameModel();
			firstName.name = $firstName;
			
			var middle1Name:NameModel = new NameModel();
			middle1Name.name = $middle1;
			
			var middle2Name:NameModel = new NameModel();
			middle2Name.name = $middle2;
			
			var lastName:NameModel = new NameModel();
			lastName.name = $lastName;
			
			var $temp:FullNameModel = new FullNameModel();
			$temp.firstName = firstName;
			$temp.middle1Name = middle1Name;
			$temp.middle2Name = middle2Name;
			$temp.lastName = lastName;
			
			return $temp;
		}
		
	}
}