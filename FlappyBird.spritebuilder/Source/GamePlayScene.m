#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
	character = (Character*)[CCBReader load:@"Character"];
	[physicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

-(void) addObstacle{
	
}

-(void) showScore{
	
	
}


@end
