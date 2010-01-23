package com.TerminalVelocity
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author ...
	 */
	public class FallState extends FlxState
	{
		private var player:Player;
		private var timer:GameTimer;
		//We'll have collection arrays of enemies, platforms, branches, etc for memory efficiency.
		//The spawner will pull from these collections.
		private var obstacles:Array = new Array();
		
		[Embed(source="../../data/backgroundimgs/TestBackground.png")] private var ImgClouds:Class;
		private var backgroundSprite:FlxSprite;
		
		public static const LEVEL_HEIGHT:int = 5000;
		
		public function FallState() 
		{
			initBackground();
			initPlayer();
			initObstacles();
			
			initGameTimer();
			//Camera follow the player
			//FlxG.follow(player);
			//FlxG.followAdjust(0,0.5);
		}
		
		private function initPlayer():void
		{
			player = new Player(FlxG.width/4, 32);
			FlxG.follow(player);
			add(player);
		}
		
		private function initObstacles():void
		{
			// Generate all theh objects for the level
			var lg:LevelGenerator = new LevelGenerator( LEVEL_HEIGHT );
			
			// TODO: This should allow us to 
			var levelObjects:Array = lg.getLevelObjectsForRange(0, LEVEL_HEIGHT);
			
			obstacles = new Array();
			
			for ( var i:uint = 0; i < levelObjects.length; i++)
			{
				var ob:GameObject = levelObjects[i];
				
				if ( ob )
				{
					obstacles.push( ob );
				}
				
				add(ob);
			}
			
		}
		
		private function initGameTimer():void
		{
			timer = new GameTimer();
			add(timer);
		}
		
		private function initBackground():void
		{
			backgroundSprite = new FlxSprite(0, 0, ImgClouds);
			//backgroundSprite.scale.x = 2.0;
			add(backgroundSprite);
		}
		
		override public function update():void
		{
			super.update();
			
			if ( obstacles && player )
			{
				FlxG.collideArray(obstacles, player);
			}
			
		}
	}

}