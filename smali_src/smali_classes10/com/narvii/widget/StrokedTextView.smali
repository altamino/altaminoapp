.class public Lcom/narvii/widget/StrokedTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTextColor:I

.field private mUpdateCachedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/lib/R$styleable;->StrokedTextView:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget p2, Lcom/narvii/lib/R$styleable;->StrokedTextView_st_strokeColor:I

    .line 10
    .line 11
    const/high16 p3, -0x1000000

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 15
    move-result p2

    .line 16
    .line 17
    iput p2, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeColor:I

    .line 18
    .line 19
    sget p2, Lcom/narvii/lib/R$styleable;->StrokedTextView_st_strokeWidth:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    const/high16 v0, 0x40a00000    # 5.0f

    .line 26
    .line 27
    .line 28
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 33
    move-result p2

    .line 34
    float-to-int p2, p2

    .line 35
    .line 36
    iput p2, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeWidth:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .line 41
    sget p2, Lcom/narvii/lib/R$styleable;->StrokedTextView_st_strokeTextColor:I

    .line 42
    const/4 p3, -0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 46
    move-result p2

    .line 47
    .line 48
    iput p2, p0, Lcom/narvii/widget/StrokedTextView;->mTextColor:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    const/4 p1, 0x1

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 62
    .line 63
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    new-instance v4, Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 38
    move-result v6

    .line 39
    float-to-int v6, v6

    .line 40
    .line 41
    .line 42
    const-string/jumbo v7, "x"

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v7, v8, v9, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 48
    .line 49
    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 50
    .line 51
    iget-object v7, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 57
    .line 58
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 65
    move-result v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 69
    move-result v7

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v9

    .line 74
    move v10, v8

    .line 75
    :goto_0
    array-length v11, v9

    .line 76
    .line 77
    if-ge v10, v11, :cond_1

    .line 78
    .line 79
    aget-object v11, v9, v10

    .line 80
    .line 81
    if-eqz v11, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 85
    move-result v12

    .line 86
    add-int/2addr v12, v5

    .line 87
    .line 88
    aget-object v13, v9, v10

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 92
    move-result v13

    .line 93
    add-int/2addr v13, v7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v5, v7, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    .line 98
    aget-object v11, v9, v10

    .line 99
    .line 100
    iget-object v12, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    .line 105
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 110
    move-result v5

    .line 111
    sub-int/2addr v0, v5

    .line 112
    sub-int/2addr v0, v6

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 116
    move-result v4

    .line 117
    add-int/2addr v2, v4

    .line 118
    .line 119
    div-int/lit8 v2, v2, 0x2

    .line 120
    .line 121
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 122
    .line 123
    iget v5, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeWidth:I

    .line 124
    int-to-float v5, v5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    .line 129
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 130
    .line 131
    iget v5, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeColor:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .line 136
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 140
    move-result v5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    .line 145
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 146
    int-to-float v0, v0

    .line 147
    int-to-float v2, v2

    .line 148
    .line 149
    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    .line 159
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 160
    .line 161
    iget v5, p0, Lcom/narvii/widget/StrokedTextView;->mTextColor:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    .line 166
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    .line 173
    iput-boolean v8, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 174
    .line 175
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 176
    .line 177
    iget-object v2, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    goto :goto_1

    .line 182
    .line 183
    .line 184
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    if-lez p2, :cond_0

    .line 8
    const/4 p3, 0x1

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 11
    .line 12
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 23
    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 7
    return-void
.end method
