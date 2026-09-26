.class public Lcom/narvii/poweruser/SectionSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;,
        Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;,
        Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListenerAdapter;
    }
.end annotation


# instance fields
.field private bmpIndicator:Landroid/graphics/Bitmap;

.field dx:F

.field private indicatorSize:I

.field private isAutoAdjustSectionMark:Z

.field private isFloatType:Z

.field private isRtl:Z

.field private isSeekBySection:Z

.field private isSeekStepSection:Z

.field private isThumbOnDragging:Z

.field private isTouchToSeek:Z

.field private mAnimDuration:J

.field private mDelta:F

.field private mLeft:F

.field private mMax:F

.field private mMin:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPreSecValue:F

.field private mPreThumbCenterX:F

.field private mProgress:F

.field private mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

.field private mRealTrackLength:F

.field private mRectText:Landroid/graphics/Rect;

.field private mRight:F

.field private mSectionCount:I

.field private mSectionOffset:F

.field private mSectionPaint:Landroid/graphics/Paint;

.field private mSectionTextArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionTextColor:I

.field private mSectionTextInterval:I

.field private mSectionTextSize:I

.field private mSectionValue:F

.field private mTextSpace:I

.field private mThumbCenterX:F

.field private mTrackColor:I

.field private mTrackLength:F

.field private mTrackSize:I

.field private sectionLineHeight:I

.field private sectionLineWidth:I

.field private sectionTextSize:I

.field private trackBarContentPadding:I

.field private trackBarHeight:I

.field private triggerSeekBySection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/poweruser/SectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 5
    sget-object v0, Lcom/narvii/amino/R$styleable;->SectionSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    const/4 p2, 0x3

    const/high16 p3, 0x42c80000    # 100.0f

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    const/4 p2, 0x5

    iget p3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    const/4 p2, 0x2

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isFloatType:Z

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/16 v0, 0x12

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackSize:I

    const/4 p2, 0x6

    const/16 v0, 0xa

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    const/16 p2, 0x11

    const v2, -0x19191a

    .line 12
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/16 v3, 0xc

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextSize:I

    iget p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextColor:I

    const/16 p2, 0xe

    .line 15
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    const/16 p2, 0xd

    .line 16
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/16 v0, 0x9

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineWidth:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    const/16 p2, 0xb

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextInterval:I

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    const/4 p2, -0x1

    .line 21
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-gez p2, :cond_0

    const-wide/16 v4, 0xc8

    goto :goto_0

    :cond_0
    int-to-long v4, p2

    :goto_0
    iput-wide v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    const/16 p2, 0x10

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/4 v1, 0x7

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionTextSize:I

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 30
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 31
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 34
    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 38
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->initConfigByPriority()V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f080606

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    return-object p0
.end method

