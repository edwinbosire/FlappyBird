#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
	character = (Character*)[CCBReader load:@"Character"];
	[physicsNode addChild:character];
	[self addObstacle];
	
	timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
	// Increment the time since the last obstacle was added
	timeSinceObstacle += delta; // delta is approximately 1/60th of a second
	
	// Check to see if two seconds have passed
	if (timeSinceObstacle > 2.0f)
		{
		// Add a new obstacle
		[self addObstacle];
		
		// Then reset the timer.
		timeSinceObstacle = 0.0f;
		}
}

-(void) addObstacle{
	
}

-(void) showScore{
	
	
}

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
	
	[character flap];
}

@end
