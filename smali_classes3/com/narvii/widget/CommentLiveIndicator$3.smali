.class Lcom/narvii/widget/CommentLiveIndicator$3;
.super Ljava/lang/Object;
.source "CommentLiveIndicator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CommentLiveIndicator;->getIndi1ScaleAnimator()Landroid/animation/Animator;
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

    .line 186
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$3;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$3;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/CommentLiveIndicator;->access$200(Lcom/narvii/widget/CommentLiveIndicator;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
