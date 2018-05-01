//
//  HomeTableViewCell.m
//  KnowAny
//
//  Created by super on 2018/4/27.
//  Copyright © 2018年 super. All rights reserved.
//

#import "HomeTableViewCell.h"
@interface HomeTableViewCell()

@property (strong, nonatomic)UILabel *titleLabel;
@property (strong, nonatomic)UIImageView *iconImageView;

@end

@implementation HomeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel = [UILabel new];
        [self.contentView addSubview:self.titleLabel];
        
        self.iconImageView = [UIImageView new];
        [self.contentView addSubview:self.iconImageView];
        
        self.iconImageView.sd_layout.topSpaceToView(self.contentView, 10).leftSpaceToView(self.contentView, 10).widthIs(70).heightIs(60);
        self.titleLabel.sd_layout.topEqualToView(self.iconImageView).leftSpaceToView(self.iconImageView, 10).rightSpaceToView(self.contentView, 10).autoWidthRatio(0);
    }
    return self;
}

- (void)setModel:(StoriesModel *)model {
    _model = model;
    NSLog(@"title = %@", model.title);
    self.titleLabel.text = model.title;
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:[model.images firstObject]]];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
