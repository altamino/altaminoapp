.class Lcom/narvii/master/CommunityDetailFragment$10$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$10;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$10;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$10;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$10;->k(Lcom/narvii/master/CommunityDetailFragment$10;)Landroid/view/animation/Animation;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-ne v0, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/master/CommunityDetailFragment$10;->_onFinish()V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment$10;->m(Lcom/narvii/master/CommunityDetailFragment$10;Landroid/view/animation/Animation;)V

    .line 30
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
