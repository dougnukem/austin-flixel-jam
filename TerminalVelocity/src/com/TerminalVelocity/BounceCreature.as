package com.TerminalVelocity 
{
	/**
	 * ...
	 * @author ...
	 */
	public class BounceCreature extends Creature
	{
		import org.flixel.*;
		
		[Embed(source = "../../data/creaturehotairballoon.png")] private var Sprite:Class;
		[Embed(source = "../../data/Audio/Effects/bouncelight.mp3")] private var BounceSound:Class;
		
		public function BounceCreature(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
			
			loadGraphic(Sprite);
			
		}
		
		override protected function affectPlayer(player:Player):void
		{
			FlxG.play(BounceSound);
			player.bounce();
		}
		
		override public function update():void
		{
			super.update();
			
			y -= 1;
		}
		
	}

}