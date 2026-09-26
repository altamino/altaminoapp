.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;

    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->J(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$800(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    .line 79
    :cond_2
    return-void
.end method
