.class Lcom/narvii/widget/RankingTitleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RankingTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/RankingTitleView;

.field final synthetic val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView;Lcom/narvii/widget/RankingTitleView$OnAnimListener;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$2;->this$0:Lcom/narvii/widget/RankingTitleView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView$2;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 370
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 371
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$2;->this$0:Lcom/narvii/widget/RankingTitleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/widget/RankingTitleView;->access$102(Lcom/narvii/widget/RankingTitleView;Z)Z

    .line 372
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$2;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    if-eqz p1, :cond_0

    .line 373
    invoke-interface {p1}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onAnimEnd()V

    :cond_0
    return-void
.end method
