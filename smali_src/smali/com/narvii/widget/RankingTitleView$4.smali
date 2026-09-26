.class Lcom/narvii/widget/RankingTitleView$4;
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

.field final synthetic val$newLevel:I

.field final synthetic val$newRP:I

.field final synthetic val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView;ILcom/narvii/widget/RankingTitleView$OnAnimListener;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/widget/RankingTitleView$4;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const v0, 0x7f010016

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/widget/RankingTitleView$4$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/widget/RankingTitleView$4$1;-><init>(Lcom/narvii/widget/RankingTitleView$4;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/widget/RankingTitleView;->a(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget v2, p0, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 54
    const/4 v1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method
