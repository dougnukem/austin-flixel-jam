package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_FLOOR
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: SpikesTile, x: 0, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 40, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 80, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 120, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 160, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 200, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 240, y: 0, otherParams: {} },
					{ objClass: SpikesTile, x: 280, y: 0, otherParams: {} }
				];
				
			return ret;
		}
	}
}
