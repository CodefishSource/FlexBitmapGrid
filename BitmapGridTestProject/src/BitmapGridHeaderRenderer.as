package 
{
	import com.codefish.components.bitmapGrid.IBitmapGridColumn;
	import com.codefish.components.bitmapGrid.IBitmapGridRenderer;
	
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public final class BitmapGridHeaderRenderer implements IBitmapGridRenderer
	{
		private var _canvas:BitmapData;
		private const rect:Rectangle = new Rectangle(0,0,100,100);
		private const textField:TextField  = new TextField;
		
		private const line:Rectangle = new Rectangle(0,0,1,100);
		
		public var fontSize:uint = 13;
		
		public function BitmapGridHeaderRenderer()
		{
			var format:TextFormat = new TextFormat("Verdana");
			format.size = 13;
			textField.defaultTextFormat = format;
			textField.antiAliasType = AntiAliasType.ADVANCED;
			textField.selectable = false;
			textField.multiline=true;
			textField.wordWrap=true;
		}
		
		public function get width():Number
		{
			return rect.width;
		}
		
		public function set width(width:Number):void
		{
			rect.width = width;
		}

		[Bindable]
		public function get height():Number
		{
			return rect.height;
		}
		
		public function set height(height:Number):void
		{
			rect.height = height;
		}
		
		
		public function set canvas(value:BitmapData):void
		{
			_canvas = value;
		}
		
		[Bindable]
		public function get canvas():BitmapData
		{
			return _canvas;
		}

		public function render(x:Number,y:Number, rowIndex:int, columnIndex:int,data:Object,column:IBitmapGridColumn):void
		{
			rect.x = x;
			rect.y = 0;
			rect.width = column.width;
			
			_canvas.fillRect(rect,(columnIndex%2)==0?0xFFD934:0xFFD000);
			
			if (column.headerText){
				var mat:Matrix = new Matrix();
				mat.translate(x+7,0);
				
				textField.text = column.headerText;
				_canvas.draw(textField,mat,null,null,null,false);
			}
			
		}
	}
}