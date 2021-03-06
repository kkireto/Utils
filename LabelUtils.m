//The MIT License (MIT)
//
//Copyright (c) 2014 Kireto
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of
//this software and associated documentation files (the "Software"), to deal in
//the Software without restriction, including without limitation the rights to
//use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//the Software, and to permit persons to whom the Software is furnished to do so,
//subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#import "LabelUtils.h"

@implementation LabelUtils

+ (UILabel*)labelWithFrame:(CGRect)labelFrame
                 labelFont:(UIFont*)labelFont
                labelColor:(UIColor*)labelColor
                 alignment:(NSTextAlignment)textAlignment
             andLabelTitle:(NSString*)labelTitle {
    
    UILabel *returnLabel = [[UILabel alloc] initWithFrame:labelFrame];
    returnLabel.backgroundColor = [UIColor clearColor];
    returnLabel.font = labelFont;
    returnLabel.textColor = labelColor;
    returnLabel.textAlignment = textAlignment;
    returnLabel.text = labelTitle;
    return returnLabel;
}

+ (UILabel*)labelWithFrame:(CGRect)labelFrame
             numberOfLines:(NSUInteger)numberOfLines
                 labelFont:(UIFont*)labelFont
                labelColor:(UIColor*)labelColor
                 alignment:(NSTextAlignment)textAlignment
             andLabelTitle:(NSString*)labelTitle {
    
    UILabel *returnLabel = [[UILabel alloc] initWithFrame:labelFrame];
    returnLabel.backgroundColor = [UIColor clearColor];
    returnLabel.font = labelFont;
    returnLabel.textColor = labelColor;
    returnLabel.textAlignment = textAlignment;
    returnLabel.numberOfLines = numberOfLines;
    returnLabel.text = labelTitle;
    return returnLabel;
}

+ (UILabel*)labelWithFrame:(CGRect)labelFrame
                 labelFont:(UIFont*)labelFont
                labelColor:(UIColor*)labelColor
                 alignment:(NSTextAlignment)textAlignment
                labelTitle:(NSString*)labelTitle
               shadowColor:(UIColor*)shadowColor
              shadowOffset:(CGSize)shadowOffset {
    
    UILabel *returnLabel = [LabelUtils labelWithFrame:labelFrame
                                            labelFont:labelFont
                                           labelColor:labelColor
                                            alignment:textAlignment
                                        andLabelTitle:labelTitle];
    returnLabel.shadowColor = shadowColor;
    returnLabel.shadowOffset = shadowOffset;
    return returnLabel;
}

@end
