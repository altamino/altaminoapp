.class public Lcom/narvii/poweruser/SectionSeekBar;
.super Landroid/view/View;
.source "SectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;,
        Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListenerAdapter;,
        Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;
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

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/poweruser/SectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 94
    sget-object v0, Lcom/narvii/amino/R$styleable;->SectionSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    const/4 p2, 0x3

    const/high16 p3, 0x42c80000    # 100.0f

    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 97
    iget p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    const/4 p2, 0x2

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isFloatType:Z

    .line 99
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

    const/16 p2, 0xa

    const/4 v0, 0x6

    .line 100
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    const/16 v0, 0x11

    const v2, -0x19191a

    .line 101
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextSize:I

    .line 105
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextColor:I

    const/16 p2, 0xe

    .line 106
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    const/16 p2, 0xd

    .line 107
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 109
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

    .line 110
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

    const/4 p2, 0x1

    const/16 v0, 0xb

    .line 111
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextInterval:I

    .line 112
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    const/4 v0, -0x1

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v4, 0xc8

    goto :goto_0

    :cond_0
    int-to-long v4, v0

    .line 114
    :goto_0
    iput-wide v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    const/16 v0, 0x10

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    const/4 v0, 0x7

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionTextSize:I

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    .line 122
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 123
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    .line 128
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 130
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 132
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    .line 135
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->initConfigByPriority()V

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0804d8

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/SectionSeekBar;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->autoAdjustSection()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/poweruser/SectionSeekBar;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/poweruser/SectionSeekBar;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    return p1
.end method

.method static synthetic access$302(Lcom/narvii/poweruser/SectionSeekBar;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/poweruser/SectionSeekBar;)F
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->calculateProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    return-object p0
.end method

