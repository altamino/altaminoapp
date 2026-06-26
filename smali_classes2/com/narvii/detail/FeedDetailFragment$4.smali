.class Lcom/narvii/detail/FeedDetailFragment$4;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

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

    .line 216
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "liveLayerHost"

    .line 222
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    if-nez v0, :cond_1

    return-void

    .line 226
    :cond_1
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isTapping()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/detail/FeedDetailFragment;->access$000(Lcom/narvii/detail/FeedDetailFragment;Z)V

    .line 230
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010029

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v2, v2, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v2, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 232
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v2, v2, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$4;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
