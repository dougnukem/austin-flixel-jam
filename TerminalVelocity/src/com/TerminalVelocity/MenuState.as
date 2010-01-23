package  com.TerminalVelocity
{
	import org.flixel.*
	
	public class MenuState extends FlxState
	{
		
		override public function MenuState():void
		{
			var txt:FlxText
			txt = new FlxText(0, (FlxG.width / 2) - 80, FlxG.width, "Flixel Jam!!!")
			txt.setFormat(null, 16, 0xFFFFFFFF, "center")
			this.add(txt);
			
			//TODO: start game button.
		}
		
	}

}