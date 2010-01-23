package com.TerminalVelocity
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	public class GameObject extends FlxSprite
	{
		protected var dying:Boolean;
		
		public function GameObject(_x:int,_y:int,otherParams:Object=null)
		{
			super(_x, _y);
			
			dying = false;
		}
		
		override public function update():void
		{
			super.update();
			
			if (dying && !flickering())
				die();
		}
		
		public function die():void
		{
			visible = false;
			exists = false;
		}
	}
}