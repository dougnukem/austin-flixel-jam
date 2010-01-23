package com.TerminalVelocity 
{
	/**
	 * ...
	 * @author ...
	 */
	public class BounceCreature extends Creature
	{
		[Embed(source = "../../data/creaturehotairballoon.png")] private var Sprite:Class;
		
		public function BounceCreature(_x:int,_y:int,_otherParams:Object=null)
		{
			super(_x, _y, _otherParams);
			
			loadGraphic(Sprite);
			
		}
		
		override protected function affectPlayer(player:Player):void
		{
			player.bounce();
		}
		
		override public function update():void
		{
			super.update();
			
			y -= 1;
		}
		
	}

}