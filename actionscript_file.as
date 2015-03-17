var leftKeyPressed: Boolean = false;
var rightKeyPressed: Boolean = false;

stage.addEventListener(KeyboardEvent.KEY_DOWN, stage_keyDownHandler);
stage.addEventListener(KeyboardEvent.KEY_UP, stage_keyUpHandler);
stage.addEventListener(Event.ENTER_FRAME, stage_enterFrameHandler);

function stage_keyDownHandler(event:KeyboardEvent):void
{
	if (event.keyCode == Keyboard.LEFT) 
	{
		leftKeyPressed = true;
	} 
	if (event.keyCode == Keyboard.RIGHT)
	{
		rightKeyPressed = true;
	}
}

function stage_keyUpHandler(event:KeyboardEvent):void
{
	leftKeyPressed = false;
	rightKeyPressed = false;
}

function stage_enterFrameHandler(event:Event):void
{
	if (leftKeyPressed == true && myCharacter.x == stage.stageWidth*0.25)
	{
		myCharacter.x += 0;
		foregroundFar.x +=3;
		foregroundNear.x += 5;
	}
	else if (leftKeyPressed == true && myCharacter.x >= stage.stageWidth*0.25)
	{
		myCharacter.x -= 4;
		foregroundFar.x += 0;
		foregroundNear.x += 0;
	}
	if (rightKeyPressed == true && myCharacter.x == stage.stageWidth*0.75)
	{
		myCharacter.x += 0;
		foregroundFar.x -= 3;
		foregroundNear.x -= 5;
	}
	else if (rightKeyPressed == true && myCharacter.x <= stage.stageWidth*0.75)
	{
		myCharacter.x += 4;
		foregroundFar.x += 0;
		foregroundNear.x += 0;
	}
}