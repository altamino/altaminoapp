.class public final Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserFollowView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $followLayoutWidth$inlined:I

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    iput p2, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->$followLayoutWidth$inlined:I

    .line 154
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/user/follow/UserFollowView;->access$setPerformFollowAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V

    .line 157
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->$followLayoutWidth$inlined:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$updateUnscribeStatus(Lcom/narvii/user/follow/UserFollowView;)V

    return-void
.end method
