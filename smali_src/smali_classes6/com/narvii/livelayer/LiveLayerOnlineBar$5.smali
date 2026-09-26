.class Lcom/narvii/livelayer/LiveLayerOnlineBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->val$finalGoOpposite:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->b(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->c(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->val$finalGoOpposite:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 30
    .line 31
    iget-object v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-boolean p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;->onFoldChanged(Z)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 42
    .line 43
    iget-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 47
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
