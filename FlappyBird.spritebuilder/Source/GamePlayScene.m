#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
	character = (Character*)[CCBReader load:@"Character"];
	[physicsNode addChild:character];
	[self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

-(void) addObstacle{
	
}

-(void) showScore{
	
	
}

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
	
	[character flap];
}

@end
