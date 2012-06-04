package com.chloe.mvcs.service.ques
{
	import com.chloe.mvcs.model.ChloeProfileModel;

	public interface ISavingQue
	{
		function saveItem(value:ChloeProfileModel):void;
		function checkQue():void;
	}
}