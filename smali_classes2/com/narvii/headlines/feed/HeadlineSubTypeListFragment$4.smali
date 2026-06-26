.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 378
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1000(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$602(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    .line 385
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 391
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 392
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    :cond_2
    return-void
.end method
