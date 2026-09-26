.class Lcom/narvii/list/NVListFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 2
    iget-object p1, p1, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->clearImpression()V

    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 8
    invoke-static {p1, v0}, Lcom/narvii/list/NVListFragment;->access$000(Lcom/narvii/list/NVListFragment;Z)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 9
    iget-object v0, p1, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    :cond_3
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 11
    invoke-static {p1}, Lcom/narvii/list/NVListFragment;->access$100(Lcom/narvii/list/NVListFragment;)V

    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v0}, Lcom/narvii/list/NVListFragment;->access$200(Lcom/narvii/list/NVListFragment;Z)V

    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$8;->this$0:Lcom/narvii/list/NVListFragment;

    .line 14
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    :cond_5
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment$8;->call(Ljava/lang/Integer;)V

    return-void
.end method