.method private autoAdjustSection()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 488
    :goto_0
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v1, v3, :cond_1

    int-to-float v2, v1

    .line 489
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    mul-float v2, v2, v3

    iget v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    add-float/2addr v2, v4

    .line 490
    iget v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_0

    sub-float/2addr v4, v2

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_1
    :goto_1
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 496
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 499
    :goto_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x0

    if-nez v3, :cond_4

    .line 503
    iget v6, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    sub-float v7, v6, v2

    iget v8, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v8, v9

    const/4 v10, 0x2

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_3

    new-array v1, v10, [F

    aput v6, v1, v0

    aput v2, v1, v5

    .line 504
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-array v2, v10, [F

    aput v6, v2, v0

    add-int/2addr v1, v5

    int-to-float v1, v1

    mul-float v1, v1, v8

    .line 506
    iget v6, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    add-float/2addr v1, v6

    aput v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_3
    move-object v6, v1

    .line 508
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 509
    new-instance v1, Lcom/narvii/poweruser/SectionSeekBar$4;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/SectionSeekBar$4;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    if-nez v3, :cond_5

    .line 523
    iget-wide v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v6, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 525
    :cond_5
    new-instance v0, Lcom/narvii/poweruser/SectionSeekBar$5;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SectionSeekBar$5;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 544
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .locals 5

    .line 455
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    .line 456
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

    .line 468
    :goto_0
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v2, v3, :cond_3

    int-to-float v1, v2

    .line 469
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    mul-float v1, v1, v3

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

    .line 475
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    int-to-float p1, v2

    mul-float p1, p1, v3

    add-float/2addr p1, v0

    return p1
.end method

.method private calculateProgress()F
    .locals 2

    .line 558
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v0, :cond_0

    .line 559
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    .line 561
    :cond_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    goto :goto_0
.end method

.method private float2String(F)Ljava/lang/String;
    .locals 0

    .line 548
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->formatFloat(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatFloat(F)F
    .locals 2

    float-to-double v0, p1

    .line 552
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 553
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    return p1
.end method

.method private initConfigByPriority()V
    .locals 3

    .line 141
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 143
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 145
    :cond_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 147
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    .line 148
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    .line 150
    :cond_1
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 151
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 153
    :cond_2
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 154
    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 156
    :cond_3
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gtz v0, :cond_4

    const/16 v0, 0xa

    .line 157
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    .line 159
    :cond_4
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackSize:I

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarHeight:I

    .line 160
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    .line 161
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    .line 163
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 164
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isFloatType:Z

    .line 166
    :cond_5
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextInterval:I

    if-ge v0, v2, :cond_6

    .line 167
    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextInterval:I

    .line 170
    :cond_6
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->initSectionTextArray()V

    .line 172
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 173
    iput-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    .line 174
    iput-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 176
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    if-eqz v0, :cond_8

    .line 177
    iput-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    .line 179
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    if-eqz v0, :cond_a

    .line 180
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    .line 181
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_9

    .line 182
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    .line 184
    :cond_9
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    :cond_a
    return-void
.end method

.method private initSectionTextArray()V
    .locals 4

    const/4 v0, 0x0

    .line 190
    :goto_0
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v0, v1, :cond_2

    .line 191
    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    int-to-float v3, v0

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    int-to-float v3, v0

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 192
    :goto_1
    iget-object v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    iget-boolean v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->isFloatType:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/narvii/poweruser/SectionSeekBar;->float2String(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isThumbTouched(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 435
    :cond_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 436
    iget-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    add-float/2addr v2, v0

    .line 437
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v4, v2

    mul-float v3, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v0

    mul-float v2, v2, p1

    add-float/2addr v3, v2

    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v0, v2

    mul-float p1, p1, v0

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isTrackTouched(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private processProgress()F
    .locals 6

    .line 588
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 590
    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    if-eqz v1, :cond_8

    .line 591
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 593
    iget-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-eqz v2, :cond_4

    .line 594
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mMax:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 599
    :goto_0
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v2, v3, :cond_4

    int-to-float v3, v2

    .line 600
    iget v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    mul-float v3, v3, v4

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

    .line 611
    :cond_4
    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_6

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 613
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    .line 614
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    return v0

    :cond_5
    return v2

    :cond_6
    sub-float v1, v2, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    return v2

    .line 622
    :cond_7
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionValue:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    .line 623
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreSecValue:F

    :cond_8
    return v0
.end method


# virtual methods
.method public getOnProgressChangedListener()Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 580
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->processProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getProgressFloat()F
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->processProgress()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/SectionSeekBar;->formatFloat(F)F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 228
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    .line 234
    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v4, v5

    add-float v9, v1, v8

    .line 235
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    int-to-float v4, v1

    add-float v10, v9, v4

    sub-float v11, v2, v8

    int-to-float v1, v1

    sub-float v12, v11, v1

    .line 238
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v13, v1

    .line 240
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    int-to-float v2, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    add-int v3, v2, v13

    .line 243
    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v1, v1

    add-float/2addr v1, v8

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int v14, v3, v1

    int-to-float v15, v14

    int-to-float v6, v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 252
    :goto_0
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt v5, v1, :cond_3

    int-to-float v1, v5

    .line 253
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    mul-float v2, v2, v1

    add-float v3, v10, v2

    .line 254
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 257
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    sub-int v1, v14, v1

    int-to-float v4, v1

    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move v2, v3

    move/from16 v17, v3

    move v3, v4

    move/from16 v18, v14

    const/4 v14, 0x0

    move/from16 v4, v17

    move v14, v5

    move v5, v15

    move/from16 v19, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 260
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    iget-boolean v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    sub-int v5, v2, v14

    goto :goto_2

    :cond_1
    move v5, v14

    :goto_2
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    int-to-float v2, v13

    add-float v6, v19, v2

    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    move/from16 v3, v17

    invoke-virtual {v7, v1, v3, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v5, v14, 0x1

    move/from16 v14, v18

    move/from16 v6, v19

    goto/16 :goto_0

    .line 268
    :cond_3
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    iget-boolean v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v1, :cond_4

    .line 271
    iget-object v6, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move v4, v9

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 273
    :cond_4
    iget-object v6, v0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v15

    move v4, v11

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    :goto_3
    iget-boolean v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v1, :cond_5

    .line 277
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    div-float/2addr v1, v2

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    iget v3, v0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    sub-float/2addr v12, v1

    iput v12, v0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    goto :goto_4

    .line 279
    :cond_5
    iget v1, v0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mDelta:F

    div-float/2addr v1, v2

    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    iget v3, v0, Lcom/narvii/poweruser/SectionSeekBar;->mMin:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v10, v1

    iput v10, v0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 282
    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 283
    iget v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    sub-float v3, v2, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    add-float/2addr v2, v8

    float-to-int v2, v2

    .line 284
    iput v2, v1, Landroid/graphics/Rect;->right:I

    sub-float v2, v15, v8

    float-to-int v2, v2

    .line 285
    iput v2, v1, Landroid/graphics/Rect;->top:I

    add-float/2addr v15, v8

    float-to-int v2, v15

    .line 286
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 287
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0804d8

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 289
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    .line 291
    :cond_6
    iget-object v2, v0, Lcom/narvii/poweruser/SectionSeekBar;->bmpIndicator:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 200
    iget-object p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    iget-object p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 202
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->sectionLineHeight:I

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    .line 203
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarHeight:I

    add-int/2addr p2, v0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 206
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->indicatorSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 210
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 212
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    .line 215
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    iget-boolean v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isRtl:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 217
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTextSpace:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    .line 220
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    iget p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    .line 221
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mTrackLength:F

    iget p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->trackBarContentPadding:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    .line 222
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRealTrackLength:F

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iget p2, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionOffset:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 662
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 663
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 664
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    const-string v0, "save_instance"

    .line 665
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 666
    iget p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->setProgress(F)V

    return-void

    .line 670
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 654
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 655
    iget v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 298
    new-instance p1, Lcom/narvii/poweruser/SectionSeekBar$1;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/SectionSeekBar$1;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    goto/16 :goto_6

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_13

    .line 355
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/SectionSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    .line 357
    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreThumbCenterX:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 358
    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->dx:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 364
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 365
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 367
    :cond_3
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 368
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_13

    .line 373
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 376
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_13

    .line 377
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    goto/16 :goto_6

    .line 385
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 387
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isAutoAdjustSectionMark:Z

    if-eqz v0, :cond_7

    .line 388
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-eqz v0, :cond_6

    .line 389
    new-instance v0, Lcom/narvii/poweruser/SectionSeekBar$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SectionSeekBar$2;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    iget-wide v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 396
    :cond_6
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->autoAdjustSection()V

    goto :goto_3

    .line 398
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-eqz v0, :cond_a

    .line 399
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mAnimDuration:J

    .line 400
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-eqz v3, :cond_9

    const-wide/16 v3, 0x12c

    goto :goto_2

    :cond_9
    const-wide/16 v3, 0x0

    .line 401
    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/narvii/poweruser/SectionSeekBar$3;

    invoke-direct {v3, p0}, Lcom/narvii/poweruser/SectionSeekBar$3;-><init>(Lcom/narvii/poweruser/SectionSeekBar;)V

    .line 402
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 417
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_13

    .line 418
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 419
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->getProgressOnActionUp(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    goto/16 :goto_6

    .line 317
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->performClick()Z

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 320
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->isThumbTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 321
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_d

    .line 322
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    if-nez v0, :cond_c

    .line 323
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 326
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 327
    :cond_d
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->isTrackTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 328
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    .line 329
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    if-nez v0, :cond_e

    .line 330
    iput-boolean v2, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 332
    :cond_e
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekStepSection:Z

    if-eqz v0, :cond_f

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/SectionSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    goto :goto_4

    .line 335
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 336
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mLeft:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_10

    .line 337
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 339
    :cond_10
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    iget v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_11

    .line 340
    iput v3, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    .line 344
    :cond_11
    :goto_4
    invoke-direct {p0}, Lcom/narvii/poweruser/SectionSeekBar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 348
    :cond_12
    :goto_5
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mThumbCenterX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->dx:F

    .line 425
    :cond_13
    :goto_6
    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isThumbOnDragging:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->isTouchToSeek:Z

    if-nez v0, :cond_14

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 308
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setCustomSectionTextArray(Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;)V
    .locals 2

    .line 641
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    iget-object v1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;->onCustomize(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 642
    :goto_0
    iget v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionCount:I

    if-gt p1, v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar;->mSectionTextArray:Landroid/util/SparseArray;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 566
    iput p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgress:F

    .line 568
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 570
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->mProgressListener:Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->getProgressOnFinally(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 572
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->isSeekBySection:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 573
    iput-boolean p1, p0, Lcom/narvii/poweruser/SectionSeekBar;->triggerSeekBySection:Z

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
