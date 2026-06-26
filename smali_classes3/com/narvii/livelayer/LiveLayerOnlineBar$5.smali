.class Lcom/narvii/livelayer/LiveLayerOnlineBar$5;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$finalGoOpposite:Z


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->val$finalGoOpposite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$202(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 486
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 487
    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$302(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)Z

    .line 489
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->val$finalGoOpposite:Z

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 491
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    if-eqz v0, :cond_1

    .line 492
    iget-boolean p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    invoke-interface {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;->onFoldChanged(Z)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
