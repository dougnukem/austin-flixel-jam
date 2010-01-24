package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_Shay_005
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: SpikesTile, x: 40, y: 50, otherParams: {} },
					{ objClass: SpikesTile, x: 80, y: 50, otherParams: { } },
					{ objClass: SpikesTile, x: 120, y: 50, otherParams: {} },
					{ objClass: SpikesTile, x: 160, y: 50, otherParams: { } },
					{ objClass: SpikesTile, x: 200, y: 50, otherParams: { } }
				];
				
			return ret;
		}
	}
}
