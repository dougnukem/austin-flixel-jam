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
					{ objClass: TestGameObject, x: 400, y: 20, otherParams: {} },
					{ objClass: TestGameObject, x: 380, y: 30, otherParams: {} },
					{ objClass: TestGameObject, x: 360, y: 40, otherParams: {} }
				];
				
			return ret;
		}
	}
}
