package com.TerminalVelocity 
{
	import org.flixel.FlxCore;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class SpikesTile extends GameObject
	{
		[Embed(source = "../../data/Spikes.png")] private var Sprite:Class;
		
		public function SpikesTile(x:int, y:int,otherParams:Object=null) 
		{
			super(x, y,otherParams);
			loadGraphic(Sprite);
		}
		
		override public function collideY(core:FlxCore):Boolean
		{
			// Kill the player when he collides with this.
			// TODO: Only kill when you collide from the top?!?! Not sure how to check for that.
			var player:Player = core as Player;
			var isHit:Boolean = super.collideY(core);
			if(isHit)
			{	
				hurt(0);
				player.die();
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