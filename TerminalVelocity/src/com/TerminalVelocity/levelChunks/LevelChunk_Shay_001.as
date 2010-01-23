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
					{ objClass: BounceObstacle, x: 10, y: 20, otherParams: {} },
					{ objClass: SlowObstacle, x: 200, y: 60, otherParams: {} },
					{ objClass: BounceObstacle, x: 90, y: 90, otherParams: { } },
					{ objClass: SpikesTile, x: 120, y: 120, otherParams: { } },
					{ objClass: SlowObstacle, x: 30, y: 150, otherParams: {} }
				];
				
			return ret;
		}
	}
}