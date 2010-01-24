package com.TerminalVelocity 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author ...
	 */
	public class BounceObstacle extends Obstacle
	{
		[Embed(source = "../../data/obstacle.png")] private var Sprite:Class;
		[Embed(source = "../../data/Audio/Effects/bouncelight.mp3")] private var BounceSound:Class;		
		
		public function BounceObstacle(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
			
			loadGraphic(Sprite);
			
		}
		
		override protected function affectPlayer(player:Player):void
		{
			FlxG.play(BounceSound);
			player.bounce();
		}
		
	}

}