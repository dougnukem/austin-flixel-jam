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
		//We'll have collection arrays of enemies, platforms, branches, etc for memory efficiency.
		//The spawner will pull from these collections.
		private var obstacles:Array = new Array();
		
		public static const LEVEL_HEIGHT:int = 10000;
		
		public function FallState() 
		{
			initPlayer();
			initObstacles();
			initBackground();
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
			var levelObjects:Array = lg.getLevelObjectsForRange(0, 100);
			
			
			for ( var i:uint = 0; i < levelObjects.length; i++)
			{
				var ob:GameObject = levelObjects[i];
				obstacles.push( ob );
				
				add(ob);
			}
			
		}
		
		private function initBackground():void
		{
			
		}
		override public function update():void
		{
			super.update();
			
			FlxG.collideArrayY(obstacles, player);
		}
	}

}