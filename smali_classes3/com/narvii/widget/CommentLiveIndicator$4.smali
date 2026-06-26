.class Lcom/narvii/widget/CommentLiveIndicator$4;
.super Ljava/lang/Object;
.source "CommentLiveIndicator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CommentLiveIndicator;->getDotsPreviewAnimators()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CommentLiveIndicator;

.field final synthetic val$curView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/widget/CommentLiveIndicator;Landroid/view/View;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$4;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    iput-object p2, p0, Lcom/narvii/widget/CommentLiveIndicator$4;->val$curView:Landroid/view/View;

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

    .line 220
    iget-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$4;->val$curView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
