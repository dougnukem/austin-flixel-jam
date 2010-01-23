package com.TerminalVelocity 
{
	import com.TerminalVelocity.Obstacle;
	
	/**
	 * ...
	 * @author ...
	 */
	public class SlowObstacle extends Obstacle
	{
		[Embed(source = "../../data/2.png")] private var Sprite:Class;
		
		public function SlowObstacle(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
			
			loadGraphic(Sprite);
		}
		
		override protected function affectPlayer(player:Player):void
		{
			player.velocity.y /= 2;
		}
		
		override public function hurt(Damage:Number):void
		{
			super.hurt(Damage);
			
			//die();
		}
	}

}