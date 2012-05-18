package com.chloe.mvcs.model
{
	import com.chloe.mvcs.model.address.AddressHistoryModel;
	import com.chloe.mvcs.model.date.DateModel;
	import com.chloe.mvcs.model.email.EmailHistoryModel;
	import com.chloe.mvcs.model.facebook.FacebookHistoryModel;
	import com.chloe.mvcs.model.googlePlus.GooglePlusHistoryModel;
	import com.chloe.mvcs.model.name.FullNameHistoryModel;
	import com.chloe.mvcs.model.name.FullNameModel;
	import com.chloe.mvcs.model.name.NameModel;
	import com.chloe.mvcs.model.phone.PhoneNumberHistoryModel;
	import com.chloe.mvcs.model.picture.PictureHistoryModel;
	import com.chloe.mvcs.model.picture.PictureModel;
	import com.chloe.mvcs.model.posterous.PosterousModel;
	import com.chloe.mvcs.model.tumbler.TumberHistoryModel;
	import com.chloe.mvcs.model.twitter.TwitterHistoryModel;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class ChloeProfileModel extends EventDispatcher
	{
		public var _chloeId:String = new String();
		public var _sex:String = new String();
		public var _birthday:DateModel = new DateModel();
		public var _pictures:ArrayCollection = new ArrayCollection();
		public var picturesToServer:Array = new Array();
		public var picturesToFlex:Array = new Array();
		
		private var _names:Vector.<FullNameHistoryModel> = new Vector.<FullNameHistoryModel>();
		public var namesToServer:Array = new Array();
		public var namesToFlex:Array = new Array();
		
		private var _addresses:Vector.<AddressHistoryModel> = new Vector.<AddressHistoryModel>();
		public var addressesToServer:Array = new Array();
		public var addressesToFlex:Array = new Array();
		
		private var _phoneNumbers:Vector.<PhoneNumberHistoryModel> = new Vector.<PhoneNumberHistoryModel>();
		public var phoneNumbersToServer:Array = new Array();
		public var phoneNumbersToFlex:Array = new Array();
		
		private var _emailsAddresses:Vector.<EmailHistoryModel> = new Vector.<EmailHistoryModel>();
		public var emailAddressesToServer:Array = new Array();
		public var emailAddressesToFlex:Array = new Array();
		
		private var _instantMessengerAccounts:Array;
		public var instantMessengersToServer:Array = new Array();
		public var instantMessengersToFlex:Array = new Array();
		
		private var _twitterAccounts:Vector.<TwitterHistoryModel> = new Vector.<TwitterHistoryModel>();
		public var twitterAccountsToServer:Array = new Array();
		public var twitterAccountsToFlex:Array = new Array();
		
		private var _facebookAccounts:Vector.<FacebookHistoryModel> = new Vector.<FacebookHistoryModel>();
		public var facebookAccountsToServer:Array = new Array();
		public var facebooksAccountsToFlex:Array = new Array();
		
		private var _googlePlusAccounts:Vector.<GooglePlusHistoryModel> = new Vector.<GooglePlusHistoryModel>();
		public var googlePlusAccountsToServer:Array = new Array();
		public var googlePlusAccountsToFlex:Array = new Array();
		
		private var _tumblerAccount:Vector.<TumberHistoryModel> = new Vector.<TumberHistoryModel>();
		public var tumblerAccountsToServer:Array = new Array();
		public var tumblerAccountsToFlex:Array = new Array();
		
		private var _posterousAccounts:Vector.<PosterousModel> = new Vector.<PosterousModel>();
		public var posterousAccountsToServer:Array= new Array();
		public var posterousAccountsToFlex:Array = new Array();
		
		private var _spotifyAccounts:Array;
		public var spotifyAccountsToServer:Array = new Array();
		public var spotifyAccountsToFlex:Array = new Array();
		
		private var _rdioAccounts:Array;
		public var rdioAccountsToServer:Array = new Array();
		public var rdioAccountsToFlex:Array = new Array();
		
		public function ChloeProfileModel(target:IEventDispatcher=null){
			super(target);
			
			addTestData();
		}
		
		private function addTestData():void {
			
			/*var nameHistory:FullNameHistoryModel = new FullNameHistoryModel();
			
			var name:FullNameModel = new FullNameModel();
			var namePiece:NameModel = new NameModel();
			namePiece.name = "Adrienne"
			name.firstName = namePiece;
			
			var middlePiece:NameModel = new NameModel();
			middlePiece.name = "Fletcher";
			name.middle1Name = middlePiece;
			
			var lastPiece:NameModel = new NameModel();
			lastPiece.name = "Hill"
			name.lastName = lastPiece;
			nameHistory.fullName = name;
				
			nameHistory.fullName = name;
			
			var pictureHistory:PictureHistoryModel = new PictureHistoryModel();
			var picture:PictureModel = new PictureModel();
			picture.rawPath = "";
			
			pictureHistory.picture = picture;
			
			this._pictures.push(pictureHistory);
			this._pictures.push(pictureHistory);
			this._pictures.push(pictureHistory);*/
		}

		public function get rdioAccounts():Array{
			return _rdioAccounts;
		}

		public function set rdioAccounts(value:Array):void{
			_rdioAccounts = value;
		}

		public function get spotifyAccounts():Array{
			return _spotifyAccounts;
		}

		public function set spotifyAccounts(value:Array):void{
			_spotifyAccounts = value;
		}

		public function get posterousAccounts():Vector.<PosterousModel>{
			return _posterousAccounts;
		}

		public function set posterousAccounts(value:Vector.<PosterousModel>):void{
			_posterousAccounts = value;
		}

		public function get tumblerAccount():Vector.<TumberHistoryModel>{
			return _tumblerAccount;
		}

		public function set tumblerAccount(value:Vector.<TumberHistoryModel>):void{
			_tumblerAccount = value;
		}

		public function get googlePlusAccounts():Vector.<GooglePlusHistoryModel>{
			return _googlePlusAccounts;
		}

		public function set googlePlusAccounts(value:Vector.<GooglePlusHistoryModel>):void{
			_googlePlusAccounts = value;
		}

		public function get facebookAccounts():Vector.<FacebookHistoryModel>{
			return _facebookAccounts;
		}

		public function set facebookAccounts(value:Vector.<FacebookHistoryModel>):void{
			_facebookAccounts = value;
		}

		public function get twitterAccounts():Vector.<TwitterHistoryModel>{
			return _twitterAccounts;
		}

		public function set twitterAccounts(value:Vector.<TwitterHistoryModel>):void{
			_twitterAccounts = value;
		}

		public function get instantMessengerAccounts():Array{
			return _instantMessengerAccounts;
		}

		public function set instantMessengerAccounts(value:Array):void{
			_instantMessengerAccounts = value;
		}

		public function get emailsAddresses():Vector.<EmailHistoryModel>{
			return _emailsAddresses;
		}

		public function set emailsAddresses(value:Vector.<EmailHistoryModel>):void{
			_emailsAddresses = value;
		}

		public function get phoneNumbers():Vector.<PhoneNumberHistoryModel>{
			return _phoneNumbers;
		}

		public function set phoneNumbers(value:Vector.<PhoneNumberHistoryModel>):void{
			_phoneNumbers = value;
		}

		public function get addresses():Vector.<AddressHistoryModel>{
			return _addresses;
		}

		public function set addresses(value:Vector.<AddressHistoryModel>):void{
			_addresses = value;
		}

		public function get names():Vector.<FullNameHistoryModel>{
			return _names;
		}

		public function set names(value:Vector.<FullNameHistoryModel>):void{
			_names = value;
		}
		
		public function prepareForServer():void {
			
			this.namesToServer = vectorToArray(this.names)
			this.addressesToServer = vectorToArray(this.addresses);
			this.phoneNumbersToServer = vectorToArray(this.phoneNumbers)
			this.emailAddressesToServer = vectorToArray(this.emailsAddresses);
			this.instantMessengersToServer = vectorToArray(this.instantMessengerAccounts)
			this.twitterAccountsToServer = vectorToArray(this.twitterAccounts);
			this.facebookAccountsToServer = vectorToArray(this.facebookAccounts);
			this.googlePlusAccountsToServer = vectorToArray(this.googlePlusAccounts);
			this.tumblerAccountsToServer = vectorToArray(this.tumblerAccount);
			this.posterousAccountsToServer = vectorToArray(this.posterousAccounts);
			this.spotifyAccountsToServer = vectorToArray(this.spotifyAccounts);
			this.rdioAccountsToServer = vectorToArray(this.rdioAccounts);
		}
		
		public function normalizeFromServer():void {
			
			arrayToVector(this.namesToFlex, this.names);
			arrayToVector(this.addressesToFlex, this.addresses);
			arrayToVector(this.phoneNumbersToFlex, this.phoneNumbers);
			arrayToVector(this.emailAddressesToFlex, this.emailsAddresses);
			arrayToVector(this.instantMessengersToFlex, this.instantMessengerAccounts);
			arrayToVector(this.twitterAccountsToFlex, this.twitterAccounts);
			arrayToVector(this.facebooksAccountsToFlex, this.facebookAccounts);
			arrayToVector(this.googlePlusAccountsToFlex, this.googlePlusAccounts);
			arrayToVector(this.tumblerAccountsToFlex, this.tumblerAccount);
			arrayToVector(this.posterousAccountsToFlex, this.posterousAccounts);
			arrayToVector(this.spotifyAccountsToFlex, this.spotifyAccounts);
			arrayToVector(this.rdioAccountsToFlex, this.rdioAccounts);
		}

		private function vectorToArray(v:Object):Array {
			
			var len:int = v.length;
			var tempArray:Array = new Array(len);
			for (var i:int = 0; i < len; ++i)
			{
				tempArray[i] = v[i];
			}
			
			return tempArray;
		}
		
		private function arrayToVector(a:Array, v:Object):void {
			
			v.splice(0, v.length);
			
			var d:int = 0
			var len:int = a.length;
			for(;d<len;d++){
				
				v.push(a[d]);
			}
		}
	}
}