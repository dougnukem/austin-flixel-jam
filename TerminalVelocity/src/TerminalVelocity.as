package  
{
	import org.flixel.*
	import com.TerminalVelocity.MenuState;
	
	[SWF(width = "480", height = "640", backgroundColor = "#000000")]
	
	public class TerminalVelocity extends FlxGame
	{
		
		public function TerminalVelocity():void
		{
			super(240, 320, MenuState, 2);
			super.setLogoFX(0xFFFF0000);
		}
		
	}

}