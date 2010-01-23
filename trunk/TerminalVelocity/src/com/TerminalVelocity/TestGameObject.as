package com.TerminalVelocity
{
	public class TestGameObject extends GameObject
	{
		[Embed(source = "../../data/HUD_Arrow.png")] private var TestObjSprite:Class;
		
		public function TestGameObject(_x:int,_y:int,otherParams:Object=null)
		{
			super(_x, _y);
			
			loadGraphic(TestObjSprite, true);
			
		}
		
	}
}