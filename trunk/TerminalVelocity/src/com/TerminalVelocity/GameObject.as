package com.TerminalVelocity
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	public class GameObject extends FlxSprite
	{
		public function GameObject(_x:int,_y:int,otherParams:Object=null)
		{
			super(_x, _y);
		}
		
		public function die():void
		{
			visible = false;
			exists = false;
		}
	}
}