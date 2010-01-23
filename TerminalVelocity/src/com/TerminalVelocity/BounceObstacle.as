package com.TerminalVelocity 
{
	/**
	 * ...
	 * @author ...
	 */
	public class BounceObstacle extends Obstacle
	{
		public function BounceObstacle(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
		}
		
		override protected function affectPlayer(player:Player):void
		{
			player.bounce();
		}
		
	}

}