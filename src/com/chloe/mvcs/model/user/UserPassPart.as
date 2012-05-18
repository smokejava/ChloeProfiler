package com.chloe.mvcs.model.user
{
	import flash.geom.Point;

	public class UserPassPart
	{
		private var _type:PassUserPartType;
		private var _firstPoint:Point = new Point();
		private var _secondPoint:Point = new Point();
		private var _thirdPoint:Point = new Point();
		private var _fourthPoint:Point = new Point();
		public function UserPassPart()
		{
		}

		public function get fourthPoint():Point
		{
			return _fourthPoint;
		}

		public function set fourthPoint(value:Point):void
		{
			_fourthPoint = value;
		}

		public function get thirdPoint():Point
		{
			return _thirdPoint;
		}

		public function set thirdPoint(value:Point):void
		{
			_thirdPoint = value;
		}

		public function get secondPoint():Point
		{
			return _secondPoint;
		}

		public function set secondPoint(value:Point):void
		{
			_secondPoint = value;
		}

		public function get firstPoint():Point
		{
			return _firstPoint;
		}

		public function set firstPoint(value:Point):void
		{
			_firstPoint = value;
		}

		public function get type():PassUserPartType
		{
			return _type;
		}

		public function set type(value:PassUserPartType):void
		{
			_type = value;
		}

	}
}