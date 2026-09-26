.class Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/refresh/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v1, Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    iput v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 28
    .line 29
    iput v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 30
    .line 31
    iput v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRotation:F

    .line 32
    .line 33
    const/high16 v2, 0x40a00000    # 5.0f

    .line 34
    .line 35
    iput v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 36
    .line 37
    const/high16 v2, 0x40200000    # 2.5f

    .line 38
    .line 39
    iput v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 40
    .line 41
    new-instance v2, Landroid/graphics/Paint;

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 46
    .line 47
    iput-object v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 50
    .line 51
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    .line 59
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    .line 64
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Path;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 16
    .line 17
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 25
    .line 26
    :goto_0
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 27
    float-to-int v0, v0

    .line 28
    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    int-to-float v0, v0

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 33
    mul-float/2addr v0, v1

    .line 34
    .line 35
    iget-wide v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 41
    move-result-wide v5

    .line 42
    mul-double/2addr v1, v5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    .line 46
    move-result v5

    .line 47
    float-to-double v5, v5

    .line 48
    add-double/2addr v1, v5

    .line 49
    double-to-float v1, v1

    .line 50
    .line 51
    iget-wide v5, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 55
    move-result-wide v2

    .line 56
    mul-double/2addr v5, v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    .line 60
    move-result v2

    .line 61
    float-to-double v2, v2

    .line 62
    add-double/2addr v5, v2

    .line 63
    double-to-float v2, v5

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 66
    const/4 v4, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 72
    .line 73
    iget v5, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 74
    int-to-float v5, v5

    .line 75
    .line 76
    iget v6, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 77
    mul-float/2addr v5, v6

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    .line 82
    iget-object v3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 83
    .line 84
    iget v4, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 85
    int-to-float v4, v4

    .line 86
    .line 87
    iget v5, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 88
    mul-float/2addr v4, v5

    .line 89
    .line 90
    const/high16 v6, 0x40000000    # 2.0f

    .line 91
    div-float/2addr v4, v6

    .line 92
    .line 93
    iget v6, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 94
    int-to-float v6, v6

    .line 95
    mul-float/2addr v6, v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    .line 100
    iget-object v3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 101
    sub-float/2addr v1, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 112
    .line 113
    iget v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    add-float/2addr p2, p3

    .line 118
    .line 119
    const/high16 p3, 0x40a00000    # 5.0f

    .line 120
    sub-float/2addr p2, p3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    .line 124
    move-result p3

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    .line 128
    move-result p4

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 132
    .line 133
    iget-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 134
    .line 135
    iget-object p3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    :cond_1
    return-void
.end method

.method private getNextColorIndex()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColors:[I

    .line 7
    array-length v1, v1

    .line 8
    rem-int/2addr v0, v1

    .line 9
    return v0
.end method

.method private invalidateSelf()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRotation:F

    .line 15
    add-float/2addr v0, v2

    .line 16
    .line 17
    const/high16 v3, 0x43b40000    # 360.0f

    .line 18
    .line 19
    mul-float v6, v0, v3

    .line 20
    .line 21
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 22
    add-float/2addr v0, v2

    .line 23
    mul-float/2addr v0, v3

    .line 24
    .line 25
    sub-float v7, v0, v6

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    iget-object v5, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 36
    move-object v0, p1

    .line 37
    move v2, v6

    .line 38
    move v3, v7

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 47
    .line 48
    const/16 v1, 0xff

    .line 49
    .line 50
    if-ge v0, v1, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 53
    .line 54
    iget v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    iget v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 62
    sub-int/2addr v1, v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 77
    move-result p2

    .line 78
    .line 79
    div-int/lit8 p2, p2, 0x2

    .line 80
    int-to-float p2, p2

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getNextColor()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColors:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColors:[I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 5
    .line 6
    aget v0, v0, v1

    .line 7
    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 8
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 17
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mAlpha:I

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 0

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowWidth:I

    float-to-int p1, p2

    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 3
    .line 4
    cmpl-float v0, p1, v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 12
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    return-void
.end method

.method public setCenterRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setColorIndex(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColors:[I

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 9
    return-void
.end method

.method public setColors([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mColors:[I

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 7
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setInsets(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmpg-double p2, v0, v2

    .line 12
    .line 13
    const/high16 v2, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-lez p2, :cond_1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    cmpg-float p2, p1, p2

    .line 19
    .line 20
    if-gez p2, :cond_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    div-float/2addr p1, v2

    .line 23
    float-to-double p1, p1

    .line 24
    sub-double/2addr p1, v0

    .line 25
    :goto_0
    double-to-float p1, p1

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_1
    :goto_1
    iget p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 29
    div-float/2addr p1, v2

    .line 30
    float-to-double p1, p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 34
    move-result-wide p1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :goto_2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 38
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRotation:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 10
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 11
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method
