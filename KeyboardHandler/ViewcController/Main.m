//
//  Main.m
//  KeyboardHandler
//
//  Created by 581 on 2014/11/2.
//  Copyright (c) 2014年 581. All rights reserved.
//

#import "Main.h"
#import "KeyboardHandler.h"

@interface Main () {
    KeyboardHandler *keyboardHandler;
}
@property (strong, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UITextField *textField2;
@property (strong, nonatomic) IBOutlet UITextField *textField3;
@property (strong, nonatomic) UITextField *textField4;
@end

@implementation Main

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *textFields = @[_textField1,
                            _textField2,
                            _textField3];
    keyboardHandler = [KeyboardHandler handleWithView:self.view textFields:textFields];
    
    CGFloat posx = (self.view.frame.size.width - 250) / 2;
     _textField4 = [[UITextField alloc] initWithFrame:CGRectMake(posx, 30, 250, 30)];
    _textField4.backgroundColor = [UIColor whiteColor];
    _textField4.placeholder = @"click me";
    [self.view addSubview:_textField4];
    [keyboardHandler addTextField:_textField4];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