.method private autoAdjustSection()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 6
    .line 7
    if-gt v2, v3, :cond_1

    .line 8
    int-to-float v0, v2

    .line 9
    .line 10
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    .line 11
    mul-float/2addr v0, v3

    .line 12
    .line 13
    iget v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 14
    add-float/2addr v0, v4

    .line 15
    .line 16
    iget v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 17
    .line 18
    cmpg-float v5, v0, v4

    .line 19
    .line 20
    if-gtz v5, :cond_0

    .line 21
    sub-float/2addr v4, v0

    .line 22
    .line 23
    cmpg-float v3, v4, v3

    .line 24
    .line 25
    if-gtz v3, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    :goto_1
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 32
    float-to-double v3, v3

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    .line 46
    move-result v3

    .line 47
    .line 48
    cmpl-float v3, v3, v0

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    move v3, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v3, v1

    .line 54
    .line 55
    :goto_2
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    iget v6, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 63
    .line 64
    sub-float v7, v6, v0

    .line 65
    .line 66
    iget v8, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    .line 67
    .line 68
    const/high16 v9, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float v9, v8, v9

    .line 71
    .line 72
    cmpg-float v7, v7, v9

    .line 73
    const/4 v9, 0x2

    .line 74
    .line 75
    if-gtz v7, :cond_3

    .line 76
    .line 77
    new-array v2, v9, [F

    .line 78
    .line 79
    aput v6, v2, v1

    .line 80
    .line 81
    aput v0, v2, v5

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 85
    move-result-object v0

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_3
    new-array v0, v9, [F

    .line 89
    .line 90
    aput v6, v0, v1

    .line 91
    add-int/2addr v2, v5

    .line 92
    int-to-float v2, v2

    .line 93
    mul-float/2addr v2, v8

    .line 94
    .line 95
    iget v6, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 96
    add-float/2addr v2, v6

    .line 97
    .line 98
    aput v2, v0, v5

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    :goto_3
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    .line 112
    new-instance v2, Lcom/narvii/poweruser/SectionSeekBar$4;

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/narvii/poweruser/SectionSeekBar$4;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    const/4 v0, 0x0

    .line 121
    .line 122
    :goto_4
    if-nez v3, :cond_5

    .line 123
    .line 124
    iget-wide v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    new-array v3, v5, [Landroid/animation/Animator;

    .line 131
    .line 132
    aput-object v0, v3, v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    .line 137
    :cond_5
    new-instance v0, Lcom/narvii/poweruser/SectionSeekBar$5;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SectionSeekBar$5;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/poweruser/SectionSeekBar;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/poweruser/SectionSeekBar;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    return-void
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .locals 5

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v2, v3, :cond_3

    int-to-float v1, v2

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    cmpg-float v4, v1, p1

    if-gtz v4, :cond_2

    sub-float v4, p1, v1

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sub-float/2addr p1, v1

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    int-to-float p1, v2

    mul-float/2addr p1, v3

    add-float/2addr p1, v0

    return p1
.end method

.method private calculateProgress()F
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    goto :goto_0
.end method

.method static bridge synthetic d(Lcom/narvii/poweruser/SectionSeekBar;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/poweruser/SectionSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->autoAdjustSection()V

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/poweruser/SectionSeekBar;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->calculateProgress()F

    move-result p0

    return p0
.end method

.method private float2String(F)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->formatFloat(F)F

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private formatFloat(F)F
    .locals 2

    .line 1
    float-to-double v0, p1

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private initConfigByPriority()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 12
    .line 13
    const/high16 v0, 0x42c80000    # 100.0f

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 20
    .line 21
    cmpl-float v2, v0, v1

    .line 22
    .line 23
    if-lez v2, :cond_1

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 26
    .line 27
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 32
    .line 33
    cmpg-float v0, v0, v1

    .line 34
    .line 35
    if-gez v0, :cond_2

    .line 36
    .line 37
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 38
    .line 39
    :cond_2
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 40
    .line 41
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 42
    .line 43
    cmpl-float v0, v0, v2

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 50
    .line 51
    if-gtz v0, :cond_4

    .line 52
    .line 53
    const/16 v0, 0xa

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 56
    .line 57
    :cond_4
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackSize:I

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarHeight:I

    .line 60
    sub-float/2addr v2, v1

    .line 61
    .line 62
    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    .line 63
    .line 64
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 65
    int-to-float v0, v0

    .line 66
    div-float/2addr v2, v0

    .line 67
    .line 68
    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    .line 69
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    cmpg-float v0, v2, v0

    .line 73
    const/4 v1, 0x1

    .line 74
    .line 75
    if-gez v0, :cond_5

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isFloatType:Z

    .line 78
    .line 79
    :cond_5
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextInterval:I

    .line 80
    .line 81
    if-ge v0, v1, :cond_6

    .line 82
    .line 83
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextInterval:I

    .line 84
    .line 85
    .line 86
    :cond_6
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->initSectionTextArray()V

    .line 87
    .line 88
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    .line 89
    const/4 v2, 0x0

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 96
    .line 97
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 102
    .line 103
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 104
    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 108
    .line 109
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    .line 110
    .line 111
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 112
    .line 113
    cmpl-float v0, v2, v0

    .line 114
    .line 115
    if-eqz v0, :cond_9

    .line 116
    .line 117
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    .line 118
    .line 119
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    .line 120
    .line 121
    :cond_9
    iput-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 122
    :cond_a
    return-void
.end method

.method private initSectionTextArray()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 12
    .line 13
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    .line 14
    int-to-float v3, v0

    .line 15
    mul-float/2addr v2, v3

    .line 16
    sub-float/2addr v1, v2

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 20
    .line 21
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    .line 22
    int-to-float v3, v0

    .line 23
    mul-float/2addr v2, v3

    .line 24
    add-float/2addr v1, v2

    .line 25
    .line 26
    :goto_1
    iget-object v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->isFloatType:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/narvii/poweruser/SectionSeekBar;->float2String(F)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    goto :goto_2

    .line 36
    .line 37
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    float-to-int v1, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, ""

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method private isThumbTouched(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    .line 13
    div-float/2addr v0, v2

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 16
    .line 17
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 18
    sub-float/2addr v2, v3

    .line 19
    mul-float/2addr v0, v2

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 26
    sub-float/2addr v2, v0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 30
    add-float/2addr v2, v0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    move-result v0

    .line 35
    int-to-float v0, v0

    .line 36
    .line 37
    const/high16 v3, 0x40000000    # 2.0f

    .line 38
    div-float/2addr v0, v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    move-result v3

    .line 43
    sub-float/2addr v3, v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 47
    move-result v4

    .line 48
    sub-float/2addr v4, v2

    .line 49
    mul-float/2addr v3, v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    move-result v2

    .line 54
    sub-float/2addr v2, v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    move-result p1

    .line 59
    sub-float/2addr p1, v0

    .line 60
    mul-float/2addr v2, p1

    .line 61
    add-float/2addr v3, v2

    .line 62
    .line 63
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const/high16 v2, 0x41000000    # 8.0f

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 73
    move-result v0

    .line 74
    add-float/2addr p1, v0

    .line 75
    .line 76
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 84
    move-result v2

    .line 85
    add-float/2addr v0, v2

    .line 86
    mul-float/2addr p1, v0

    .line 87
    .line 88
    cmpg-float p1, v3, p1

    .line 89
    .line 90
    if-gtz p1, :cond_2

    .line 91
    const/4 v1, 0x1

    .line 92
    :cond_2
    return v1
.end method

.method private isTrackTouched(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    int-to-float v1, v1

    .line 34
    .line 35
    cmpg-float v0, v0, v1

    .line 36
    .line 37
    if-gtz v0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    .line 48
    cmpl-float v0, v0, v1

    .line 49
    .line 50
    if-ltz v0, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    move-result p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 62
    move-result v1

    .line 63
    sub-int/2addr v0, v1

    .line 64
    int-to-float v0, v0

    .line 65
    .line 66
    cmpg-float p1, p1, v0

    .line 67
    .line 68
    if-gtz p1, :cond_0

    .line 69
    const/4 p1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    return p1
.end method

.method private processProgress()F
    .locals 6

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v2, v3, :cond_4

    int-to-float v3, v2

    iget v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    mul-float/2addr v3, v4

    cmpg-float v5, v3, v0

    if-gez v5, :cond_2

    add-float v5, v3, v4

    cmpl-float v5, v5, v0

    if-ltz v5, :cond_2

    add-float/2addr v1, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    return v3

    :cond_1
    add-float/2addr v3, v4

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_6

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    :cond_5
    return v2

    :cond_6
    sub-float v1, v2, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    return v2

    :cond_7
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    return v2

    :cond_8
    return v0
.end method


# virtual methods
.method public getOnProgressChangedListener()Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->processProgress()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getProgressFloat()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->processProgress()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/SectionSeekBar;->formatFloat(F)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    int-to-float v2, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    .line 29
    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    .line 30
    int-to-float v4, v4

    .line 31
    .line 32
    const/high16 v5, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float v8, v4, v5

    .line 35
    .line 36
    add-float v9, v1, v8

    .line 37
    .line 38
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    .line 39
    int-to-float v4, v1

    .line 40
    .line 41
    add-float v10, v9, v4

    .line 42
    .line 43
    sub-float v11, v2, v8

    .line 44
    int-to-float v1, v1

    .line 45
    .line 46
    sub-float v12, v11, v1

    .line 47
    .line 48
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextSize:I

    .line 51
    int-to-float v2, v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    .line 56
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 60
    move-result v1

    .line 61
    .line 62
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 66
    move-result v2

    .line 67
    sub-float/2addr v1, v2

    .line 68
    float-to-int v13, v1

    .line 69
    .line 70
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 71
    int-to-float v2, v1

    .line 72
    add-float/2addr v3, v2

    .line 73
    float-to-int v2, v3

    .line 74
    .line 75
    add-int v3, v2, v13

    .line 76
    .line 77
    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    .line 78
    add-int/2addr v4, v1

    .line 79
    int-to-float v4, v4

    .line 80
    int-to-float v1, v1

    .line 81
    add-float/2addr v1, v8

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 85
    move-result v1

    .line 86
    float-to-int v1, v1

    .line 87
    .line 88
    add-int v14, v3, v1

    .line 89
    int-to-float v15, v14

    .line 90
    int-to-float v6, v2

    .line 91
    const/4 v1, 0x0

    .line 92
    move v5, v1

    .line 93
    .line 94
    :goto_0
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 95
    .line 96
    if-gt v5, v1, :cond_3

    .line 97
    int-to-float v1, v5

    .line 98
    .line 99
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    .line 100
    mul-float/2addr v2, v1

    .line 101
    .line 102
    add-float v3, v10, v2

    .line 103
    .line 104
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 112
    .line 113
    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 114
    .line 115
    cmpl-float v1, v1, v4

    .line 116
    .line 117
    if-nez v1, :cond_0

    .line 118
    .line 119
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 127
    .line 128
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineWidth:I

    .line 129
    int-to-float v2, v2

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    .line 134
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    .line 135
    .line 136
    sub-int v1, v14, v1

    .line 137
    int-to-float v4, v1

    .line 138
    .line 139
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    move-object/from16 v1, p1

    .line 142
    .line 143
    move-object/from16 v17, v2

    .line 144
    move v2, v3

    .line 145
    .line 146
    move/from16 v18, v3

    .line 147
    move v3, v4

    .line 148
    .line 149
    move/from16 v19, v14

    .line 150
    const/4 v14, 0x0

    .line 151
    .line 152
    move/from16 v4, v18

    .line 153
    .line 154
    move/from16 v16, v8

    .line 155
    move v8, v5

    .line 156
    move v5, v15

    .line 157
    .line 158
    move/from16 v20, v6

    .line 159
    .line 160
    move-object/from16 v6, v17

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    .line 165
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 166
    .line 167
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextColor:I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    .line 172
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 173
    .line 174
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextSize:I

    .line 175
    int-to-float v2, v2

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    .line 180
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v8, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    if-eqz v1, :cond_2

    .line 187
    .line 188
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 189
    .line 190
    iget-boolean v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 191
    .line 192
    if-eqz v2, :cond_1

    .line 193
    .line 194
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 195
    .line 196
    sub-int v5, v2, v8

    .line 197
    goto :goto_2

    .line 198
    :cond_1
    move v5, v8

    .line 199
    .line 200
    .line 201
    :goto_2
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    check-cast v1, Ljava/lang/String;

    .line 205
    int-to-float v2, v13

    .line 206
    .line 207
    add-float v6, v20, v2

    .line 208
    .line 209
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 210
    .line 211
    move/from16 v3, v18

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v1, v3, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    .line 216
    :cond_2
    add-int/lit8 v5, v8, 0x1

    .line 217
    .line 218
    move/from16 v8, v16

    .line 219
    .line 220
    move/from16 v14, v19

    .line 221
    .line 222
    move/from16 v6, v20

    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_3
    move/from16 v16, v8

    .line 227
    const/4 v14, 0x0

    .line 228
    .line 229
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 230
    .line 231
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    .line 236
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 237
    .line 238
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarHeight:I

    .line 239
    int-to-float v2, v2

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    .line 244
    iget-boolean v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 245
    .line 246
    if-eqz v1, :cond_4

    .line 247
    .line 248
    iget-object v6, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 249
    .line 250
    move-object/from16 v1, p1

    .line 251
    move v2, v11

    .line 252
    move v3, v15

    .line 253
    move v4, v9

    .line 254
    move v5, v15

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    goto :goto_3

    .line 259
    .line 260
    :cond_4
    iget-object v6, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 261
    .line 262
    move-object/from16 v1, p1

    .line 263
    move v2, v9

    .line 264
    move v3, v15

    .line 265
    move v4, v11

    .line 266
    move v5, v15

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 270
    .line 271
    :goto_3
    iget-boolean v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 272
    .line 273
    if-eqz v1, :cond_5

    .line 274
    .line 275
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    .line 276
    .line 277
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    .line 278
    div-float/2addr v1, v2

    .line 279
    .line 280
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 281
    .line 282
    iget v3, v0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 283
    sub-float/2addr v2, v3

    .line 284
    mul-float/2addr v1, v2

    .line 285
    sub-float/2addr v12, v1

    .line 286
    .line 287
    iput v12, v0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 288
    goto :goto_4

    .line 289
    .line 290
    :cond_5
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    .line 291
    .line 292
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    .line 293
    div-float/2addr v1, v2

    .line 294
    .line 295
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 296
    .line 297
    iget v3, v0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 298
    sub-float/2addr v2, v3

    .line 299
    mul-float/2addr v1, v2

    .line 300
    add-float/2addr v10, v1

    .line 301
    .line 302
    iput v10, v0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 303
    .line 304
    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    .line 305
    .line 306
    .line 307
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 308
    .line 309
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 310
    .line 311
    sub-float v3, v2, v16

    .line 312
    float-to-int v3, v3

    .line 313
    .line 314
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 315
    .line 316
    add-float v2, v2, v16

    .line 317
    float-to-int v2, v2

    .line 318
    .line 319
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 320
    .line 321
    sub-float v2, v15, v16

    .line 322
    float-to-int v2, v2

    .line 323
    .line 324
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 325
    .line 326
    add-float v15, v15, v16

    .line 327
    float-to-int v2, v15

    .line 328
    .line 329
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 330
    .line 331
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    .line 332
    .line 333
    if-nez v2, :cond_6

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 337
    move-result-object v2

    .line 338
    .line 339
    .line 340
    const v3, 0x7f080606

    .line 341
    .line 342
    .line 343
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 344
    move-result-object v2

    .line 345
    .line 346
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 350
    move-result-object v2

    .line 351
    .line 352
    iput-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    .line 353
    .line 354
    :cond_6
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7, v2, v14, v1, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 358
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionTextSize:I

    .line 8
    int-to-float v0, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    .line 17
    move-result p2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 23
    move-result v0

    .line 24
    sub-float/2addr p2, v0

    .line 25
    float-to-int p2, p2

    .line 26
    .line 27
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 30
    add-int/2addr v0, v1

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    .line 33
    add-int/2addr v1, v2

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v0

    .line 38
    add-int/2addr p2, v0

    .line 39
    .line 40
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 41
    add-int/2addr p2, v0

    .line 42
    .line 43
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarHeight:I

    .line 44
    add-int/2addr p2, v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const/high16 v1, 0x43340000    # 180.0f

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 54
    move-result v0

    .line 55
    float-to-int v0, v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 59
    move-result p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 63
    .line 64
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    .line 65
    int-to-float p1, p1

    .line 66
    .line 67
    const/high16 p2, 0x40000000    # 2.0f

    .line 68
    div-float/2addr p1, p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 72
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    add-float/2addr v0, p1

    .line 75
    .line 76
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 84
    move-result v1

    .line 85
    sub-int/2addr v0, v1

    .line 86
    int-to-float v0, v0

    .line 87
    sub-float/2addr v0, p1

    .line 88
    .line 89
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v1, v2

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 112
    move-result v3

    .line 113
    .line 114
    iget-object v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 123
    move-result v0

    .line 124
    int-to-float v0, v0

    .line 125
    div-float/2addr v0, p2

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 129
    move-result v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 133
    move-result v1

    .line 134
    int-to-float v1, v1

    .line 135
    add-float/2addr v1, v0

    .line 136
    .line 137
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 138
    int-to-float v0, v0

    .line 139
    add-float/2addr v1, v0

    .line 140
    .line 141
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 144
    .line 145
    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 146
    .line 147
    if-eqz v1, :cond_1

    .line 148
    move v1, v2

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_1
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    check-cast v0, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 163
    move-result v3

    .line 164
    .line 165
    iget-object v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 169
    .line 170
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 174
    move-result v0

    .line 175
    int-to-float v0, v0

    .line 176
    div-float/2addr v0, p2

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 180
    move-result p1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 184
    move-result p2

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 188
    move-result v0

    .line 189
    sub-int/2addr p2, v0

    .line 190
    int-to-float p2, p2

    .line 191
    sub-float/2addr p2, p1

    .line 192
    .line 193
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 194
    int-to-float p1, p1

    .line 195
    sub-float/2addr p2, p1

    .line 196
    .line 197
    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 198
    .line 199
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 200
    sub-float/2addr p2, p1

    .line 201
    .line 202
    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    .line 203
    .line 204
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    .line 205
    .line 206
    mul-int/lit8 p1, p1, 0x2

    .line 207
    int-to-float p1, p1

    .line 208
    sub-float/2addr p2, p1

    .line 209
    .line 210
    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    .line 211
    .line 212
    const/high16 p1, 0x3f800000    # 1.0f

    .line 213
    mul-float/2addr p2, p1

    .line 214
    .line 215
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 216
    int-to-float p1, p1

    .line 217
    div-float/2addr p2, p1

    .line 218
    .line 219
    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    .line 220
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v0, "progress"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 15
    .line 16
    const-string v0, "save_instance"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 24
    .line 25
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->setProgress(F)V

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 33
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "save_instance"

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    const-string v1, "progress"

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/poweruser/SectionSeekBar$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/SectionSeekBar$1;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    const/4 v3, 0x3

    .line 15
    .line 16
    if-eq v0, v3, :cond_4

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 21
    .line 22
    if-eqz v0, :cond_12

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/SectionSeekBar;->calThumbCxWhenSeekStepSection(F)F

    .line 34
    move-result v0

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreThumbCenterX:F

    .line 37
    .line 38
    cmpl-float v3, v0, v3

    .line 39
    .line 40
    if-eqz v3, :cond_12

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreThumbCenterX:F

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    move-result v0

    .line 50
    .line 51
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->dx:F

    .line 52
    add-float/2addr v0, v3

    .line 53
    .line 54
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 55
    .line 56
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 57
    .line 58
    cmpg-float v0, v0, v3

    .line 59
    .line 60
    if-gez v0, :cond_2

    .line 61
    .line 62
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 63
    .line 64
    :cond_2
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 65
    .line 66
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 67
    .line 68
    cmpl-float v0, v0, v3

    .line 69
    .line 70
    if-lez v0, :cond_3

    .line 71
    .line 72
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->calculateProgress()F

    .line 76
    move-result v0

    .line 77
    .line 78
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 84
    .line 85
    if-eqz v0, :cond_12

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 93
    move-result v4

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, p0, v3, v4}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 106
    .line 107
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/poweruser/SectionSeekBar$2;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SectionSeekBar$2;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    .line 119
    .line 120
    iget-wide v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    goto :goto_2

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->autoAdjustSection()V

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 131
    .line 132
    if-nez v0, :cond_7

    .line 133
    .line 134
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    .line 135
    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    iget-wide v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    iget-boolean v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 149
    .line 150
    if-nez v3, :cond_8

    .line 151
    .line 152
    iget-boolean v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    .line 153
    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    const-wide/16 v3, 0x12c

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :cond_8
    const-wide/16 v3, 0x0

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    new-instance v3, Lcom/narvii/poweruser/SectionSeekBar$3;

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, p0}, Lcom/narvii/poweruser/SectionSeekBar$3;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 176
    .line 177
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 178
    .line 179
    if-eqz v0, :cond_12

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 183
    move-result v3

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 187
    move-result v4

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, p0, v3, v4}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 191
    .line 192
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 196
    move-result v3

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 200
    move-result v4

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, p0, v3, v4}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->getProgressOnActionUp(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->performClick()Z

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->isThumbTouched(Landroid/view/MotionEvent;)Z

    .line 219
    move-result v0

    .line 220
    .line 221
    iput-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 222
    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 226
    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 230
    .line 231
    if-nez v0, :cond_b

    .line 232
    .line 233
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 234
    .line 235
    .line 236
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 237
    goto :goto_4

    .line 238
    .line 239
    :cond_c
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    .line 240
    .line 241
    if-eqz v0, :cond_11

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->isTrackTouched(Landroid/view/MotionEvent;)Z

    .line 245
    move-result v0

    .line 246
    .line 247
    if-eqz v0, :cond_11

    .line 248
    .line 249
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 250
    .line 251
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 252
    .line 253
    if-eqz v0, :cond_d

    .line 254
    .line 255
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 256
    .line 257
    if-nez v0, :cond_d

    .line 258
    .line 259
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 260
    .line 261
    :cond_d
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    .line 262
    .line 263
    if-eqz v0, :cond_e

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 267
    move-result v0

    .line 268
    .line 269
    .line 270
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/SectionSeekBar;->calThumbCxWhenSeekStepSection(F)F

    .line 271
    move-result v0

    .line 272
    .line 273
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreThumbCenterX:F

    .line 274
    .line 275
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 276
    goto :goto_3

    .line 277
    .line 278
    .line 279
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 280
    move-result v0

    .line 281
    .line 282
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 283
    .line 284
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 285
    .line 286
    cmpg-float v0, v0, v3

    .line 287
    .line 288
    if-gez v0, :cond_f

    .line 289
    .line 290
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 291
    .line 292
    :cond_f
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 293
    .line 294
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 295
    .line 296
    cmpl-float v0, v0, v3

    .line 297
    .line 298
    if-lez v0, :cond_10

    .line 299
    .line 300
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 301
    .line 302
    .line 303
    :cond_10
    :goto_3
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->calculateProgress()F

    .line 304
    move-result v0

    .line 305
    .line 306
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 310
    .line 311
    :cond_11
    :goto_4
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 315
    move-result v3

    .line 316
    sub-float/2addr v0, v3

    .line 317
    .line 318
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->dx:F

    .line 319
    .line 320
    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 321
    .line 322
    if-nez v0, :cond_13

    .line 323
    .line 324
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    .line 325
    .line 326
    if-nez v0, :cond_13

    .line 327
    .line 328
    .line 329
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 330
    move-result p1

    .line 331
    .line 332
    if-eqz p1, :cond_14

    .line 333
    :cond_13
    move v1, v2

    .line 334
    :cond_14
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public setCustomSectionTextArray(Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;)V
    .locals 2
    .param p1    # Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;->onCustomize(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    :goto_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 14
    .line 15
    if-gt p1, v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0, v0, v1}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p0, v0, v1}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->getProgressOnFinally(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 31
    .line 32
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 41
    return-void
.end method
