package;
import flixel.*;
import flixel.addons.text.FlxTextField;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxAxes;
import flixel.util.FlxTimer;
import flixel.util.FlxColor;
import openfl.Assets;

class EndState extends FlxState
{

	public function new() 
     {
         super();
     }

	override public function create():Void 
	{
		var bg:FlxSprite = new FlxSprite();
		
		bg.loadGraphic(Paths.image("shitling", "shared"));
		bg.antialiasing = true;
		add(bg);
		#if android
		addVirtualPad(NONE, A_B);
		#end
        FlxG.sound.playMusic(Paths.music("eilot","shared"),1,false);
        camera.flash(FlxColor.BLACK, 1);
		
		
	}
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed); 
        
        if(controls.ACCEPT)
        {
		    FlxG.switchState(new StoryMenuState());
        }
	}
}
