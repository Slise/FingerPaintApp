//
//  ViewController.m
//  fingerPaintApp
//
//  Created by Benson Huynh on 2015-10-30.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DrawCanvas *drawingCanvas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.drawingCanvas.ad
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//gives the path for a particular line
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint touchlocation =[touch locationInView:self.drawingCanvas];
    [[self.drawingCanvas path] moveToPoint:touchlocation];
    
    [self.drawingCanvas setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchlocation =[touch locationInView:self.drawingCanvas];
    
    [[self.drawingCanvas path] addLineToPoint:touchlocation];
    
    [self.drawingCanvas setNeedsDisplay];
    
}


-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"touch ended");
}
@end
