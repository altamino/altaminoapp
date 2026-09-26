.class Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapConfirm"
.end annotation


# instance fields
.field params:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;


# direct methods
.method private constructor <init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;Lcom/narvii/nvplayerview/controller/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V

    return-void
.end method

.method private setVideoBackgroundAlpha(FF)V
    .locals 2

    .line 1
    mul-float/2addr p1, p1

    .line 2
    mul-float/2addr p2, p2

    .line 3
    add-float/2addr p1, p2

    .line 4
    float-to-double p1, p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->g(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->g(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    move-result v1

    .line 25
    mul-int/2addr v0, v0

    .line 26
    mul-int/2addr v1, v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    int-to-double v0, v0

    .line 29
    div-double/2addr p1, v0

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    move-result-wide p1

    .line 34
    double-to-float p1, p1

    .line 35
    .line 36
    const/high16 p2, 0x3f800000    # 1.0f

    .line 37
    sub-float/2addr p2, p1

    .line 38
    .line 39
    const/high16 p1, 0x437f0000    # 255.0f

    .line 40
    mul-float/2addr p2, p1

    .line 41
    float-to-int p1, p2

    .line 42
    .line 43
    const/high16 p2, -0x1000000

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p1}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->g(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->h(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/widget/EasyButton;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->onClick(Landroid/view/View;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->g(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->d(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)I

    .line 6
    move-result p3

    .line 7
    const/4 p4, 0x2

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    if-ne p3, p4, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->a(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z

    .line 17
    move-result p3

    .line 18
    .line 19
    if-eqz p3, :cond_4

    .line 20
    .line 21
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->b(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/RelativeLayout;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result p3

    .line 30
    const/4 p4, 0x4

    .line 31
    .line 32
    if-eq p3, p4, :cond_1

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 35
    .line 36
    .line 37
    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->b(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/RelativeLayout;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 45
    move-result p3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    move-result p4

    .line 50
    sub-float/2addr p3, p4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 54
    move-result p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    move-result p1

    .line 59
    sub-float/2addr p2, p1

    .line 60
    const/4 p1, 0x0

    .line 61
    .line 62
    cmpl-float p4, p3, p1

    .line 63
    .line 64
    if-lez p4, :cond_2

    .line 65
    .line 66
    iget-object p4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    float-to-int v0, p3

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 71
    move-result v0

    .line 72
    .line 73
    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    iget-object p4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    float-to-int v0, p3

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 81
    move-result v0

    .line 82
    .line 83
    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 84
    .line 85
    :goto_0
    cmpl-float p1, p2, p1

    .line 86
    .line 87
    if-lez p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    float-to-int p4, p2

    .line 91
    .line 92
    .line 93
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 94
    move-result p4

    .line 95
    .line 96
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    float-to-int p4, p2

    .line 101
    .line 102
    .line 103
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 104
    move-result p4

    .line 105
    .line 106
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 107
    .line 108
    :goto_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->g(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iget-object p4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p3, p2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->setVideoBackgroundAlpha(FF)V

    .line 125
    const/4 p1, 0x1

    .line 126
    return p1

    .line 127
    :cond_4
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->e(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/FrameLayout;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->onClick(Landroid/view/View;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method
