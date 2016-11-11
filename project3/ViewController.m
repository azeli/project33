//
//  ViewController.m
//  project3
//
//  Created by Анна  Зелинская on 06.11.16.
//  Copyright © 2016 Анна  Зелинская. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *arrayData;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Initialize table data
    arrayData = [NSMutableArray arrayWithObjects:@"", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ColorText:(UIButton*)sender {
    
    NSRange range = [text selectedRange];
    NSMutableAttributedString *string = [text textStorage];
    [string addAttribute:NSForegroundColorAttributeName value:sender.currentTitleColor  range:range];
    [text setAttributedText:string];
    //if (sender.currentTitleColor == [UIColor greenColor]) {
        [arrayData addObject:[string.string substringWithRange:range]];
    //}
}

- (IBAction)Clear:(id)sender {
    text.textColor = [UIColor blackColor];
    
    arrayData = [NSMutableArray arrayWithObjects:@"", nil];
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    TableViewController *vc = [segue destinationViewController];
    
    // Pass the selected object to the new view controller.
    vc.arrayData1 =arrayData;
}



@end
