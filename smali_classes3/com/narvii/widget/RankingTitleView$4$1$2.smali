.class Lcom/narvii/widget/RankingTitleView$4$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RankingTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RankingTitleView$4$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/widget/RankingTitleView$4$1;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView$4$1;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1$2;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 439
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 440
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1$2;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/widget/RankingTitleView;->access$102(Lcom/narvii/widget/RankingTitleView;Z)Z

    .line 441
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1$2;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    if-eqz p1, :cond_0

    .line 442
    invoke-interface {p1}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onAnimEnd()V

    :cond_0
    return-void
.end method
