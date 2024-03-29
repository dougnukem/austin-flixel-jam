package  com.TerminalVelocity
{
	import org.flixel.FlxG;

	import com.TerminalVelocity.levelChunks.*;
	
	public class LevelGenerator
	{
		public static const LEVEL_TOP_Y_OFFSET:int = 350;
		
		//protected var levelObjects:Array;
		protected var availableLevelChunks:Array;
		//protected var levelHeight:int;
		
		//public function LevelGenerator(_height:int)
		public function LevelGenerator()
		{
			//levelHeight = _height;
			
			
			// IF YOU WANT TO ADD/REMOVE LEVEL CHUNKS TO BE USED BY THE GENERATOR,
			//	do it by modifying this array!!! Simply put the name of your class (e.g. LevelChunk_Shay_001)
			//	in the array and it will be used!
			availableLevelChunks = [ LevelChunk_Shay_001, LevelChunk_Shay_002, LevelChunk_Shay_003, LevelChunk_Shay_004, LevelChunk_Shay_005, LevelChunk_Shay_006, LevelChunk_Shay_RANDOM, LevelChunk_Shay_RANDOM ];
			
			
		}
		
		public function getLevelObjectsForRange(_topY:Number,_bottomY:Number):Array
		{
			// TODO: Filter out the objects that aren't in the range asked for!
			var levelObjects:Array = new Array();
			
			var runningHeight:Number = _topY;
			
			// We'll use this associative array to track how many times we've used each level chunk.
			var numChunksAdded:int = 0;
			
			//while ( runningHeight < levelHeight )
			while ( runningHeight < _bottomY )
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
