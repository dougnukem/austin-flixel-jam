package com.TerminalVelocity 
{
	import flash.geom.Point;
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = "../../data/player.png")] private var PlayerSprite:Class;
		
		private var _left:Boolean; //Denotes whether player sprite should be reversed or not.
		
		public function Player(x:int, y:int) 
		{
			super(x, y);
			loadGraphic(PlayerSprite, true);
			
			//Set initial gravity
			this.acceleration.y = 60;
			_left = false;
		}
		
		override public function update():void
		{
			handleInput();
			super.update();
		}
		
		private function handleInput():void
		{
			
			
			if (FlxG.keys.LEFT)
			{
				this.velocity.x = -200;
				_left = true;
			}
			else if (FlxG.keys.RIGHT)
			{
				this.velocity.x = 200;
			}
			else
			{
				this.velocity.x = 0;
			}
		}
	}

}