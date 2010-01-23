package com.TerminalVelocity
{
	import org.flixel.*;
	
	public class AltitudeMeter extends FlxSprite
	{
		[Embed(source = "../../data/HUD_Elevation-Bar.png")] private var meterImage:Class;
		[Embed(source = "../../data/HUD_Arrow.png")] private var arrowImage:Class;
		
		private var _meterSprite:FlxSprite;
		private var _arrowSprite:FlxSprite;
		
		
		
		public function AltitudeMeter(state:FlxState) 
		{
			super(FlxG.width - 20, 5);
			
			
			_meterSprite = new FlxSprite(FlxG.width - 20, 5,meterImage);
			_arrowSprite = new FlxSprite(FlxG.width - 10,10,arrowImage);
			
			state.add(_meterSprite);
			state.add(_arrowSprite);
			
			
		}
		
		
		override public function update():void
		{
			super.update();
		}
		

	}
}