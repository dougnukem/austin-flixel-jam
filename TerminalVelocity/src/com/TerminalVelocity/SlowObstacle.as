package com.TerminalVelocity 
{
	import com.TerminalVelocity.Obstacle;
	
	/**
	 * ...
	 * @author ...
	 */
	public class SlowObstacle extends Obstacle
	{
		
		override protected function affectPlayer(player:Player):void
		{
			player.velocity.y /= 2;
		}
	}

}