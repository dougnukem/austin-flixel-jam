package com.TerminalVelocity
{
	import org.flixel.FlxG;
	import org.flixel.FlxText;
	
	public class GameTimer extends FlxText
	{
		private var _timeElapsed:Number;
		
		
		public function GameTimer() 
		{
			var tempText:String;
			
			_timeElapsed = FlxG.elapsed * 10
			tempText = _timeElapsed.toFixed(0);
			
			super(0,0,100,"Score: " + tempText);
		}
		
		override public function update():void
		{
			var tempText:String;
			
			super.update();
			
			_timeElapsed = _timeElapsed + (FlxG.elapsed *10)
			tempText = _timeElapsed.toFixed(0);
			this.text = "Score: " + tempText;
			
		}
		

	}
}