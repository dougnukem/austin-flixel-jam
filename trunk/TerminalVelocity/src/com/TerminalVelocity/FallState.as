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
		private var meter:AltitudeMeter;
		//We'll have collection arrays of enemies, platforms, branches, etc for memory efficiency.
		//The spawner will pull from these collections.
		private var obstacles:Array = new Array();
		
		[Embed(source="../../data/backgroundimgs/TestBackground.png")] private var ImgClouds:Class;
		private var backgroundSprite:FlxSprite;
		
		[Embed(source="../../data/Audio/TerminalVelocity-FallingTheme.mp3")] private var SndMusic:Class;
		
		public static const LEVEL_HEIGHT:int = 50000000;
		public static const LEVEL_HEIGHT_CHUNK_TO_LOAD:int = 500;
		
		protected var lg:LevelGenerator;
		protected var loadedObstaclesUpToY:Number;		// We've streamed in all obstacles in between 0 and this y coordinate.
		
		public function FallState() 
		{
			initBackground();
			initPlayer();
			initObstacles();
			initMusic();
			initAltitudeMeter();
			
			initGameTimer();
			//Camera follow the player
			//FlxG.follow(player);
			//FlxG.followAdjust(0,0.5);
		}
		
		private function initPlayer():void
		{
			player = new Player(FlxG.width/4, 16);
			FlxG.follow(player, 5);
			FlxG.followBounds(0, 0, FlxG.width, LEVEL_HEIGHT + LevelGenerator.LEVEL_TOP_Y_OFFSET);
			//FlxG.followMax.x = 320; 
			add(player);
		}
		
		private function initObstacles():void
		{
			// Generate all theh objects for the level
			
			//lg = new LevelGenerator( LEVEL_HEIGHT );
			lg = new LevelGenerator();
			
			// TODO: This should allow us to 
			var levelObjects:Array = lg.getLevelObjectsForRange( LevelGenerator.LEVEL_TOP_Y_OFFSET, LevelGenerator.LEVEL_TOP_Y_OFFSET+LEVEL_HEIGHT_CHUNK_TO_LOAD);
			loadedObstaclesUpToY = LevelGenerator.LEVEL_TOP_Y_OFFSET+LEVEL_HEIGHT_CHUNK_TO_LOAD;
			obstacles = new Array();
			
			addGameObjects(levelObjects);
			
		}
		
		private function addGameObjects(_newGameObjects:Array):void
		{
			for ( var i:uint = 0; i < _newGameObjects.length; i++)
			{
				var ob:GameObject = _newGameObjects[i];
				
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
		
		private function initAltitudeMeter():void
		{
			meter = new AltitudeMeter(this, LEVEL_HEIGHT, player);
			add(meter);
		}
		
		private function initBackground():void
		{
			backgroundSprite = new FlxSprite(0, 0, ImgClouds);
			//backgroundSprite.scale.x = 2.0;
			add(backgroundSprite);
		}
		
		private function initMusic():void 
		{
			FlxG.playMusic(SndMusic);
		}
		
		override public function update():void
		{
			super.update();
			
			if ( obstacles && player )
			{
				FlxG.collideArray(obstacles, player);
			}
			
			// Stream in a new set of obstacles.
			if ( player.y + LEVEL_HEIGHT_CHUNK_TO_LOAD > loadedObstaclesUpToY )
			{
				FlxG.log("Checkpoint 9100: " + player.y + " ... " + loadedObstaclesUpToY );
				addGameObjects( lg.getLevelObjectsForRange( loadedObstaclesUpToY, loadedObstaclesUpToY + LEVEL_HEIGHT_CHUNK_TO_LOAD ) );
				loadedObstaclesUpToY += LEVEL_HEIGHT_CHUNK_TO_LOAD;
			}
			
		}
	}

}