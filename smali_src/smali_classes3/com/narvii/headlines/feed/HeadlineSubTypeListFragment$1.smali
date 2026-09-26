.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->w(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    .line 10
    move-result p4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p4, p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->G(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V

    .line 18
    .line 19
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$000(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 23
    move-result-object p4

    .line 24
    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 35
    .line 36
    :cond_0
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onRefresh()V

    .line 40
    .line 41
    :cond_1
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->v(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    .line 45
    move-result p4

    .line 46
    .line 47
    if-eqz p4, :cond_2

    .line 48
    .line 49
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p4, p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->F(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V

    .line 53
    .line 54
    sget-object p4, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 64
    .line 65
    iget-object p4, p4, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 66
    .line 67
    const-wide/16 v0, 0x1f4

    .line 68
    .line 69
    .line 70
    invoke-static {p4, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 71
    .line 72
    :cond_2
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 76
    move-result-object p4

    .line 77
    .line 78
    instance-of p4, p4, Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 79
    .line 80
    if-eqz p4, :cond_3

    .line 81
    .line 82
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 86
    move-result-object p4

    .line 87
    .line 88
    check-cast p4, Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 92
    move-result-object p4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 95
    .line 96
    if-ne p4, v0, :cond_3

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move p1, p3

    .line 99
    .line 100
    :goto_0
    iget-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 101
    .line 102
    .line 103
    invoke-static {p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    iget-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 112
    move-result-object p3

    .line 113
    .line 114
    iget-object p3, p3, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 115
    .line 116
    sget-object p4, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-static {p3, p4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    move-result p3

    .line 121
    .line 122
    if-eqz p3, :cond_4

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_4
    const/16 p3, 0xa

    .line 126
    .line 127
    if-le p2, p3, :cond_5

    .line 128
    .line 129
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->D(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z

    .line 133
    move-result p2

    .line 134
    .line 135
    if-nez p2, :cond_5

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 142
    .line 143
    new-instance p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 150
    :cond_5
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->H(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)V

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 29
    .line 30
    const-wide/16 v0, 0x1f4

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    :goto_0
    return-void
.end method
