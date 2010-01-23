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
		//We'll have collection arrays of enemies, platforms, branches, etc for memory efficiency.
		//The spawner will pull from these collections.
		private var obstacles:Array;
		
		public function FallState() 
		{
			initPlayer();
			initObstacles();
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
			obstacles = new Array();
			obstacles.push(new Obstacle(150, 100));
			
			//Add obstacles to game loop.
			for each(var ob:Obstacle in obstacles)
			{
				add(ob);
			}
		}
	}

}