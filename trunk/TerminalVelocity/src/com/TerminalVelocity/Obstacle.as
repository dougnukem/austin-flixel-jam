package com.TerminalVelocity 
{
	import org.flixel.FlxCore;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Obstacle extends GameObject
	{
		[Embed(source = "../../data/obstacle.png")] private var Sprite:Class;
		
		public function Obstacle(x:int, y:int,otherParams:Object=null) 
		{
			super(x, y,otherParams);
			loadGraphic(Sprite);
		}
		
		override public function collideY(core:FlxCore):Boolean
		{
			var player:Player = core as Player;
			var isHit:Boolean = super.collideY(core);
			if(isHit)
			{	
				hurt(0);
				player.bounce();
			}	
			return isHit;
		}
		
		override public function hurt(Damage:Number):void
		{
			super.hurt(Damage);
			
			flicker();
			
		}
	}

}