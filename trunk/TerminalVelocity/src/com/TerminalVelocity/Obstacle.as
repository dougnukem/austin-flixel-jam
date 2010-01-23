package com.TerminalVelocity 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Obstacle extends FlxSprite
	{
		[Embed(source = "../../data/obstacle.png")] private var Sprite:Class;
		
		public function Obstacle(x:int, y:int) 
		{
			super(x, y);
			loadGraphic(Sprite);
		}
		
		override public function hurt(Damage:Number):void
		{
			
		}
	}

}