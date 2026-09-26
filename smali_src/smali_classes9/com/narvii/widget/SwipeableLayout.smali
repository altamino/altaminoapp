.class public Lcom/narvii/widget/SwipeableLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/SwipeableLayout$SwipeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x2

.field public static final DIRECTION_LEFT:I = 0x4

.field public static final DIRECTION_RIGHT:I = 0x8

.field public static final DIRECTION_UP:I = 0x1

.field private static final LEFT_RIGHT:I = 0x2

.field private static final NONE:I = 0x0

.field private static final SWIPE_MIN_PADDING:I = 0xa

.field private static final UP_DOWN:I = 0x1


# instance fields
.field private allowDirection:I

.field private appearAnimationDirection:I

.field private baseLayoutPositionX:I

.field private baseLayoutPositionY:I

.field private direction:I

.field private lb:I

.field private listView:Landroid/widget/AbsListView;

.field private listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

.field private lt:I

.field private previousFingerPositionX:I

.field private previousFingerPositionY:I

.field private rb:I

.field private rt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/SwipeableLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/SwipeableLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    return-object p0
.end method

.method private canListScroll(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/SwipeableLayout;->isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    return v1

    .line 14
    :cond_1
    const/4 p1, 0x1

    .line 15
    .line 16
    if-eq p2, p1, :cond_5

    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v2, -0x1

    .line 19
    .line 20
    if-eq p2, v0, :cond_4

    .line 21
    const/4 v0, 0x4

    .line 22
    .line 23
    if-eq p2, v0, :cond_3

    .line 24
    .line 25
    const/16 p1, 0x8

    .line 26
    .line 27
    if-eq p2, p1, :cond_2

    .line 28
    return v1

    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)Z

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    .line 37
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)Z

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    .line 44
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->g(Landroid/view/View;I)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    .line 51
    :cond_5
    iget-object p2, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->g(Landroid/view/View;I)Z

    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method private isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11
    .line 12
    aget v2, v1, v0

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    aget v1, v1, v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result v4

    .line 20
    add-int/2addr v4, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    move-result p1

    .line 25
    add-int/2addr p1, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 29
    move-result v5

    .line 30
    int-to-float v1, v1

    .line 31
    .line 32
    cmpl-float v1, v5, v1

    .line 33
    .line 34
    if-ltz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    move-result v1

    .line 39
    int-to-float p1, p1

    .line 40
    .line 41
    cmpg-float p1, v1, p1

    .line 42
    .line 43
    if-gtz p1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 47
    move-result p1

    .line 48
    int-to-float v1, v2

    .line 49
    .line 50
    cmpl-float p1, p1, v1

    .line 51
    .line 52
    if-ltz p1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 56
    move-result p1

    .line 57
    int-to-float p2, v4

    .line 58
    .line 59
    cmpg-float p1, p1, p2

    .line 60
    .line 61
    if-gtz p1, :cond_1

    .line 62
    return v3

    .line 63
    :cond_1
    return v0
.end method


