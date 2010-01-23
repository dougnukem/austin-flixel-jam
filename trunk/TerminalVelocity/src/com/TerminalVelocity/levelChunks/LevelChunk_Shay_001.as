package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_Shay_001 
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: Obstacle, x: 110, y: 120, otherParams: {} },
					{ objClass: Obstacle, x: 150, y: 130, otherParams: {} },
					{ objClass: Obstacle, x: 200, y: 140, otherParams: {} }
				];
				
			return ret;
		}
	}
}
