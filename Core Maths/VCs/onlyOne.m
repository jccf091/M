//
//  onlyOne.m
//  Core Maths
//
//  Created by Arch on 26/4/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "onlyOne.h"


@implementation onlyOne

- (id)initWithX:(CGRect)frame :(UIScrollView*)a
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

        self.panGestureRecognizer.maximumNumberOfTouches = 1;
        UIPanGestureRecognizer* y = a.panGestureRecognizer;
        NSLog(@"check");
        y.minimumNumberOfTouches = 2;
        y.maximumNumberOfTouches = 2;
        NSLog(@"check");
        [self addGestureRecognizer:y];
    }
    NSLog(@"check");
    self.delegate = self;
    return self;
}


-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    if( decelerate==YES){
        
    
        NSLog(@"supposed");
    }else{
        NSLog(@"werid");
    }
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)x{
    NSLog(@"byebye");

}


-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    if (self.contentOffset.y == 0){
        
        CGPoint a = CGPointMake(0,1);
        
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDuration:0.1];
        [UIView setAnimationDelegate:self];
        scrollView.contentOffset = a;
        [UIView commitAnimations];
        
    }else if(self.contentOffset.y == self.contentSize.height){
        
        CGPoint a = CGPointMake(0,self.contentSize.height-1);
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDuration:0.1];
        [UIView setAnimationDelegate:self];
        scrollView.contentOffset = a;
        [UIView commitAnimations];
    }
    
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
