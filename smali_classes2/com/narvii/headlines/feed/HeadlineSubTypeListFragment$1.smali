.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    .line 224
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 239
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 240
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4, p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$102(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    .line 241
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 242
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 244
    :cond_0
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onRefresh()V

    .line 247
    :cond_1
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 248
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4, p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$402(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    .line 249
    sget-object p4, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object v0, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object p4, p4, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p4, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 254
    :cond_2
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    instance-of p4, p4, Lcom/narvii/app/NVBaseScrollableTabFragment;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 255
    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    check-cast p4, Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-virtual {p4}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    if-ne p4, v0, :cond_3

    const/4 p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    sget-object v1, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    const/16 p1, 0xa

    if-le p2, p1, :cond_5

    .line 258
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p4, :cond_5

    .line 259
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 228
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$002(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)I

    .line 229
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object p2, p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 232
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    iget-object p2, p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
