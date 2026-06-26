.class public Lcom/narvii/search/InstantSearchListener;
.super Ljava/lang/Object;
.source "InstantSearchListener.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/InstantSearchListener$RefreshListener;
    }
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;

.field private mAdapter:Lcom/narvii/list/NVPagedAdapter;

.field private recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field private refresh:Ljava/lang/Runnable;

.field private refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->refreshKeyword(Ljava/lang/String;Z)V

    return-void
.end method

.method private refreshKeyword(Ljava/lang/String;Z)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener$RefreshListener;->onRefresh(Ljava/lang/String;Z)V

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p1, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;

    if-eqz v0, :cond_3

    .line 73
    invoke-interface {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener$RefreshListener;->onRefresh(Ljava/lang/String;Z)V

    .line 75
    :cond_3
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1, v2, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 77
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    return-void
.end method

.method public attachRecyclerAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 86
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 89
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/narvii/search/InstantSearchListener;->refreshKeyword(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 49
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    new-instance p1, Lcom/narvii/search/InstantSearchListener$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/search/InstantSearchListener$1;-><init>(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    .line 57
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;

    return-void
.end method
