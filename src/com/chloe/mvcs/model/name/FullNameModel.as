package com.chloe.mvcs.model.name
{

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
	}
}