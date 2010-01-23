package com.TerminalVelocity
{
	public class LevelChunk
	{
		public static const STANDARD_LEVEL_CHUNK_HEIGHT:Number = 600;
		
		public function LevelChunk()
		{
			// This is where the objects should be placed for actual ones...
			
		}
		
		public function getHeight():Number
		{
			return STANDARD_LEVEL_CHUNK_HEIGHT;
		}
		
		public function getLevelObjects():Array
		{
			trace("This is an astract class, this function should never be called!!!");
			throw Error;
		}
	}
}