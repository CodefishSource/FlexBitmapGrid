package com.codefish.components.bitmapGrid
{
	
	public class BitmapGridColumn implements IBitmapGridColumn
	{
		public function BitmapGridColumn()
		{
		}
		
		private var _dataField:String;
		private var _headerText:String;
		private var _width:uint;
		
		public function get width():uint
		{
			return _width;
		}

		public function set width(value:uint):void
		{
			_width = value;
		}

		public function get headerText():String
		{
			return _headerText;
		}

		public function set headerText(value:String):void
		{
			_headerText = value;
		}

		public function get dataField():String
		{
			return _dataField;
		}

		public function set dataField(value:String):void
		{
			_dataField = value;
		}

	}
}