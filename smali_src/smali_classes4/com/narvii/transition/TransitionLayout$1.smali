.class Lcom/narvii/transition/TransitionLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    .line 14
    iput p1, v0, Lcom/narvii/transition/TransitionLayout;->progress:F

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p1, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 27
    .line 28
    iget p1, p1, Lcom/narvii/transition/TransitionLayout;->progress:F

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Lcom/narvii/transition/TransitionManager;->changeTextViewScale(Landroid/view/View;F)V

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/narvii/transition/TransitionLayout;->transitionListener:Lcom/narvii/transition/TransitionLayout$TransitionListener;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v1, p1, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    .line 40
    .line 41
    iget v2, p1, Lcom/narvii/transition/TransitionLayout;->height:I

    .line 42
    .line 43
    iget p1, p1, Lcom/narvii/transition/TransitionLayout;->progress:F

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1, v2, p1}, Lcom/narvii/transition/TransitionLayout$TransitionListener;->onTransitionProgress(IIF)V

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout$1;->this$0:Lcom/narvii/transition/TransitionLayout;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 52
    return-void
.end method
