.class Lcom/narvii/widget/CommentLiveIndicator$1;
.super Ljava/lang/Object;
.source "CommentLiveIndicator.java"

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

    .line 103
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/CommentLiveIndicator;->access$000(Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 112
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    iget-object p1, p1, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 113
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    iget-object p1, p1, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$1;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/CommentLiveIndicator;->access$000(Lcom/narvii/widget/CommentLiveIndicator;)V

    return-void
.end method
