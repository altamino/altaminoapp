.class public final Lcom/narvii/user/follow/UserFollowView$updateView$2$2$onAnimationEnd$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2$onAnimationEnd$1$1;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2$onAnimationEnd$1$1;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/user/follow/UserFollowView;->access$setPerformSubscribeAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2$onAnimationEnd$1$1;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    return-void
.end method
