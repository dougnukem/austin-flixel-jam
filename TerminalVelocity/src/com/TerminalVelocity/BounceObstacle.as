package com.TerminalVelocity 
{
	/**
	 * ...
	 * @author ...
	 */
	public class BounceObstacle extends Obstacle
	{
		[Embed(source = "../../data/obstacle.png")] private var Sprite:Class;
		
		public function BounceObstacle(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
			
			loadGraphic(Sprite);
			
		}
		
		override protected function affectPlayer(player:Player):void
		{
			player.bounce();
		}
		
	}

}