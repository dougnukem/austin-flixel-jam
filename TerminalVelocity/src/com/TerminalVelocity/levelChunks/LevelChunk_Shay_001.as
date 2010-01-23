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
					{ objClass: TestGameObject, x: 10, y: 20, otherParams: {} },
					{ objClass: TestGameObject, x: 10, y: 20, otherParams: {} },
					{ objClass: TestGameObject, x: 10, y: 20, otherParams: {} }
				];
				
			return ret;
		}
	}
}
