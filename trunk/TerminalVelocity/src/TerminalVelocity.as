package  
{
	import org.flixel.*
	import com.TerminalVelocity.*;
	
	[SWF(width = "480", height = "640", backgroundColor = "#000000")]
	
	public class TerminalVelocity extends FlxGame
	{
		protected var lg:LevelGenerator;
		
		public function TerminalVelocity():void
		{
			super(480, 640, FallState, 1);
			super.showLogo = false;
			
		}
		
	}

}