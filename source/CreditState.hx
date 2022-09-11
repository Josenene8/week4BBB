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
//how many times am i going to resue this code lel
class CreditState extends MusicBeatState
{

	public function new() 
     {
         super();
     }

	override public function create():Void 
	{
		var bg:FlxSprite = new FlxSprite();
		bg.loadGraphic(Paths.image("creditScreen", "shared"));
		bg.antialiasing = true;
		add(bg);

		var blackShit:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blackShit.alpha = 1;
		blackShit.scrollFactor.set();
		add(blackShit);
		
		#if android
		addVirtualPad(NONE, A);
		#end

		FlxTween.tween(blackShit, {alpha: 0}, 0.5, {ease: FlxEase.quartInOut});
	}
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed); 
        
        if(controls.ACCEPT)
        {
		    FlxG.switchState(new MainMenuState());
        }
	}
}
