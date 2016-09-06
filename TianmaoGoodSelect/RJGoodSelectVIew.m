//
//  RJGoodSelectVIew.m
//  TianmaoGoodSelect
//
//  Created by vd on 16/7/24.
//  Copyright © 2016年 vd. All rights reserved.
//

#import "RJGoodSelectVIew.h"
#define   leftwidth  ([UIScreen mainScreen].bounds.size.width * 0.2)
#define   rightwidth ([UIScreen mainScreen].bounds.size.width * 0.8)

@interface RJGoodSelectVIew ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * leftTableView;
@property (nonatomic,strong) UITableView * rightTableView;

@property (nonatomic,strong) NSMutableArray * leftArray;
@property (nonatomic,strong)NSMutableArray * rightArray;
@end
@implementation RJGoodSelectVIew


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
       
        
//        self.rightTableView.delegate = self;
//        self.rightTableView.dataSource = self;
        self.leftTableView.delegate = self;
        self.leftTableView.dataSource = self;
        self.leftTableView.tag = 100;
        self.leftTableView.showsVerticalScrollIndicator = false;
        
        
    //    self.rightTableView.tag = 1000;
        
        [self.leftTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
      //  [self.rightTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
        
        
        [self addSubview:self.leftTableView];
    //    [self addSubview:self.rightTableView];
        
    
    }
    return self;
    

}

-(UITableView *)leftTableView{
    if(_leftTableView== nil){
        _leftTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, leftwidth, self.frame.size.height) style:UITableViewStylePlain];
        
        
    
    }
    
    return _leftTableView;

}
-(UITableView *)rightTableView{
    if(_rightTableView == nil){
    
        _rightTableView = [[UITableView alloc]initWithFrame:CGRectMake(leftwidth, 0, rightwidth, self.frame.size.height) style:UITableViewStylePlain];
        
    }
    return _rightTableView;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
     UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = self.leftArray[indexPath.row];
    
    return  cell;


}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return  44;
    


}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    

    return  self.leftArray.count;
    

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
  
    
    NSInteger numberAcount = [tableView numberOfRowsInSection:0];
    NSLog(@"row==%ld",indexPath.row);
//    12
    
    NSLog(@"%f",(numberAcount - indexPath.row)*44.0);
    
    
      [self.leftTableView  scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionTop animated:YES];
    
//    if([self canMoveTop:indexPath.row])
//      [self.leftTableView setContentOffset:CGPointMake(0, indexPath.row * 44) animated:YES];
//    else{
//      [self.leftTableView  scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionTop animated:YES];
//        
//    
//    }
    
    
    

}

-(BOOL)canMoveTop:(NSInteger )row{
    
    
    
    // 20
    
    return   ( (self.leftTableView.contentSize.height/44 - row)*44) >self.frame.size.height;
    
    
    

    

}
-(NSMutableArray *)leftArray{
    if(_leftArray == nil){
        _leftArray = [NSMutableArray arrayWithArray:@[@"为您推荐",@"国际品牌",@"天猫国际",@"女装",@"女鞋",@"男装",@"男鞋",@"内衣",@"母婴",@"数码",@"家电",@"美妆",@"箱包",@"运动",@"户外",@"家装",@"家纺",@"居家",@"饰品",@"食品",@"生鲜",@"汽车",@"医药",@"图书",@"通信",@"洗护"]];
        
    }
    return _leftArray;

}
-(NSMutableArray *)rightArray{
    if(_rightArray == nil){
    
        _rightArray = [NSMutableArray arrayWithArray:@[]];
    }
    return _rightArray;
    

}


@end
