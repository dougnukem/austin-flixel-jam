package com.TerminalVelocity 
{
	import adobe.utils.CustomActions;
	import org.flixel.*;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Creature extends Obstacle
	{
		public function Creature(x:int, y:int,otherParams:Object=null) 
		{
			super(x, y,otherParams);
			fixed = false;
			
		}
		
	}

}