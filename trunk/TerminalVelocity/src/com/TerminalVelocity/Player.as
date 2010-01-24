﻿package com.TerminalVelocity 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = "../../data/player.png")] private var PlayerSprite:Class;
		[Embed(source = "../../data/Audio/Effects/deathbounce.mp3")] private var DeathSound:Class;
		[Embed(source = "../../data/Audio/Effects/scream.mp3")] private var DeathScream:Class;
		[Embed(source="../../data/gibs.png")] private var ImgGibs:Class;
		
		private var gibs:FlxEmitter;
		
		private var isAlive:Boolean = true;
		
		public function Player(x:int, y:int) 
		{
			super(x, y);
			loadGraphic(PlayerSprite, true, true, 18, 32);
			
			//Set initial gravity
			//this.acceleration.y = 60;
			this.maxVelocity.y = 100;
			this.velocity.y = 60;
			this.acceleration.y = 65;
			
			//Gibs emitted upon death
			this.gibs = new FlxEmitter(0,0,-1.5);
			this.gibs.setXVelocity(-150,150);
			this.gibs.setYVelocity(-200,0);
			this.gibs.setRotation(-720,-720);
			this.gibs.createSprites(ImgGibs,20);
			FlxG.state.add(this.gibs);
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
			if (isAlive) {
				if (FlxG.keys.LEFT && this.x > 0)
				{
					this.facing = FlxSprite.LEFT;
					this.velocity.x = -200;
				}
				else if (FlxG.keys.RIGHT && this.x < (FlxG.width-18))
				{
					this.facing = FlxSprite.RIGHT;
					this.velocity.x = 200;
				}
				else
				{
					this.velocity.x = 0;
				}
			} else {
				this.velocity.x = 0;
				this.velocity.y = 0;
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
			FlxG.music.stop();
			this.isAlive = false;
			var deathScream:FlxSound = FlxG.play(DeathScream);
			//Show some blood when you die
			this.gibs.x = x + width/2;
			this.gibs.y = y + height/2;
			this.gibs.restart();
			//var deathSnd:FlxSound = FlxG.play(DeathSound);
			FlxG.fade(0xff131c1b,2,
				function onDeathFade():void 
				{
					FlxG.switchState(DeathState);
				});
			
		}
		
		public function bounce():void
		{
			velocity.y = -100;
			//FlxG.play(SndJump);
			//flicker();
		}
		
		override public function hurt(Damage:Number):void
		{
			//super.hurt(Damage);
			
			//flicker();
		}
		
		
		
		
	}

}