package com.TerminalVelocity 
{
	import com.TerminalVelocity.Obstacle;
	
	/**
	 * ...
	 * @author ...
	 */
	public class SlowObstacle extends Obstacle
	{
		import org.flixel.*;
		
		[Embed(source = "../../data/2.png")] private var Sprite:Class;
		[Embed(source = "../../data/Audio/Effects/bouncelight.mp3")] private var BounceSound:Class;
		
		public function SlowObstacle(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
			
			loadGraphic(Sprite);
		}
		
		override protected function affectPlayer(player:Player):void
		{
			FlxG.play(BounceSound);
			player.velocity.y /= 2;
		}
		
		override public function hurt(Damage:Number):void
		{
			super.hurt(Damage);
			
			//die();
		}
	}

}