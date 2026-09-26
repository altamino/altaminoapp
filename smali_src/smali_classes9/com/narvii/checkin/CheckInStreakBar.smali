.class public Lcom/narvii/checkin/CheckInStreakBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/checkin/CheckInStreakBar;->scaleArray:[F

    const/16 v0, 0xfa

    const/16 v1, 0x118

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0xb9

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x7

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Paint;

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 43
    .line 44
    sget-object v4, Lcom/narvii/amino/R$styleable;->CheckInStreakBar:[I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 53
    move-result p2

    .line 54
    .line 55
    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleSize:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 59
    move-result p2

    .line 60
    .line 61
    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 65
    move-result p2

    .line 66
    .line 67
    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .line 72
    iget p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    .line 73
    .line 74
    if-ne p1, v1, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const/high16 p2, 0x41000000    # 8.0f

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 84
    move-result p1

    .line 85
    .line 86
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->daysMarginTop:I

    .line 87
    .line 88
    new-instance p1, Landroid/text/TextPaint;

    .line 89
    .line 90
    .line 91
    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 109
    .line 110
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    const/high16 v0, 0x41300000    # 11.0f

    .line 122
    .line 123
    .line 124
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 125
    move-result p2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/checkin/CheckInStreakBar;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/checkin/CheckInStreakBar;)Lcom/narvii/util/ScaleBounceHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/checkin/CheckInStreakBar;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimating:Z

    return-void
.end method

.method private cancalAnimation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/ScaleBounceHelper;->cancel()V

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 45
    :cond_2
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/checkin/CheckInStreakBar;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineProgress:F

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/checkin/CheckInStreakBar;Lcom/narvii/util/ScaleBounceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->scaleBounceHelper:Lcom/narvii/util/ScaleBounceHelper;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/checkin/CheckInStreakBar;->viewFadeOut(Landroid/view/View;I)V

    return-void
.end method

.method private getCenterX(I)F
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v0, v2

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v2, v1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    .line 26
    move-result v1

    .line 27
    int-to-float p1, p1

    .line 28
    mul-float/2addr v1, p1

    .line 29
    add-float/2addr v2, v1

    .line 30
    sub-float/2addr v0, v2

    .line 31
    return v0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 39
    int-to-float v2, v2

    .line 40
    div-float/2addr v2, v1

    .line 41
    add-float/2addr v0, v2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    .line 45
    move-result v1

    .line 46
    int-to-float p1, p1

    .line 47
    mul-float/2addr v1, p1

    .line 48
    add-float/2addr v0, v1

    .line 49
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .line 21
    return-object p1
.end method

.method private getLineWidth()F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    mul-float/2addr v0, v1

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    int-to-float v1, v1

    .line 27
    div-float/2addr v0, v1

    .line 28
    return v0
.end method

.method private layoutCells()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getCenterX(I)F

    .line 15
    move-result v2

    .line 16
    float-to-int v2, v2

    .line 17
    .line 18
    iget v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 19
    int-to-float v3, v3

    .line 20
    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    div-float/2addr v3, v4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    add-float/2addr v3, v4

    .line 29
    float-to-int v3, v3

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    move-result v4

    .line 36
    .line 37
    div-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    sub-int v4, v2, v4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result v5

    .line 44
    .line 45
    div-int/lit8 v5, v5, 0x2

    .line 46
    .line 47
    sub-int v5, v3, v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result v6

    .line 52
    .line 53
    div-int/lit8 v6, v6, 0x2

    .line 54
    add-int/2addr v2, v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    move-result v6

    .line 59
    .line 60
    div-int/lit8 v6, v6, 0x2

    .line 61
    add-int/2addr v3, v6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 65
    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method private setTouchDelegateForLostView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    .line 13
    move-result v0

    .line 14
    float-to-int v0, v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    div-int/lit8 v0, v0, 0x2

    .line 21
    sub-int/2addr v2, v0

    .line 22
    .line 23
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    if-gez v2, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 31
    add-int/2addr v2, v0

    .line 32
    .line 33
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-le v2, v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v1

    .line 46
    .line 47
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    :cond_1
    new-instance v0, Landroid/view/TouchDelegate;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->bounds:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 65
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    return v2

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getLastCell(Ljava/util/List;)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->getLastCell(Ljava/util/List;)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 31
    const/4 v3, 0x4

    .line 32
    .line 33
    if-ne v0, v3, :cond_3

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x2

    .line 41
    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    sub-int/2addr v0, v1

    .line 51
    move v3, v2

    .line 52
    .line 53
    :goto_0
    if-ge v3, v0, :cond_2

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 68
    .line 69
    if-nez v4, :cond_1

    .line 70
    return v2

    .line 71
    .line 72
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return v1

    .line 75
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimating:Z

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineProgress:F

    .line 9
    const/4 p1, 0x2

    .line 10
    .line 11
    new-array p1, p1, [F

    .line 12
    .line 13
    .line 14
    fill-array-data p1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    const-wide/16 v0, 0x12c

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/checkin/CheckInStreakBar$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInStreakBar$2;-><init>(Lcom/narvii/checkin/CheckInStreakBar;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/checkin/CheckInStreakBar$3;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInStreakBar$3;-><init>(Lcom/narvii/checkin/CheckInStreakBar;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    return-void

    .line 52
    nop

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private viewFadeOut(Landroid/view/View;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f02001e

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/checkin/CheckInStreakBar$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/narvii/checkin/CheckInStreakBar$1;-><init>(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 24
    int-to-long v1, p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->fadeOutAnimator:Landroid/animation/Animator;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 38
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public getChildMaxSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    return v0
.end method

.method public getCircleCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    return v0
.end method

.method public getLastNeedFixView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    return-object v0
.end method

.method public getPath(IZ)Landroid/graphics/Path;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineAnimating:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p2, v0

    .line 11
    .line 12
    :goto_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->getLineWidth()F

    .line 18
    move-result v1

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Path;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 24
    .line 25
    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    if-gt v0, p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getCenterX(I)F

    .line 31
    move-result v4

    .line 32
    .line 33
    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 34
    int-to-float v5, v5

    .line 35
    div-float/2addr v5, v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    move-result v6

    .line 40
    int-to-float v6, v6

    .line 41
    add-float/2addr v5, v6

    .line 42
    .line 43
    iget v6, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleSize:I

    .line 44
    int-to-float v6, v6

    .line 45
    div-float/2addr v6, v3

    .line 46
    .line 47
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleSize:I

    .line 56
    int-to-float v0, v0

    .line 57
    .line 58
    const/high16 v4, 0x40400000    # 3.0f

    .line 59
    div-float/2addr v0, v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 63
    move-result v4

    .line 64
    int-to-float v4, v4

    .line 65
    .line 66
    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 67
    int-to-float v6, v5

    .line 68
    sub-float/2addr v6, v0

    .line 69
    div-float/2addr v6, v3

    .line 70
    add-float/2addr v4, v6

    .line 71
    int-to-float v5, v5

    .line 72
    div-float/2addr v5, v3

    .line 73
    int-to-float p1, p1

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iget p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->lineProgress:F

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 p2, 0x0

    .line 80
    :goto_2
    add-float/2addr p1, p2

    .line 81
    mul-float/2addr v1, p1

    .line 82
    add-float/2addr v5, v1

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 86
    move-result p1

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    move-result p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 96
    move-result p2

    .line 97
    sub-int/2addr p1, p2

    .line 98
    int-to-float p1, p1

    .line 99
    sub-float/2addr p1, v5

    .line 100
    goto :goto_3

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 104
    move-result p1

    .line 105
    int-to-float p1, p1

    .line 106
    .line 107
    iget p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 108
    int-to-float p2, p2

    .line 109
    div-float/2addr p2, v3

    .line 110
    add-float/2addr p1, p2

    .line 111
    .line 112
    .line 113
    :goto_3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 114
    move-result p2

    .line 115
    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 120
    move-result p2

    .line 121
    int-to-float p2, p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 125
    move-result v1

    .line 126
    int-to-float v1, v1

    .line 127
    .line 128
    iget v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 129
    int-to-float v5, v5

    .line 130
    div-float/2addr v5, v3

    .line 131
    add-float/2addr v1, v5

    .line 132
    sub-float/2addr p2, v1

    .line 133
    goto :goto_4

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 137
    move-result p2

    .line 138
    int-to-float p2, p2

    .line 139
    add-float/2addr p2, v5

    .line 140
    .line 141
    :goto_4
    new-instance v1, Landroid/graphics/RectF;

    .line 142
    add-float/2addr v0, v4

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, p1, v4, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 146
    .line 147
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 151
    return-object v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 15
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 6
    .line 7
    const/16 v1, 0x7f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/narvii/checkin/CheckInStreakBar;->getPath(IZ)Landroid/graphics/Path;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/16 v2, 0xff

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 36
    move-result v0

    .line 37
    .line 38
    add-int/lit8 v2, v0, -0x1

    .line 39
    .line 40
    iget-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 52
    move-result v4

    .line 53
    sub-int/2addr v4, v1

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    check-cast v3, Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x4

    .line 65
    .line 66
    if-ne v3, v4, :cond_0

    .line 67
    .line 68
    add-int/lit8 v2, v0, -0x2

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getPath(IZ)Landroid/graphics/Path;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->paint:Landroid/graphics/Paint;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    .line 85
    .line 86
    if-ne v2, v1, :cond_2

    .line 87
    .line 88
    :goto_0
    iget v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->circleCount:I

    .line 89
    .line 90
    if-ge v0, v2, :cond_2

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 93
    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    move-result v2

    .line 97
    sub-int/2addr v2, v1

    .line 98
    .line 99
    if-ne v0, v2, :cond_1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    const v3, 0x7f1211d4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    add-int/lit8 v3, v0, 0x1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, ""

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-direct {p0, v0}, Lcom/narvii/checkin/CheckInStreakBar;->getCenterX(I)F

    .line 134
    move-result v3

    .line 135
    .line 136
    iget v4, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 140
    move-result v5

    .line 141
    add-int/2addr v4, v5

    .line 142
    int-to-float v4, v4

    .line 143
    .line 144
    iget-object v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 148
    move-result v5

    .line 149
    sub-float/2addr v4, v5

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    move-result-object v5

    .line 154
    .line 155
    const/high16 v6, 0x40e00000    # 7.0f

    .line 156
    .line 157
    .line 158
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 159
    move-result v5

    .line 160
    int-to-float v5, v5

    .line 161
    add-float/2addr v4, v5

    .line 162
    .line 163
    iget-object v5, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->waitingLayout:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->layoutCells()V

    .line 7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->ws:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->hs:I

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result p2

    .line 12
    .line 13
    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-eq p2, v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iget p2, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v0

    .line 26
    add-int/2addr p2, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v0

    .line 31
    add-int/2addr p2, v0

    .line 32
    .line 33
    iget v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    int-to-float p2, p2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 43
    move-result v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->textPaint:Landroid/text/TextPaint;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 49
    move-result v1

    .line 50
    sub-float/2addr v0, v1

    .line 51
    .line 52
    iget v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->daysMarginTop:I

    .line 53
    int-to-float v1, v1

    .line 54
    add-float/2addr v0, v1

    .line 55
    add-float/2addr p2, v0

    .line 56
    float-to-int p2, p2

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 60
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->shouldRunCheckInAnimation(Ljava/util/List;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->startCheckInAnimation(Ljava/util/List;)V

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInStreakBar;->cancalAnimation()V

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->list:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v0

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    if-lez v1, :cond_3

    .line 40
    move v3, v2

    .line 41
    .line 42
    :goto_0
    if-ge v3, v1, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    if-gez v1, :cond_4

    .line 51
    move v3, v2

    .line 52
    :goto_1
    neg-int v4, v1

    .line 53
    .line 54
    if-ge v3, v4, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    const v5, 0x7f0d00f5

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    .line 73
    iget v6, p0, Lcom/narvii/checkin/CheckInStreakBar;->childMaxSize:I

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/4 v1, 0x1

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/narvii/checkin/CheckInStreakBar;->waitingLayout:Z

    .line 89
    const/4 v3, 0x0

    .line 90
    .line 91
    iput-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    .line 92
    .line 93
    iput-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    .line 94
    .line 95
    iput-object v3, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    .line 96
    move v4, v2

    .line 97
    .line 98
    .line 99
    :goto_2
    const v5, 0x7f0a01c8

    .line 100
    .line 101
    if-ge v4, v0, :cond_a

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    check-cast v6, Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const v8, 0x7f0a0a1b

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v8

    .line 126
    .line 127
    .line 128
    const v9, 0x7f0a083f

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v9

    .line 133
    .line 134
    .line 135
    const v10, 0x7f0a062f

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v10

    .line 140
    const/4 v11, 0x4

    .line 141
    const/4 v12, 0x2

    .line 142
    .line 143
    const/16 v13, 0x8

    .line 144
    .line 145
    if-eq v6, v11, :cond_8

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v5

    .line 153
    .line 154
    .line 155
    const v10, 0x7f080a48

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    const v5, 0x7f0a06d5

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    check-cast v5, Landroid/widget/ImageView;

    .line 174
    .line 175
    if-eq v6, v1, :cond_7

    .line 176
    .line 177
    if-eq v6, v12, :cond_6

    .line 178
    const/4 v8, 0x3

    .line 179
    .line 180
    if-eq v6, v8, :cond_5

    .line 181
    goto :goto_3

    .line 182
    .line 183
    :cond_5
    iput-object v7, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    .line 184
    .line 185
    .line 186
    const v6, 0x7f0803fc

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    goto :goto_3

    .line 191
    .line 192
    .line 193
    :cond_6
    const v6, 0x7f0803fa

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    goto :goto_3

    .line 198
    .line 199
    .line 200
    :cond_7
    const v6, 0x7f0803fb

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    .line 205
    iput-object v7, p0, Lcom/narvii/checkin/CheckInStreakBar;->lostView:Landroid/view/View;

    .line 206
    .line 207
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 208
    goto :goto_2

    .line 209
    .line 210
    .line 211
    :cond_8
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    iput-object v10, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    .line 217
    .line 218
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 219
    .line 220
    if-nez p1, :cond_9

    .line 221
    .line 222
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 223
    .line 224
    const/high16 v0, 0x3f800000    # 1.0f

    .line 225
    .line 226
    .line 227
    const v2, 0x3e99999a    # 0.3f

    .line 228
    .line 229
    .line 230
    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 231
    .line 232
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 233
    .line 234
    const-wide/16 v2, 0x3e8

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    .line 239
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 240
    const/4 v0, -0x1

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 244
    .line 245
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v12}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 249
    .line 250
    :cond_9
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->animatingView:Landroid/view/View;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar;->breathAnimation:Landroid/view/animation/Animation;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    .line 257
    :cond_a
    iget p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->streakMode:I

    .line 258
    .line 259
    if-ne p1, v1, :cond_b

    .line 260
    .line 261
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar;->lastNeedFixView:Landroid/view/View;

    .line 262
    .line 263
    if-eqz p1, :cond_b

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    if-eqz p1, :cond_b

    .line 270
    .line 271
    .line 272
    const v0, 0x7f08032e

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 276
    .line 277
    .line 278
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 279
    return-void
.end method
