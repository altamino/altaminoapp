.class public Lcom/narvii/widget/StrokedTextView;
.super Landroid/widget/TextView;
.source "StrokedTextView.java"


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

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    sget-object v0, Lcom/narvii/lib/R$styleable;->StrokedTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/narvii/lib/R$styleable;->StrokedTextView_st_strokeColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeColor:I

    .line 49
    sget p2, Lcom/narvii/lib/R$styleable;->StrokedTextView_st_strokeWidth:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeWidth:I

    .line 50
    iget p2, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeWidth:I

    invoke-virtual {p0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->StrokedTextView_st_strokeTextColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/StrokedTextView;->mTextColor:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 55
    iget-object p2, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 76
    iget-boolean v0, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "x"

    .line 83
    invoke-virtual {v5, v9, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 85
    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    .line 91
    :goto_0
    array-length v11, v9

    if-ge v10, v11, :cond_1

    .line 92
    aget-object v11, v9, v10

    if-eqz v11, :cond_0

    .line 93
    aget-object v11, v9, v10

    aget-object v12, v9, v10

    .line 94
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v12, v5

    aget-object v13, v9, v10

    .line 95
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 93
    invoke-virtual {v11, v5, v7, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    aget-object v11, v9, v10

    iget-object v12, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    sub-int/2addr v0, v6

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 102
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/widget/StrokedTextView;->mStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v0, v0

    int-to-float v2, v2

    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/widget/StrokedTextView;->mTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v4, p0, Lcom/narvii/widget/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    iput-boolean v8, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/narvii/widget/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 p3, 0x1

    .line 67
    iput-boolean p3, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 68
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/narvii/widget/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/narvii/widget/StrokedTextView;->mUpdateCachedBitmap:Z

    return-void
.end method
