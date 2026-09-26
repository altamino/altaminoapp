.class Lcom/narvii/widget/CommentLiveIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CommentLiveIndicator;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CommentLiveIndicator;


# direct methods
.method constructor <init>(Lcom/narvii/widget/CommentLiveIndicator;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/CommentLiveIndicator;->d(Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    const-wide/16 v0, 0x1f4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 22
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/CommentLiveIndicator;->d(Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 6
    return-void
.end method
