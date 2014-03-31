package com.codefish.components.bitmapGrid
{
	import flash.events.Event;

	public class BitmapGridEvent extends Event
	{
		public static const MOUSE_OVER:String = "BitmapGridMouseOver";
		public static const DOUBLE_CLICK:String = "BitmapGridDoubleClick";
		
		public var row:Object;
		public var cell:Object;
		public var rowIndex:int;
		public var columnIndex:int;
		
		public function BitmapGridEvent(type:String, rowIndex:int,columnIndex:int, row:Object, cell:Object)
		{
			super(type, false);
			this.rowIndex = rowIndex;
			this.columnIndex = columnIndex;
			this.row = row;
			this.cell = cell;
			
		}
		
		
	}
}