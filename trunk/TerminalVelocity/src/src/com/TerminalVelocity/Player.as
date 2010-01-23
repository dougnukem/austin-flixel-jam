package com.TerminalVelocity 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = "../../data/player.png")] private var PlayerSprite:Class;
		
		public function Player(x:int, y:int) 
		{
			super(x, y);
			loadGraphic(PlayerSprite, true);
		}
		
	}

}