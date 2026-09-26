.class Lcom/narvii/detail/FeedDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v1, "liveLayerHost"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isTapping()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    return-void

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/detail/FeedDetailFragment;->L(Lcom/narvii/detail/FeedDetailFragment;Z)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    const v2, 0x7f010037

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    return-void
.end method
