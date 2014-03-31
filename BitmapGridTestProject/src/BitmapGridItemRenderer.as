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
	
	public final class BitmapGridItemRenderer implements IBitmapGridRenderer
	{
		private var _canvas:BitmapData;
		private const rect:Rectangle = new Rectangle(0,0,100,100);
		
		private const line:Rectangle = new Rectangle(0,0,1,100);
		
		public var fontSize:uint = 13;
		private const textField:TextField = new TextField;
		
		public var showPrices:Boolean = false;
		
		public function BitmapGridItemRenderer()
		{
			
			var format:TextFormat = new TextFormat("Verdana");
			format.size = fontSize;
			
			textField.defaultTextFormat = format;
			textField.antiAliasType = AntiAliasType.ADVANCED;
			textField.selectable = false;
			textField.multiline=false;
			textField.wordWrap=false;
		}

		public function get height():Number
		{
			return rect.height;
		}

		public function set height(value:Number):void
		{
			rect.height = value;
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
			rect.x=x;
			rect.y=y;
			
			rect.width = column.width;
			
			var color:uint = 0xffffff;
			
			if (columnIndex%2==0){
				color = 0xF1F1F1;
			}
			else{
				color = 0xffffff;
			}
			
			_canvas.fillRect(rect,color);
			
				var mat:Matrix = new Matrix();
				mat.translate(x+7,y);
				
				textField.text = "test";
				_canvas.draw(textField,mat,null,null,null,false);
			
		}
	}
}