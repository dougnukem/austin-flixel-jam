package  com.TerminalVelocity
{
	import org.flixel.FlxG;

	import com.TerminalVelocity.levelChunks.*;
	
	public class LevelGenerator
	{
		
		public static var globalGenerator:LevelGenerator;
		
		protected var levelObjects:Array;
		protected var availableLevelChunks:Array;
		
		public function LevelGenerator(_height:int)
		{
			if ( globalGenerator != null )
			{
				trace("There can be only one LevelGenerator!!!");
				throw Error;
			}
			
			globalGenerator = this;
			
			
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
			
			for ( var i:uint = 0; i < availableLevelChunks.length; i++ )
			{
				var chunkClass:Class = availableLevelChunks[i];
				var chunk:LevelChunk = new chunkClass();
				
				appendChunkObjectsToArrayAtOffset( levelObjects, chunk, runningHeight );
				
				for ( var j:uint = 0; j < levelObjects.length; j++ )
				{
					var ob:GameObject = levelObjects[j];
				}
				
				runningHeight += chunk.getHeight();
			}
			
		}
		
		public function getLevelObjectsForRange(_topY:Number,_bottomY:Number):Array
		{
			// TODO: Filter out the objects that aren't in the range asked for!
			for ( var i:uint = 0; i < levelObjects.length; i++ )
			{
				var ob:GameObject = levelObjects[i];
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
		
	}
	
}