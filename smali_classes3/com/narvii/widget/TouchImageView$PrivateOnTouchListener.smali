.class Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$1;)V
    .locals 0

    .line 829
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/narvii/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 838
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1000(Lcom/narvii/widget/TouchImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1100(Lcom/narvii/widget/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 841
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1200(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 842
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 844
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$600(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$600(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->DRAG:Lcom/narvii/widget/TouchImageView$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$600(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->FLING:Lcom/narvii/widget/TouchImageView$State;

    if-ne v1, v2, :cond_6

    .line 845
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$600(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->DRAG:Lcom/narvii/widget/TouchImageView$State;

    if-ne v1, v2, :cond_6

    .line 855
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    .line 856
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v2

    .line 857
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v2}, Lcom/narvii/widget/TouchImageView;->access$1400(Lcom/narvii/widget/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v6}, Lcom/narvii/widget/TouchImageView;->access$1500(Lcom/narvii/widget/TouchImageView;)F

    move-result v6

    invoke-static {v2, v1, v5, v6}, Lcom/narvii/widget/TouchImageView;->access$1600(Lcom/narvii/widget/TouchImageView;FFF)F

    move-result v1

    .line 858
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v2}, Lcom/narvii/widget/TouchImageView;->access$1700(Lcom/narvii/widget/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v6}, Lcom/narvii/widget/TouchImageView;->access$1800(Lcom/narvii/widget/TouchImageView;)F

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/narvii/widget/TouchImageView;->access$1600(Lcom/narvii/widget/TouchImageView;FFF)F

    move-result v2

    .line 859
    iget-object v4, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v4}, Lcom/narvii/widget/TouchImageView;->access$1900(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 860
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->access$2000(Lcom/narvii/widget/TouchImageView;)V

    .line 861
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    sget-object v1, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    goto :goto_0

    .line 847
    :cond_4
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 848
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$400(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 849
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$400(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$Fling;->cancelFling()V

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    sget-object v1, Lcom/narvii/widget/TouchImageView$State;->DRAG:Lcom/narvii/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 872
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1900(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 877
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$2100(Lcom/narvii/widget/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 878
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$2100(Lcom/narvii/widget/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 884
    :cond_7
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 885
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_8
    return v3
.end method
