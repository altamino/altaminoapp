.class public final Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserFollowView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $delay$inlined:J

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;J)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;->this$0:Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;

    iput-wide p2, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;->$delay$inlined:J

    .line 241
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 243
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 244
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;->this$0:Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;

    iget-object p1, p1, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/user/follow/UserFollowView;->access$setPerformSubscribeAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V

    .line 245
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;->this$0:Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;

    iget-object p1, p1, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
