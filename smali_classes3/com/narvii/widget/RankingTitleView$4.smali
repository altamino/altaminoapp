.class Lcom/narvii/widget/RankingTitleView$4;
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

.field final synthetic val$newLevel:I

.field final synthetic val$newRP:I

.field final synthetic val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView;ILcom/narvii/widget/RankingTitleView$OnAnimListener;I)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iput p2, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    iput-object p3, p0, Lcom/narvii/widget/RankingTitleView$4;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    iput p4, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 401
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 403
    new-instance v0, Lcom/narvii/widget/RankingTitleView$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/RankingTitleView$4$1;-><init>(Lcom/narvii/widget/RankingTitleView$4;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 454
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-object v1, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    invoke-static {v0}, Lcom/narvii/widget/RankingTitleView;->access$200(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;

    move-result-object v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-virtual {v0, v2}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-virtual {v0, v2}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
