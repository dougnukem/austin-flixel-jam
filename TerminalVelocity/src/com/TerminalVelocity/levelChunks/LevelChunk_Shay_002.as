package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_Shay_002
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: SlowObstacle, x: 200, y: 20, otherParams: {} },
					{ objClass: SpikesTile, x: 10, y: 30, otherParams: { } },
					{ objClass: SpikesTile, x: 100, y: 70, otherParams: {} },
					{ objClass: SlowObstacle, x: 160, y: 160, otherParams: {} }
				];
				
			return ret;
		}
	}
}
