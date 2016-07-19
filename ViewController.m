//
//  ViewController.m
//  SnehithUI
//
//  Created by SnehithNitin on 4/13/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *username;
    UITextField *password;
    UITextField *plaincolbox;
    UISlider *sliderobj1;
    UISlider *sliderobj2;
    UISlider *sliderobj3;
    UISegmentedControl *segment;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Started");
    // Do any additional setup after loading the view, typically from a nib.

    UIImageView *img=[[UIImageView alloc] initWithFrame:self.view.frame];
    img.image=[UIImage imageNamed:@"goku"];
    [self.view addSubview:img];
    
    UISwitch *switchobj=[[UISwitch alloc] initWithFrame:CGRectMake(50, 320, self.view.frame.size.width-200,40)];
    switchobj.thumbTintColor=[UIColor blackColor];
    switchobj.tintColor=[UIColor whiteColor];
    [switchobj addTarget:self action:@selector(switchvaluechanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switchobj] ;

    
    username=[[UITextField alloc] initWithFrame:CGRectMake(50,120,self.view.frame.size.width-100,40)];
    username.placeholder=@"Username";
    username.backgroundColor=[UIColor whiteColor];
    username.textAlignment=NSTextAlignmentCenter;
    username.layer.cornerRadius=7;
    username.layer.borderWidth=2;
    username.layer.borderColor=[UIColor yellowColor].CGColor;
    username.autocorrectionType=UITextAutocorrectionTypeNo;
    username.autocapitalizationType=UITextAutocapitalizationTypeNone;
    username.keyboardType=UIKeyboardTypeEmailAddress;
    username.font=[UIFont fontWithName:@"Times new Roman" size:25];
    username.returnKeyType=UIReturnKeyNext;
    username.clearButtonMode=UITextFieldViewModeWhileEditing;
    [self.view addSubview:username];
    
    password=[[UITextField alloc] initWithFrame:CGRectMake(50,180,self.view.frame.size.width-100,40)];
    password.placeholder=@"Type Password";
    password.backgroundColor=[UIColor whiteColor];
    password.layer.cornerRadius=7;
    password.layer.borderWidth=2;
    password.layer.borderColor=[UIColor redColor].CGColor;
    password.textAlignment=NSTextAlignmentCenter;
    password.secureTextEntry=true;
    password.clearButtonMode=UITextFieldViewModeWhileEditing;
    password.font=[UIFont fontWithName:@"Arial" size:25];
    [self.view addSubview:password];
    
    UIButton *submit=[[UIButton alloc] initWithFrame:CGRectMake(150, 250, self.view.frame.size.width-300, 30)];
    submit.layer.cornerRadius=7;
    submit.layer.borderWidth=2;
    [submit setTitle:@"Submit" forState:UIControlStateNormal];
    submit.backgroundColor=[UIColor redColor];
    [submit setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [submit addTarget:self action:@selector(ButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:submit];
    
    UILabel *login=[[UILabel alloc] initWithFrame:CGRectMake(150, 80, self.view.frame.size.width-300, 30)];
    //login.backgroundColor=[UIColor whiteColor];
   login.text=@"LOGIN";
    login.adjustsFontSizeToFitWidth=YES;
    [self.view addSubview:login];
    
    sliderobj1=[[UISlider alloc] initWithFrame:CGRectMake(50, 400, self.view.frame.size.width-100, 30)];
    sliderobj1.minimumValue=0;
    sliderobj1.maximumValue=1;
    [sliderobj1 addTarget:self action:@selector(SlidersValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderobj1];

    sliderobj2=[[UISlider alloc] initWithFrame:CGRectMake(50, 450, self.view.frame.size.width-100, 30)];
    sliderobj2.minimumValue=0;
    sliderobj2.maximumValue=1;
    [sliderobj2 addTarget:self action:@selector(SlidersValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderobj2];

    sliderobj3=[[UISlider alloc] initWithFrame:CGRectMake(50, 500, self.view.frame.size.width-100, 30)];
    sliderobj3.minimumValue=0;
    sliderobj3.maximumValue=1;
    [sliderobj3 addTarget:self action:@selector(SlidersValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderobj3];
    

    plaincolbox=[[UITextField alloc] initWithFrame:CGRectMake(50, 550, self.view.frame.size.width-100,150)];
    plaincolbox.placeholder=@"Color Testing";
    plaincolbox.backgroundColor=[UIColor whiteColor];
    plaincolbox.textAlignment=NSTextAlignmentCenter;
    plaincolbox.layer.cornerRadius=7;
    plaincolbox.layer.borderWidth=2;
    plaincolbox.layer.borderColor=[UIColor yellowColor].CGColor;
    plaincolbox.autocorrectionType=UITextAutocorrectionTypeNo;
    plaincolbox.autocapitalizationType=UITextAutocapitalizationTypeNone;
    plaincolbox.keyboardType=UIKeyboardTypeEmailAddress;
    plaincolbox.font=[UIFont fontWithName:@"Times new Roman" size:25];
    plaincolbox.returnKeyType=UIReturnKeyNext;
    plaincolbox.clearButtonMode=UITextFieldViewModeWhileEditing;
    plaincolbox.hidden=YES;
    [self.view addSubview:plaincolbox];
    
    NSArray *arr=@[@"Black",@"Red",@"White"];
    
    segment=[[UISegmentedControl alloc] initWithItems:arr];
    segment.frame=CGRectMake(150, 320, self.view.frame.size.width-200,40);
    segment.backgroundColor=[UIColor whiteColor];
    segment.tintColor=[UIColor orangeColor];
    segment.layer.cornerRadius=7;
    segment.backgroundColor=[UIColor purpleColor];
    [segment addTarget:self action:@selector(segmentvaluechanged) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segment];
}

-(void)segmentvaluechanged{
    if (segment.selectedSegmentIndex==0) {
        plaincolbox.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    }
    if (segment.selectedSegmentIndex==1) {
        plaincolbox.backgroundColor=[UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    }
    if (segment.selectedSegmentIndex==2) {
        plaincolbox.backgroundColor=[UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    }
}
-(void)SlidersValueChanged:(UISlider *)SliderObj{
    plaincolbox.backgroundColor=[UIColor colorWithRed:sliderobj1.value green:sliderobj2.value blue:sliderobj3.value alpha:1];
    
    NSLog(@"Slider value is %f",SliderObj.value);
}



-(void)switchvaluechanged:(UISwitch *)SwitchObj{
    if (SwitchObj.on) {
        plaincolbox.hidden=NO;
        NSLog(@"Swithch is on");
    }
    else{
        plaincolbox.hidden=YES;
        NSLog(@"Swithch is off");
    }
}

#pragma mark UITextField Delegate Methods
-(void)ButtonClicked:(UIButton *)btn
{
    if (username.text.length>0 && password.text.length>0) {
        NSLog(@"Successful login,  Congrats!!!!");
    }
    else{
        NSLog(@"Please enter something, Try Again");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
