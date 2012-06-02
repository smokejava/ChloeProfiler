package com.chloe.mvcs.model.name
{
	import mx.utils.StringUtil;

	[RemoteClass(alias='Chloe.dto.name.FullNameModel')]
	
	public class FullNameModel
	{
		public var id:int
		public var firstName:NameModel = new NameModel();
		public var middle1Name:NameModel = new NameModel();
		public var middle2Name:NameModel = new NameModel();
		public var lastName:NameModel = new NameModel();
		public function FullNameModel()
		{
		}
		
		public function fullNameToString():String {
	
			var fullName:String = new String();
			if(StringUtil.trim(middle1Name.name).length>0 && StringUtil.trim(middle2Name.name).length>0) {
				
				fullName = firstName.name + " " + middle1Name.name + " " + middle2Name.name + " " + lastName.name
			} else if(StringUtil.trim(middle1Name.name).length>0) {
				
				fullName = firstName.name + " " + middle1Name.name + " " + lastName.name
			} else if(StringUtil.trim(middle2Name.name).length>0) {
				
				fullName = firstName.name + " " +  middle2Name.name + " " + lastName.name
			} else {
				fullName = firstName.name + " " + lastName.name
			}
			
			return fullName;
		}
	}
}