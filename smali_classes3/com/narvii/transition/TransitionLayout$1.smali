.class Lcom/narvii/transition/TransitionLayout$1;
.super Ljava/lang/Object;
.source "TransitionLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/transition/TransitionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/transition/TransitionLayout;


# direct methods
.method constructor <init>(Lcom/narvii/transition/TransitionLayout;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/narvii/transition/TransitionLayout;->progress:F

    .line 36
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    iget-object v0, p1, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p1, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    iget p1, p1, Lcom/narvii/transition/TransitionLayout;->progress:F

    invoke-virtual {v0, v1, p1}, Lcom/narvii/transition/TransitionManager;->changeTextViewScale(Landroid/view/View;F)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    iget-object v0, p1, Lcom/narvii/transition/TransitionLayout;->transitionListener:Lcom/narvii/transition/TransitionLayout$TransitionListener;

    if-eqz v0, :cond_1

    .line 41
    iget v1, p1, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    iget v2, p1, Lcom/narvii/transition/TransitionLayout;->height:I

    iget p1, p1, Lcom/narvii/transition/TransitionLayout;->progress:F

    invoke-interface {v0, v1, v2, p1}, Lcom/narvii/transition/TransitionLayout$TransitionListener;->onTransitionProgress(IIF)V

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
