package com.TerminalVelocity 
{
	import com.TerminalVelocity.Obstacle;
	
	/**
	 * ...
	 * @author ...
	 */
	public class SlowObstacle extends Obstacle
	{
		public function SlowObstacle(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
		}
		
		override protected function affectPlayer(player:Player):void
		{
			this.die();
			player.velocity.y /= 2;
		}
	}

}