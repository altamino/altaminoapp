.class Lcom/narvii/paging/NVRecyclerViewFragment$1;
.super Ljava/lang/Object;
.source "NVRecyclerViewFragment.java"

# interfaces
.implements Lcom/narvii/paging/source/PageRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/NVRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/NVRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageRequestFinished(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->outerRefreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {v0, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->clearImpression()V

    .line 213
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 214
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {p1, v1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$000(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object v0, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz p1, :cond_3

    .line 217
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$100(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 220
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 221
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$200(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V

    .line 223
    :cond_4
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 225
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    :cond_5
    return-void
.end method
