package com.codefish.components.bitmapGrid
{
	import flash.display.BitmapData;

	[Bindable]
	public interface IBitmapGridRenderer
	{
		function render(x:Number,y:Number, rowIndex:int, columnIndex:int,data:Object,column:IBitmapGridColumn):void;
		
		function get canvas():BitmapData;
		function set canvas(bitmap:BitmapData):void;
		
		function set height(val:Number):void;
		function get height():Number;
	}
}