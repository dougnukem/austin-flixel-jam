package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_Shay_003
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: SpikesTile, x: 0, y: 50, otherParams: {} },
					{ objClass: SpikesTile, x: 40, y: 50, otherParams: {} },
					{ objClass: SpikesTile, x: 80, y: 50, otherParams: { } },
					{ objClass: SpikesTile, x: 120, y: 50, otherParams: {} }
				];
				
			return ret;
		}
	}
}
