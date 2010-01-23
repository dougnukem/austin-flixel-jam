package com.TerminalVelocity 
{
	/**
	 * ...
	 * @author ...
	 */
	public class BounceObstacle extends Obstacle
	{
		override protected function affectPlayer(player:Player):void
		{
			player.bounce();
		}
		
	}

}