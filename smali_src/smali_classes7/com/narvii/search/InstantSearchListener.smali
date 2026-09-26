.class public Lcom/narvii/search/InstantSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->refreshKeyword(Ljava/lang/String;Z)V

    return-void
.end method

.method private refreshKeyword(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener$RefreshListener;->onRefresh(Ljava/lang/String;Z)V

    .line 23
    .line 24
    :cond_1
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener$RefreshListener;->onRefresh(Ljava/lang/String;Z)V

    .line 47
    .line 48
    :cond_3
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 59
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->mAdapter:Lcom/narvii/list/NVPagedAdapter;

    return-void
.end method

.method public attachRecyclerAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->recyclerViewAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, p1}, Lcom/narvii/search/InstantSearchListener;->refreshKeyword(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    :cond_0
    new-instance p1, Lcom/narvii/search/InstantSearchListener$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0, p2}, Lcom/narvii/search/InstantSearchListener$1;-><init>(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refresh:Ljava/lang/Runnable;

    .line 17
    .line 18
    const-wide/16 v0, 0xfa

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 22
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener;->refreshListener:Lcom/narvii/search/InstantSearchListener$RefreshListener;

    return-void
.end method
