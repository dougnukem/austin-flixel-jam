package com.TerminalVelocity.levelChunks
{
	import com.TerminalVelocity.*;
	
	public class LevelChunk_Shay_006
		extends LevelChunk
	{
		public override function getLevelObjects():Array
		{
			var ret:Array = 
				[
					{ objClass: BounceCreature, x: 20, y: 50, otherParams: {} },
					{ objClass: BounceCreature, x: 80, y: 110, otherParams: {} },
					{ objClass: BounceCreature, x: 140, y: 170, otherParams: { } }
				];
				
			return ret;
		}
	}
}
