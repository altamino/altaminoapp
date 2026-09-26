.class Lcom/narvii/widget/RankingTitleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$2;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView$2;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$2;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/widget/RankingTitleView;->b(Lcom/narvii/widget/RankingTitleView;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$2;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onAnimEnd()V

    .line 17
    :cond_0
    return-void
.end method
