.class Lcom/narvii/list/NVListViewWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListViewWrapper;
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
.field final synthetic this$0:Lcom/narvii/list/NVListViewWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListViewWrapper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper$4;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper$4;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 2
    iget-object p1, p1, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper$4;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 4
    iget-object p1, p1, Lcom/narvii/list/NVListViewWrapper;->outerRefreshCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper$4;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper$4;->call(Ljava/lang/Integer;)V

    return-void
.end method
