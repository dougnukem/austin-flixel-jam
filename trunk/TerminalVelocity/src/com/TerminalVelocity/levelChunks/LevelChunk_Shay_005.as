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
					{ objClass: SpikesTile, x: 20, y: 50, otherParams: {} },
					{ objClass: SpikesTile, x: 60, y: 50, otherParams: { } },
					{ objClass: SpikesTile, x: 100, y: 50, otherParams: {} },
					{ objClass: SpikesTile, x: 140, y: 50, otherParams: { } }
				];
				
			return ret;
		}
	}
}
