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
		[Embed(source = "../../data/Audio/Effects/motorev.mp3")] private var ButtonSound:Class;		
		
		private var playButton:FlxButton
		public function DeathState() 
		{	
			FlxG.showCursor(cursorImg);
			
			var txt:FlxText;
			var scoreText:FlxText;
			
			txt = new FlxText(0, (FlxG.height / 2) - 80, FlxG.width, "You Die!")
			txt.setFormat(null, 16, 0xFFFFFFFF, "center")
			
			scoreText = new FlxText(0, (FlxG.height / 2)-40, FlxG.width, "Your Score: " + GameTimer._timeElapsed.toFixed(0));
			scoreText.setFormat(null, 16, 0xFFFFFFFF, "center");
			
			
			this.add(txt);
			this.add(scoreText);
			
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
			FlxG.play(ButtonSound);
			FlxG.switchState(FallState);
		}
	}

}