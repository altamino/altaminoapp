.class public final Lcom/narvii/user/follow/UserFollowView$updateView$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $followLayoutWidth:I

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->$followLayoutWidth:I

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
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/user/follow/UserFollowView;->access$setPerformFollowAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget v0, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->$followLayoutWidth:I

    .line 34
    .line 35
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$updateUnscribeStatus(Lcom/narvii/user/follow/UserFollowView;)V

    .line 41
    return-void
.end method
