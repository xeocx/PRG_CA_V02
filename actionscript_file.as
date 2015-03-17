var rightKeyPressed: Boolean = false;
var leftKeyPressed: Boolean = false;

stage.addEventListener(KeyboardEvent.KEY_DOWN, stage_keyDownHandler);
stage.addEventListener(KeyboardEvent.KEY_UP, stage_keyUpHandler);
stage.addEventListener(Event.ENTER_FRAME, stage_enterFrameHandler);

function stage_keyDownHandler(event:KeyboardEvent):void
{
	if (event.keyCode == Keyboard.RIGHT) 
	{
		rightKeyPressed = true;
	} 
	if (event.keyCode == Keyboard.LEFT)
	{
		leftKeyPressed = true;
	}
}

function stage_keyUpHandler(event:KeyboardEvent):void
{
	rightKeyPressed = false;
	leftKeyPressed = false;
}

function stage_enterFrameHandler(event:Event):void
{
	if (rightKeyPressed == true)
	{
		myCharacter.x += 0;
		foregroundFar.x -= 3;
		foregroundNear.x -= 5;
	}
	if (leftKeyPressed == true)
	{
		myCharacter.x += 0;
		foregroundFar.x +=3;
		foregroundNear.x += 5;
	}
}