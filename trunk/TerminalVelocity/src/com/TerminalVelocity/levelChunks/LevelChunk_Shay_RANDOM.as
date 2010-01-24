package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	import org.flixel.FlxG;
	
	public class LevelChunk_Shay_RANDOM
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			/*
			var ret:Array = 
				[
					{ objClass: BounceCreature, x: 20, y: 50, otherParams: {} },
					{ objClass: BounceCreature, x: 80, y: 110, otherParams: {} },
					{ objClass: BounceCreature, x: 140, y: 170, otherParams: { } }
				];
				*/
			
			var ret:Array = new Array();
			
			var numObstacles:uint = 5;
			
			var obstClasses:Array = [ BounceCreature, BounceObstacle, SlowObstacle, SpikesTile, BounceObstacle, SlowObstacle, SpikesTile ];
			
			for ( var i:uint = 0; i < numObstacles; i++ )
			{
				var theClass:Class = obstClasses[ int( Math.random() * obstClasses.length ) ];
				
				var theX:int = int( Math.random() * 240 );
				theX = theX - ( theX % 20 );
				
				var theY:int = int( Math.random() * LevelChunk.STANDARD_LEVEL_CHUNK_HEIGHT );
				theY = theY - ( theY % 20 );
				
				ret.push( { objClass: theClass, x: theX, y: theY, otherParams: { } } );
				
			}
			
			return ret;
		}
	}
}
