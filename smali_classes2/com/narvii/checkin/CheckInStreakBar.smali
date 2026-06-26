.class public Lcom/narvii/checkin/CheckInStreakBar;
.super Landroid/widget/FrameLayout;
.source "CheckInStreakBar.java"


# static fields
.field public static final TYPE_CHECKED:I = 0x2

.field public static final TYPE_NOT_CHECKED:I = 0x3

.field public static final TYPE_NOT_CHECKED_TODAY:I = 0x4

.field public static final TYPE_STRIKE_LOST:I = 0x1

.field public static final scaleArray:[F

.field public static final timeArray:[I


# instance fields
.field private animatingView:Landroid/view/View;

.field bounds:Landroid/graphics/Rect;

.field private breathAnimation:Landroid/view/animation/Animation;

.field childMaxSize:I

.field circleCount:I

.field circleSize:I

.field daysMarginTop:I

.field private fadeOutAnimator:Landroid/animation/Animator;

.field hs:I

.field private lastNeedFixView:Landroid/view/View;

.field private lineAnimating:Z

.field private lineAnimator:Landroid/animation/ValueAnimator;

.field private lineProgress:F

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lostView:Landroid/view/View;

.field paint:Landroid/graphics/Paint;

.field private scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

.field private streakMode:I

.field private textPaint:Landroid/text/TextPaint;

.field waitingLayout:Z

.field ws:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 40
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/checkin/CheckInStreakBar;->scaleArray:[F

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/checkin/CheckInStreakBar;->timeArray:[I

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f8ccccd    # 1.1f
        0x3f733333    # 0.95f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
        0xb9
        0xfa
        0x118
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    .line 38
    iput v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 83
    sget-object v3, Lcom/narvii/amino/R$styleable;->CheckInStreakBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleSize:I

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 86
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    iget p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    if-ne p1, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->daysMarginTop:I

    .line 91
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 92
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 93
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 95
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/checkin/CheckInStreakBar;)Landroid/animation/Animator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/checkin/CheckInStreakBar;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineProgress:F

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/checkin/CheckInStreakBar;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/checkin/CheckInStreakBar;)Lcom/narvii/util/ScaleBounceHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/checkin/CheckInStreakBar;Lcom/narvii/util/ScaleBounceHelper;)Lcom/narvii/util/ScaleBounceHelper;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/narvii/checkin/CheckInStreakBar;->viewFadeOut(Landroid/view/View;I)V

    return-void
.end method

.method private cancalAnimation()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 141
    iput-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/narvii/util/ScaleBounceHelper;->cancel()V

    .line 146
    iput-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 151
    iput-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    :cond_2
    return-void
.end method

.method private getCenterX(I)F
    .locals 3

    .line 424
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    move-result v1

    int-to-float p1, p1

    mul-float v1, v1, p1

    add-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    move-result v1

    int-to-float p1, p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getLastCell(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 181
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method private getLineWidth()F
    .locals 2

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private layoutCells()V
    .locals 7

    const/4 v0, 0x0

    .line 377
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 378
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 379
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getCenterX(I)F

    move-result v2

    float-to-int v2, v2

    .line 380
    iget v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTouchDelegateForLostView()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 358
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 360
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    move-result v0

    float-to-int v0, v0

    .line 361
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 362
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 363
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 366
    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 369
    :cond_1
    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 370
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :goto_0
    return-void
.end method

.method private shouldRunCheckInAnimation(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getLastCell(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 162
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->getLastCell(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 166
    iget-object v4, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 167
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 168
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private startCheckInAnimation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    const/4 p1, 0x1

    .line 311
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimating:Z

    const/4 p1, 0x0

    .line 312
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineProgress:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 314
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 315
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 316
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/checkin/CheckInStreakBar$2;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInStreakBar$2;-><init>(Lcom/narvii/checkin/CheckInStreakBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/checkin/CheckInStreakBar$3;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInStreakBar$3;-><init>(Lcom/narvii/checkin/CheckInStreakBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private viewFadeOut(Landroid/view/View;I)V
    .locals 3

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 186
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/narvii/checkin/CheckInStreakBar$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/checkin/CheckInStreakBar$1;-><init>(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 198
    iget-object p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 199
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChildMaxSize()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    return v0
.end method

.method public getCircleCount()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    return v0
.end method

.method public getLastNeedFixView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    return-object v0
.end method

.method public getPath(IZ)Landroid/graphics/Path;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 437
    iget-boolean p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimating:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    move-result v1

    .line 442
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    if-gt v0, p1, :cond_2

    .line 444
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getCenterX(I)F

    move-result v4

    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleSize:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    :cond_2
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleSize:I

    int-to-float v0, v0

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v0, v4

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float v6, v5

    sub-float/2addr v6, v0

    div-float/2addr v6, v3

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    int-to-float p1, p1

    if-eqz p2, :cond_3

    .line 449
    iget p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineProgress:F

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    add-float/2addr p1, p2

    mul-float v1, v1, p1

    add-float/2addr v5, v1

    .line 451
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 452
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    sub-float/2addr p1, v5

    goto :goto_3

    .line 454
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    add-float/2addr p1, p2

    .line 458
    :goto_3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    sub-float/2addr p2, v1

    goto :goto_4

    .line 461
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v5

    .line 463
    :goto_4
    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr v0, v4

    invoke-direct {v1, p1, v4, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 129
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 401
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/narvii/checkin/CheckInStreakBar;->getPath(IZ)Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 404
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 405
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    sub-int/2addr v0, v1

    .line 406
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v2, 0x0

    .line 412
    invoke-virtual {p0, v0, v2}, Lcom/narvii/checkin/CheckInStreakBar;->getPath(IZ)Landroid/graphics/Path;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 414
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 415
    :goto_0
    iget v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    if-ge v0, v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 417
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f10c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    :goto_2
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getCenterX(I)F

    move-result v4

    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->waitingLayout:Z

    .line 353
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->layoutCells()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 112
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->ws:I

    .line 113
    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->hs:I

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_1

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 118
    iget p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 119
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    int-to-float p2, p2

    .line 120
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->daysMarginTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public updateCells(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->shouldRunCheckInAnimation(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->startCheckInAnimation(Ljava/util/List;)V

    return-void

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->cancalAnimation()V

    .line 220
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 222
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 226
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-gez v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    neg-int v4, v1

    if-ge v3, v4, :cond_4

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b00de

    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 231
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 236
    iput-boolean v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->waitingLayout:Z

    const/4 v3, 0x0

    .line 239
    iput-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    .line 240
    iput-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    .line 241
    iput-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    const/4 v4, 0x0

    :goto_2
    const v5, 0x7f09012c

    if-ge v4, v0, :cond_a

    .line 244
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 245
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 247
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f09077f

    .line 249
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0906b2

    .line 250
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0904e0

    .line 253
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v13, 0x8

    if-eq v6, v11, :cond_8

    .line 256
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 258
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v10, 0x7f080831

    .line 259
    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f090562

    .line 264
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eq v6, v1, :cond_7

    if-eq v6, v12, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    goto :goto_3

    .line 275
    :cond_5
    iput-object v7, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    const v6, 0x7f0802f2

    .line 276
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_6
    const v6, 0x7f0802f0

    .line 272
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_7
    const v6, 0x7f0802f1

    .line 268
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iput-object v7, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 281
    :cond_8
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iput-object v10, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    .line 285
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_9

    .line 286
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 287
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 289
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v12}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 291
    :cond_9
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    :cond_a
    iget p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 299
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    const v0, 0x7f080236

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 305
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
