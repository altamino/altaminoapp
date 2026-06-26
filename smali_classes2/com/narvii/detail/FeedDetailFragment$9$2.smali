.class Lcom/narvii/detail/FeedDetailFragment$9$2;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$9;->call(Lcom/narvii/model/api/UserListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/detail/FeedDetailFragment$9;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$9;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const-string v1, "liveLayerHost"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    .line 495
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 498
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->access$000(Lcom/narvii/detail/FeedDetailFragment;Z)V

    :cond_0
    return-void
.end method
