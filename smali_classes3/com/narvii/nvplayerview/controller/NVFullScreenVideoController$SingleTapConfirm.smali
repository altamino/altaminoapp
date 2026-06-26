.class Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NVFullScreenVideoController.java"


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

    .line 423
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V

    return-void
.end method

.method private setVideoBackgroundAlpha(FF)V
    .locals 2

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 477
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$600(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$600(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    mul-int v0, v0, v0

    mul-int v1, v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 479
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    const/high16 p2, -0x1000000

    .line 480
    invoke-static {p2, p1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 481
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$600(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 441
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$800(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/widget/EasyButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$600(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 448
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$900(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    return p4

    .line 451
    :cond_0
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$1000(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_4

    .line 452
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$1100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    .line 453
    iget-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$1100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    .line 456
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float p4, p3, p1

    if-lez p4, :cond_2

    .line 458
    iget-object p4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 460
    :cond_2
    iget-object p4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_0
    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 463
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 465
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 467
    :goto_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$600(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    move-result-object p1

    iget-object p4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-direct {p0, p3, p2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->setVideoBackgroundAlpha(FF)V

    const/4 p1, 0x1

    return p1

    :cond_4
    return p4
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 435
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {p1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$700(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
