package com.TerminalVelocity 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author ...
	 */
	public class DeathState extends FlxState
	{
		
		public function DeathState() 
		{			
			var txt:FlxText
			txt = new FlxText(0, (FlxG.width / 2) - 80, FlxG.width, "You Die!")
			txt.setFormat(null, 16, 0xFFFFFFFF, "center")
			this.add(txt);
			
			//TODO: Try again button.
			
		}
		
	}

}