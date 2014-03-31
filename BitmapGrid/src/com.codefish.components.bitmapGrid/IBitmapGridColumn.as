package com.codefish.components.bitmapGrid
{
	
	public interface IBitmapGridColumn
	{
		function get dataField():String;
		function set dataField(val:String):void;

		function get headerText():String;
		function set headerText(val:String):void;
		
		function set width(val:uint):void;
		function get width():uint;
	}
}