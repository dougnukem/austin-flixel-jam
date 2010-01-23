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
			trace("Checkpoint 1800: " + dying + " ... " + flickering() );
			if (dying && !flickering())
				die();
		}
		
		public function die():void
		{
			FlxG.log("Checkpoint 1900: " + this );
			visible = false;
			exists = false;
		}
	}
}