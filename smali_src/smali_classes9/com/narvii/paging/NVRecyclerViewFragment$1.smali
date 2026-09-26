.class Lcom/narvii/paging/NVRecyclerViewFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageRequestFinished(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->outerRefreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->clearImpression()V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$000(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V

    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$100(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 66
    const/4 v0, 0x1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$200(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V

    .line 70
    .line 71
    :cond_4
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$1;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    .line 89
    :cond_5
    return-void
.end method
