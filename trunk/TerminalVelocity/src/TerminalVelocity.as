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
			//super.setLogoFX(0xFFFF0000);
			
			lg = new LevelGenerator(10000);
			
			var levelObjects:Array = lg.getLevelObjectsForRange(0, 100);
			
			/*
			for ( var i:uint = 0; i < levelObjects.length; i++)
			{
				trace("Checkpoint 900: " + levelObjects[i] + " ... " + levelObjects[i].x +"," + levelObjects[i].y );
				
			}
			*/
			
		}
		
	}

}