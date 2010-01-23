package com.TerminalVelocity 
{
	import adobe.utils.CustomActions;
	import org.flixel.*;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Obstacle extends GameObject
	{
		[Embed(source = "../../data/obstacle.png")] private var Sprite:Class;
		[Embed(source = "../../data/1.png")] private var GibSprite:Class;
		private var gibs:FlxEmitter;
		
		public function Obstacle(x:int, y:int,otherParams:Object=null) 
		{
			super(x, y,otherParams);
			loadGraphic(Sprite);
			fixed = true;
			//TODO: can't figure out how to do this emitter without a runtime error.
			//gibs = new FlxEmitter(this.x, this.y, 0);
			//gibs.setXVelocity(-150,150);
			//gibs.setYVelocity(-200,0);
			//gibs.setRotation(-720,-720);
			//gibs.createSprites(GibSprite, 5);
			//FlxG.state.add(gibs);
		}
		
		override public function collideY(core:FlxCore):Boolean
		{
			//Don't collide with player if they're bellow;
			if (core.y > this.y)
				return false;
			
			var isHit:Boolean = super.collideY(core);
			if(isHit)
			{	
				hurt(0);
				
				var player:Player = core as Player;
				affectPlayer(player);
			}
			
			return isHit;
		}
		
		protected function affectPlayer(player:Player):void {
			player.hurt(0);
		}
		
		override public function hurt(Damage:Number):void
		{
			super.hurt(Damage);
			
			flicker();
			dying = true;
			dead = true;
			//gibs.x = this.x + this.width/2;
			//gibs.y = this.y + this.height / 2;
			//gibs.restart();
		}
	}

}