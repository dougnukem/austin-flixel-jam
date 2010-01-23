package  com.TerminalVelocity
{
	import org.flixel.FlxG;

	import com.TerminalVelocity.levelChunks.*;
	
	public class LevelGenerator
	{
		
		public static var globalGenerator:LevelGenerator;
		
		protected var levelObjects:Array;
		protected var availableLevelChunks:Array;
		protected var levelHeight:int;
		
		public function LevelGenerator(_height:int)
		{
			if ( globalGenerator != null )
			{
				trace("There can be only one LevelGenerator!!!");
				throw Error;
			}
			
			globalGenerator = this;
			
			levelHeight = _height;
			
			
			// IF YOU WANT TO ADD/REMOVE LEVEL CHUNKS TO BE USED BY THE GENERATOR,
			//	do it by modifying this array!!! Simply put the name of your class (e.g. LevelChunk_Shay_001)
			//	in the array and it will be used!
			availableLevelChunks = [ LevelChunk_Shay_001, LevelChunk_Shay_002 ];
			
			
			
			levelObjects = new Array();
			
			preGenerateLevel();
			
		}
		
		protected function preGenerateLevel():void
		{
			// TODO: Fill in levelObjects with generated objects and their x,y values. Sorted by y value, highest first.
			
			// TODO: Open all of the available chunks, and pull objects out of them into the levelObjects array, using offsets correctly.
			
			// HACK: Just get each of the available chunks in order and stick their objects into the objects array.
			var runningHeight:Number = 0;
			
			
			/*
			for ( var i:uint = 0; i < availableLevelChunks.length; i++ )
			{
				var chunkClass:Class = availableLevelChunks[i];
				var chunk:LevelChunk = new chunkClass();
				
				appendChunkObjectsToArrayAtOffset( levelObjects, chunk, runningHeight );
				
				runningHeight += chunk.getHeight();
			}
			
			*/
			
			// We'll use this associative array to track how many times we've used each level chunk.
			var numChunksAdded:int = 0;
			
			while ( runningHeight < levelHeight )
			{
				// Scramble the array if we're at the start (or have come back around to the start).
				if ( ( numChunksAdded % availableLevelChunks.length ) == 0 )
				{
					scrambleArray(availableLevelChunks);
				}
				
				// Append a chunk...!
				var chunkClass:Class = availableLevelChunks[numChunksAdded];
				var chunk:LevelChunk = new chunkClass();
				appendChunkObjectsToArrayAtOffset( levelObjects, chunk, runningHeight );
				
				// Iterate things!
				numChunksAdded = ( ( numChunksAdded + 1 ) % availableLevelChunks.length );
				runningHeight += chunk.getHeight();
				
			}
			
			
			// Always append the ground at the bottom!
			appendChunkObjectsToArrayAtOffset( levelObjects, new LevelChunk_FLOOR(), runningHeight );
			
		}
		
		public function getLevelObjectsForRange(_topY:Number,_bottomY:Number):Array
		{
			// TODO: Filter out the objects that aren't in the range asked for!
			
			return levelObjects;
		}
		
		protected static function appendChunkObjectsToArrayAtOffset( aryToAppendTo:Array, chunk:LevelChunk, yOffset:Number ):void
		{
			var chunkLevelObjs:Array = chunk.getLevelObjects();
			for ( var i:uint = 0; i < chunkLevelObjs.length; i++ )
			{
				var levelObjData:Object = chunkLevelObjs[i];
				
				var objClass:Class = levelObjData.objClass;
				var obj:GameObject = new objClass(	levelObjData.x,
													levelObjData.y + yOffset,
													levelObjData.otherParams
												);
				
				aryToAppendTo.push( obj );
			}
			
		}
		
		protected static function scrambleArray(_ary:Array):void
		{
			
			for ( var i:uint = 0; i < _ary.length; i++)
			{
			  var tmp:* =_ary[i];
			  var randomNum:int = Math.random() * (_ary.length);
			  _ary[i]=_ary[randomNum];
			  _ary[randomNum]=tmp;
		   }

		}
		
	}
	
}