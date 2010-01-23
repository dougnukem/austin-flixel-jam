package com.TerminalVelocity
{
	import org.flixel.FlxState;
	
	/**
	 * ...
	 * @author ...
	 */
	public class FallState extends FlxState
	{
		private var player:Player;
		
		public function FallState() 
		{
			initPlayer();
		}
		
		private function initPlayer():void
		{
			player = new Player(150, 20);
			add(player);
		}
	}

}