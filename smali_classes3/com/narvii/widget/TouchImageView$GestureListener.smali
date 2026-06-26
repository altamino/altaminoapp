.class Lcom/narvii/widget/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$1;)V
    .locals 0

    .line 763
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView$GestureListener;-><init>(Lcom/narvii/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 798
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 801
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$600(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    if-ne v1, v2, :cond_2

    .line 802
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$700(Lcom/narvii/widget/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$800(Lcom/narvii/widget/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$900(Lcom/narvii/widget/TouchImageView;)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$800(Lcom/narvii/widget/TouchImageView;)F

    move-result v0

    :goto_1
    move v3, v0

    .line 803
    new-instance v0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;-><init>(Lcom/narvii/widget/TouchImageView;FFFZ)V

    .line 804
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->access$500(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 783
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$400(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$400(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$Fling;->cancelFling()V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    new-instance v1, Lcom/narvii/widget/TouchImageView$Fling;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/widget/TouchImageView$Fling;-><init>(Lcom/narvii/widget/TouchImageView;II)V

    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->access$402(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$Fling;)Lcom/narvii/widget/TouchImageView$Fling;

    .line 791
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$400(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->access$500(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 792
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 777
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$300(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 771
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    move-result p1

    return p1
.end method
