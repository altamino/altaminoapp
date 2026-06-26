.class public Lcom/narvii/search/SearchPostListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SearchPostListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/SearchPostListFragment$Adapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 33
    new-instance p1, Lcom/narvii/search/SearchPostListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/search/SearchPostListFragment$Adapter;-><init>(Lcom/narvii/search/SearchPostListFragment;)V

    iput-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 34
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Posts"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1, p2}, Lcom/narvii/search/SearchPostListFragment$Adapter;->access$002(Lcom/narvii/search/SearchPostListFragment$Adapter;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/search/SearchPostListFragment$Adapter;->access$000(Lcom/narvii/search/SearchPostListFragment$Adapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/narvii/search/SearchPostListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/search/SearchPostListFragment$Adapter;->access$002(Lcom/narvii/search/SearchPostListFragment$Adapter;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
