package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_Shay_004
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: SlowObstacle, x: 0, y: 20, otherParams: {} },
					{ objClass: SpikesTile, x: 125, y: 15, otherParams: {} },
					{ objClass: BounceObstacle, x: 120, y: 80, otherParams: {} },
					{ objClass: BounceObstacle, x: 130, y: 90, otherParams: { } },
					{ objClass: BounceCreature, x: 20, y: 540, otherParams: { } },
					{ objClass: BounceCreature, x: 130, y: 940, otherParams: {} },
				];
				
			return ret;
		}
	}
}