# virtual methods
.method public appearAnimation(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    .line 5
    if-eq p1, v2, :cond_4

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v3, 0x4

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    if-eq p1, v3, :cond_2

    .line 14
    .line 15
    if-ne p1, v4, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    goto :goto_4

    .line 19
    .line 20
    :cond_2
    :goto_0
    if-ne p1, v4, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p1

    .line 25
    neg-int p1, p1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    :goto_1
    new-array v1, v1, [F

    .line 43
    int-to-float p1, p1

    .line 44
    .line 45
    aput p1, v1, v0

    .line 46
    .line 47
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 48
    int-to-float p1, p1

    .line 49
    .line 50
    aput p1, v1, v2

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance v1, Lcom/narvii/widget/SwipeableLayout$7;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/narvii/widget/SwipeableLayout$7;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    goto :goto_4

    .line 64
    .line 65
    :cond_4
    :goto_2
    if-ne p1, v1, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 69
    move-result p1

    .line 70
    neg-int p1, p1

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .line 87
    :goto_3
    new-array v1, v1, [F

    .line 88
    int-to-float p1, p1

    .line 89
    .line 90
    aput p1, v1, v0

    .line 91
    .line 92
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 93
    int-to-float p1, p1

    .line 94
    .line 95
    aput p1, v1, v2

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    new-instance v1, Lcom/narvii/widget/SwipeableLayout$6;

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/narvii/widget/SwipeableLayout$6;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    .line 109
    :goto_4
    if-eqz p1, :cond_6

    .line 110
    .line 111
    const-wide/16 v1, 0x12c

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 118
    .line 119
    :cond_6
    iput v0, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    .line 120
    return-void
.end method

.method public bindListView(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    return-void
.end method

.method public dismiss(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    .line 5
    if-eq p1, v2, :cond_4

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v3, 0x4

    .line 10
    .line 11
    if-eq p1, v3, :cond_2

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    if-ne p1, v4, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    goto :goto_4

    .line 19
    .line 20
    :cond_2
    :goto_0
    if-ne p1, v3, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p1

    .line 25
    neg-int p1, p1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    :goto_1
    new-array v1, v1, [F

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 46
    move-result v3

    .line 47
    .line 48
    aput v3, v1, v0

    .line 49
    int-to-float p1, p1

    .line 50
    .line 51
    aput p1, v1, v2

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/widget/SwipeableLayout$4;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/narvii/widget/SwipeableLayout$4;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    goto :goto_4

    .line 65
    .line 66
    :cond_4
    :goto_2
    if-ne p1, v2, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 70
    move-result p1

    .line 71
    neg-int p1, p1

    .line 72
    goto :goto_3

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 87
    .line 88
    :goto_3
    new-array v1, v1, [F

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 92
    move-result v3

    .line 93
    .line 94
    aput v3, v1, v0

    .line 95
    int-to-float p1, p1

    .line 96
    .line 97
    aput p1, v1, v2

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    new-instance v0, Lcom/narvii/widget/SwipeableLayout$3;

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/narvii/widget/SwipeableLayout$3;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    .line 111
    :goto_4
    if-eqz p1, :cond_6

    .line 112
    .line 113
    new-instance v0, Lcom/narvii/widget/SwipeableLayout$5;

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, p0}, Lcom/narvii/widget/SwipeableLayout$5;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    .line 121
    const-wide/16 v0, 0x12c

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 128
    :cond_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/RectF;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    move-result v3

    .line 17
    int-to-float v3, v3

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    new-array v2, v2, [F

    .line 26
    .line 27
    iget v3, p0, Lcom/narvii/widget/SwipeableLayout;->lt:I

    .line 28
    int-to-float v4, v3

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    aput v4, v2, v5

    .line 32
    const/4 v4, 0x1

    .line 33
    int-to-float v3, v3

    .line 34
    .line 35
    aput v3, v2, v4

    .line 36
    .line 37
    iget v3, p0, Lcom/narvii/widget/SwipeableLayout;->rt:I

    .line 38
    int-to-float v4, v3

    .line 39
    const/4 v5, 0x2

    .line 40
    .line 41
    aput v4, v2, v5

    .line 42
    const/4 v4, 0x3

    .line 43
    int-to-float v3, v3

    .line 44
    .line 45
    aput v3, v2, v4

    .line 46
    .line 47
    iget v3, p0, Lcom/narvii/widget/SwipeableLayout;->rb:I

    .line 48
    int-to-float v4, v3

    .line 49
    const/4 v5, 0x4

    .line 50
    .line 51
    aput v4, v2, v5

    .line 52
    const/4 v4, 0x5

    .line 53
    int-to-float v3, v3

    .line 54
    .line 55
    aput v3, v2, v4

    .line 56
    .line 57
    iget v3, p0, Lcom/narvii/widget/SwipeableLayout;->lb:I

    .line 58
    int-to-float v4, v3

    .line 59
    const/4 v5, 0x6

    .line 60
    .line 61
    aput v4, v2, v5

    .line 62
    const/4 v4, 0x7

    .line 63
    int-to-float v3, v3

    .line 64
    .line 65
    aput v3, v2, v4

    .line 66
    .line 67
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 74
    .line 75
    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 6
    int-to-float p1, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 10
    .line 11
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 12
    int-to-float p1, p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 16
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    .line 28
    if-ne v2, v3, :cond_6

    .line 29
    .line 30
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    .line 31
    sub-int/2addr v0, v2

    .line 32
    .line 33
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    .line 34
    sub-int/2addr v1, v2

    .line 35
    .line 36
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    .line 37
    and-int/2addr v2, v3

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 44
    move-result v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0xa

    .line 47
    .line 48
    if-ge v2, v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, v3}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    :cond_1
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    .line 57
    and-int/2addr v2, v4

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 63
    move-result v2

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0xa

    .line 66
    neg-int v3, v0

    .line 67
    .line 68
    if-ge v2, v3, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1, v4}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    :cond_2
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    .line 77
    const/4 v3, 0x4

    .line 78
    and-int/2addr v2, v3

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 84
    move-result v2

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0xa

    .line 87
    neg-int v5, v1

    .line 88
    .line 89
    if-ge v2, v5, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, v3}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    :cond_3
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    .line 98
    .line 99
    const/16 v3, 0x8

    .line 100
    and-int/2addr v2, v3

    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 106
    move-result v0

    .line 107
    .line 108
    add-int/lit8 v0, v0, 0xa

    .line 109
    .line 110
    if-ge v0, v1, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1, v3}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    :cond_4
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    :cond_5
    return v4

    .line 122
    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 123
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 6
    .line 7
    iput p3, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 8
    .line 9
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/widget/SwipeableLayout;->appearAnimation(I)V

    .line 15
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iput v1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 27
    move-result v2

    .line 28
    .line 29
    const/16 v4, 0x8

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x2

    .line 32
    .line 33
    if-ne v2, v6, :cond_d

    .line 34
    .line 35
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    .line 36
    sub-int/2addr v0, p1

    .line 37
    .line 38
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    .line 39
    sub-int/2addr v1, p1

    .line 40
    .line 41
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 47
    move-result p1

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-le p1, v2, :cond_1

    .line 54
    .line 55
    iput v6, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 64
    move-result v2

    .line 65
    .line 66
    if-ge p1, v2, :cond_2

    .line 67
    .line 68
    iput v3, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    iput v5, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 72
    .line 73
    :cond_3
    :goto_0
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 74
    .line 75
    if-ne p1, v3, :cond_8

    .line 76
    .line 77
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 78
    .line 79
    add-int v1, p1, v0

    .line 80
    int-to-float v1, v1

    .line 81
    .line 82
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    .line 83
    .line 84
    and-int/lit8 v4, v2, 0x1

    .line 85
    .line 86
    if-nez v4, :cond_4

    .line 87
    .line 88
    if-ltz v0, :cond_5

    .line 89
    :cond_4
    and-int/2addr v2, v6

    .line 90
    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    if-lez v0, :cond_6

    .line 94
    :cond_5
    int-to-float v1, p1

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 104
    .line 105
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 106
    float-to-int v1, v1

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0, v0, v2, v1}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutMoved(IIII)V

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 113
    return v3

    .line 114
    .line 115
    :cond_8
    if-ne p1, v6, :cond_13

    .line 116
    .line 117
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 118
    .line 119
    add-int v0, p1, v1

    .line 120
    int-to-float v0, v0

    .line 121
    .line 122
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    .line 123
    .line 124
    and-int/lit8 v5, v2, 0x4

    .line 125
    .line 126
    if-nez v5, :cond_9

    .line 127
    .line 128
    if-ltz v1, :cond_a

    .line 129
    :cond_9
    and-int/2addr v2, v4

    .line 130
    .line 131
    if-nez v2, :cond_b

    .line 132
    .line 133
    if-lez v1, :cond_b

    .line 134
    :cond_a
    int-to-float v0, p1

    .line 135
    .line 136
    .line 137
    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    .line 140
    .line 141
    if-eqz p1, :cond_c

    .line 142
    .line 143
    iget v1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 144
    float-to-int v0, v0

    .line 145
    .line 146
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, v1, v0, v2, v2}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutMoved(IIII)V

    .line 150
    .line 151
    .line 152
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    .line 157
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 158
    move-result p1

    .line 159
    .line 160
    if-ne p1, v3, :cond_13

    .line 161
    .line 162
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 163
    .line 164
    const-wide/16 v0, 0x12c

    .line 165
    const/4 v2, 0x4

    .line 166
    .line 167
    if-ne p1, v3, :cond_10

    .line 168
    .line 169
    iput v5, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 173
    move-result p1

    .line 174
    .line 175
    iget v4, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 176
    int-to-float v4, v4

    .line 177
    sub-float/2addr p1, v4

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 181
    move-result p1

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 185
    move-result v4

    .line 186
    div-int/2addr v4, v2

    .line 187
    int-to-float v2, v4

    .line 188
    .line 189
    cmpl-float p1, p1, v2

    .line 190
    .line 191
    if-lez p1, :cond_f

    .line 192
    .line 193
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    .line 194
    .line 195
    if-eqz p1, :cond_f

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 199
    move-result p1

    .line 200
    .line 201
    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 202
    int-to-float v0, v0

    .line 203
    .line 204
    cmpl-float p1, p1, v0

    .line 205
    .line 206
    if-lez p1, :cond_e

    .line 207
    goto :goto_1

    .line 208
    :cond_e
    move v6, v3

    .line 209
    .line 210
    .line 211
    :goto_1
    invoke-virtual {p0, v6}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    .line 212
    return v3

    .line 213
    .line 214
    :cond_f
    new-array p1, v6, [F

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 218
    move-result v2

    .line 219
    .line 220
    aput v2, p1, v5

    .line 221
    .line 222
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 223
    int-to-float v2, v2

    .line 224
    .line 225
    aput v2, p1, v3

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    new-instance v2, Lcom/narvii/widget/SwipeableLayout$1;

    .line 232
    .line 233
    .line 234
    invoke-direct {v2, p0}, Lcom/narvii/widget/SwipeableLayout$1;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 244
    return v3

    .line 245
    .line 246
    :cond_10
    if-ne p1, v6, :cond_13

    .line 247
    .line 248
    iput v5, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 252
    move-result p1

    .line 253
    .line 254
    iget v7, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 255
    int-to-float v7, v7

    .line 256
    sub-float/2addr p1, v7

    .line 257
    .line 258
    .line 259
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 260
    move-result p1

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 264
    move-result v7

    .line 265
    div-int/2addr v7, v2

    .line 266
    int-to-float v7, v7

    .line 267
    .line 268
    cmpl-float p1, p1, v7

    .line 269
    .line 270
    if-lez p1, :cond_12

    .line 271
    .line 272
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    .line 273
    .line 274
    if-eqz p1, :cond_12

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 278
    move-result p1

    .line 279
    .line 280
    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 281
    int-to-float v0, v0

    .line 282
    .line 283
    cmpl-float p1, p1, v0

    .line 284
    .line 285
    if-lez p1, :cond_11

    .line 286
    goto :goto_2

    .line 287
    :cond_11
    move v4, v2

    .line 288
    .line 289
    .line 290
    :goto_2
    invoke-virtual {p0, v4}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    .line 291
    return v3

    .line 292
    .line 293
    :cond_12
    new-array p1, v6, [F

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 297
    move-result v2

    .line 298
    .line 299
    aput v2, p1, v5

    .line 300
    .line 301
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 302
    int-to-float v2, v2

    .line 303
    .line 304
    aput v2, p1, v3

    .line 305
    .line 306
    .line 307
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 308
    move-result-object p1

    .line 309
    .line 310
    new-instance v2, Lcom/narvii/widget/SwipeableLayout$2;

    .line 311
    .line 312
    .line 313
    invoke-direct {v2, p0}, Lcom/narvii/widget/SwipeableLayout$2;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 323
    .line 324
    iput v5, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 325
    :cond_13
    :goto_3
    return v3
.end method

.method public setAllowDirection(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    return-void
.end method

.method public setAppearAnimation(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public setRadius(IIII)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->lt:I

    iput p2, p0, Lcom/narvii/widget/SwipeableLayout;->rt:I

    iput p3, p0, Lcom/narvii/widget/SwipeableLayout;->lb:I

    iput p4, p0, Lcom/narvii/widget/SwipeableLayout;->rb:I

    return-void
.end method

.method public setSwipeListener(Lcom/narvii/widget/SwipeableLayout$SwipeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    return-void
.end method
