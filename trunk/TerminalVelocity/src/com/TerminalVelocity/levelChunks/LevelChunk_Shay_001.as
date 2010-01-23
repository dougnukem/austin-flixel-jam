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
					{ objClass: BounceObstacle, x: 110, y: 20, otherParams: {} },
					{ objClass: SlowObstacle, x: 150, y: 30, otherParams: {} },
					{ objClass: BounceObstacle, x: 200, y: 140, otherParams: { } },
					{ objClass: SlowObstacle, x: 150, y: 130, otherParams: {} }
				];
				
			return ret;
		}
	}
}
