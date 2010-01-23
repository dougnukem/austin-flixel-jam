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
			super(240,320, MenuState, 2);
			super.showLogo = false;
			
		}
		
	}

}