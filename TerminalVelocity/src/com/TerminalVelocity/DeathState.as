package com.TerminalVelocity 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author ...
	 */
	public class DeathState extends FlxState
	{
		[Embed(source = "../../org/flixel/data/cursor.png")] private var cursorImg:Class;
		
		private var playButton:FlxButton
		public function DeathState() 
		{	
			FlxG.showCursor(cursorImg);
			
			var txt:FlxText
			txt = new FlxText(0, (FlxG.width / 2) - 80, FlxG.width, "You Die!")
			txt.setFormat(null, 16, 0xFFFFFFFF, "center")
			this.add(txt);
			
			//Try again button.
			playButton = new FlxButton(75, 200, onTryAgain);
			playButton.loadGraphic((new FlxSprite()).createGraphic(104,15,0xff3a5c39),(new FlxSprite()).createGraphic(104,15,0xff729954));
			var t1:FlxText = new FlxText(15,1,100,"Try Again?");
			t1.color = 0x729954;
			var t2:FlxText = new FlxText(t1.x,t1.y,t1.width,t1.text);
			t2.color = 0xd8eba2;
			playButton.loadText(t1,t2);
			add(playButton);
		}
		private function onTryAgain():void {
			FlxG.switchState(FallState);
		}
	}

}