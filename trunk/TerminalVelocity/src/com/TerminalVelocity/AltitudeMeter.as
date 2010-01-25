package com.TerminalVelocity
{
	import flash.geom.Point;
	
	import org.flixel.*;
	
	public class AltitudeMeter extends FlxSprite
	{
		[Embed(source = "../../data/HUD_Elevation-Bar.png")] private var meterImage:Class;
		[Embed(source = "../../data/HUD_Arrow.png")] private var arrowImage:Class;
		
		private var _meterSprite:FlxSprite;
		private var _arrowSprite:FlxSprite;
		private var _player:Player;
		private var _interval:Number;
		
		
		
		public function AltitudeMeter(state:FlxState, levelHeight:int, player:Player) 
		{
			_meterSprite = new FlxSprite(FlxG.width - 20, 5,meterImage);
			_arrowSprite = new FlxSprite(FlxG.width - 10, 0,arrowImage);
			
			state.add(_meterSprite);
			state.add(_arrowSprite);
			
			_meterSprite.scrollFactor.x = 0;
			_meterSprite.scrollFactor.y = 0;
			_meterSprite.scale = new Point(0.5, 0.5);
			//reposition due to scale
			_meterSprite.y -= _meterSprite.height/4;
			
			_arrowSprite.scrollFactor.x = 0;
			_arrowSprite.scrollFactor.y = 0;
			_arrowSprite.scale = new Point(0.5, 0.5);
			
			
			
			_interval = _meterSprite.height / levelHeight;
			_player = player;
		}
		
		
		override public function update():void
		{
			super.update();
			
			if (_interval * _player.y > 5)
				_arrowSprite.y =  (_interval * _player.y) - 5;
		}
		

	}
}