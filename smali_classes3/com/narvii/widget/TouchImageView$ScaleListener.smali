.class Lcom/narvii/widget/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$1;)V
    .locals 0

    .line 900
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView$ScaleListener;-><init>(Lcom/narvii/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 909
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/narvii/widget/TouchImageView;->access$2300(Lcom/narvii/widget/TouchImageView;DFFZ)V

    .line 914
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 915
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 903
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->ZOOM:Lcom/narvii/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9

    .line 922
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 923
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 925
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$700(Lcom/narvii/widget/TouchImageView;)F

    move-result p1

    .line 926
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$700(Lcom/narvii/widget/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$900(Lcom/narvii/widget/TouchImageView;)F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 927
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$900(Lcom/narvii/widget/TouchImageView;)F

    move-result p1

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$700(Lcom/narvii/widget/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$800(Lcom/narvii/widget/TouchImageView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 931
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$800(Lcom/narvii/widget/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v5, p1

    if-eqz v2, :cond_2

    .line 936
    new-instance p1, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;

    iget-object v4, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v4}, Lcom/narvii/widget/TouchImageView;->access$1400(Lcom/narvii/widget/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1700(Lcom/narvii/widget/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;-><init>(Lcom/narvii/widget/TouchImageView;FFFZ)V

    .line 937
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0, p1}, Lcom/narvii/widget/TouchImageView;->access$500(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
