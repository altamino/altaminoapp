.class Lcom/narvii/widget/RankingTitleView$4$1;
.super Ljava/lang/Object;
.source "RankingTitleView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RankingTitleView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/RankingTitleView$4;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView$4;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 412
    :try_start_0
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e0012

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 415
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 417
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-boolean v0, p1, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/widget/RankingTitleView;->access$200(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/narvii/widget/RankingTitleView;->access$200(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/widget/RankingTitleView;->access$300(Lcom/narvii/widget/RankingTitleView;Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 419
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    const v1, 0x7f08065a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v0, p1, Lcom/narvii/widget/RankingTitleView$4;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    if-eqz v0, :cond_1

    .line 424
    iget p1, p1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-interface {v0, p1}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onLevelChanged(I)V

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v0, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget p1, p1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-virtual {v0, p1}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 427
    iget-object v3, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget v3, v3, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    int-to-float v3, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v3, v1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    invoke-static {v3, v2, v1, p1}, Lcom/narvii/widget/RankingTitleView;->access$400(Lcom/narvii/widget/RankingTitleView;III)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v3, v1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    invoke-static {v3, v2, v1, p1}, Lcom/narvii/widget/RankingTitleView;->access$500(Lcom/narvii/widget/RankingTitleView;III)V

    .line 430
    new-instance v1, Lcom/narvii/widget/RankingTitleView$4$1$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/RankingTitleView$4$1$1;-><init>(Lcom/narvii/widget/RankingTitleView$4$1;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    new-instance p1, Lcom/narvii/widget/RankingTitleView$4$1$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/RankingTitleView$4$1$2;-><init>(Lcom/narvii/widget/RankingTitleView$4$1;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
