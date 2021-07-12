package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		switch(char)
		{
			case 'trickyH':
				loadGraphic(Paths.image('hellclownIcon'), true, 150, 150);
				animation.add('trickyH', [0, 1], 0, false, isPlayer);
				y -= 25;
		default:
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('tabi', [0, 1], 0, false, isPlayer);
		animation.add('agoti', [2, 3], 0, false, isPlayer);
		animation.add('whitty', [4, 5], 0, false, isPlayer);
		animation.add('tricky', [6, 7], 0, false, isPlayer);
	}
	animation.play(char);
	antialiasing = true;
	scrollFactor.set();
}

override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
