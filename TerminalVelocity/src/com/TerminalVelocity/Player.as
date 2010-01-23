﻿package com.TerminalVelocity 
{
	import flash.geom.Point;
	import org.flixel.*;
	import org.flixel.FlxG;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = "../../data/player.png")] private var PlayerSprite:Class;
		
		public function Player(x:int, y:int) 
		{
			super(x, y);
			loadGraphic(PlayerSprite, true, false, 18, 32);
			
			//Set initial gravity
			this.acceleration.y = 60;
		}
		
		override public function update():void
		{
			handleInput();
			super.update();
			
			//Death Check
			if (velocity.y == 6000)
				die();
		}
		
		private function handleInput():void
		{
			if (FlxG.keys.LEFT)
			{
				this.velocity.x = -200;
			}
			else if (FlxG.keys.RIGHT)
			{
				this.velocity.x = 200;
			}
			else
			{
				this.velocity.x = 0;
			}
		}
		
		//override public function collideY(core:FlxCore):Boolean
		//{
			//var isHit:Boolean = super.collideY(core);
			//FlxG.log("player collide: " );
			//if(isHit)
				//bounce();	
			//
			//return isHit;
		//}

		public function die():void
		{
			FlxG.switchState(DeathState);
		}
		
		public function bounce():void
		{
			velocity.y = -100;
			//FlxG.play(SndJump);
			flicker();
		}
		
		override public function hurt(Damage:Number):void
		{
			super.hurt(Damage);
			
			flicker();
		}
		
		
	}

}