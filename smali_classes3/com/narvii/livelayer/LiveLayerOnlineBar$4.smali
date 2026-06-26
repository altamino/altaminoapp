.class Lcom/narvii/livelayer/LiveLayerOnlineBar$4;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$4;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 459
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$4;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$100(Lcom/narvii/livelayer/LiveLayerOnlineBar;I)V

    return-void
.end method
