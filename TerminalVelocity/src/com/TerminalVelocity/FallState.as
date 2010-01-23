﻿package com.TerminalVelocity
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
		
		public static const LEVEL_HEIGHT:int = 10000;
		
		public function FallState() 
		{
			initPlayer();
			initObstacles();
			initBackground();
			initGameTimer();
			//Camera follow the player
			//FlxG.follow(player);
			//FlxG.followAdjust(0,0.5);
		}
		
		private function initPlayer():void
		{
			player = new Player(150, 20);
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
			
		}
		override public function update():void
		{
			super.update();
			
			if ( obstacles && player )
			{
				FlxG.collideArrayY(obstacles, player);
			}
		}
	}

}