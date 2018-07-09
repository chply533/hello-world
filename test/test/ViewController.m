//
//  ViewController.m
//  test
//
//  Created by 畅泊云-02 on 8/5/18.
//  Copyright © 2018年 畅泊云-02. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *myTableView;
@property (nonatomic, strong) NSMutableArray *msgs;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.msgs = [[NSMutableArray alloc] init];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    [self.msgs addObject:@"ceshi"];
    [self.msgs addObject:@"测试后哈哈什么的神哈就立刻"];
    
    self.myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.msgs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    NSString *str = [self.msgs objectAtIndex:indexPath.row];
    cell.textLabel.text = str;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.y < 0 )
    {
        [self loadMoreHistoryData];
    }
}

-(void)loadMoreHistoryData
{
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.msgs insertObject:@"哈哈哈哈看见红绿灯" atIndex:0];
    [self.msgs insertObject:@"haldhl" atIndex:0];
    [self.myTableView reloadData];
    
}

@end
