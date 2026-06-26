.class Lcom/narvii/master/CommunityDetailFragment$11$3;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$11;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$11;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$11;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1657
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2900(Lcom/narvii/master/CommunityDetailFragment$11;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1659
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-virtual {p1}, Lcom/narvii/master/CommunityDetailFragment$11;->_onFinish()V

    .line 1660
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2902(Lcom/narvii/master/CommunityDetailFragment$11;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    :cond_0
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
