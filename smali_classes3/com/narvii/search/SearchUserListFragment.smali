.class public Lcom/narvii/search/SearchUserListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SearchUserListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/SearchUserListFragment$Adapter;
    }
.end annotation


# instance fields
.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

.field public source:Ljava/lang/String;

.field stated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const-string v0, "Search"

    .line 26
    iput-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->source:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 41
    new-instance p1, Lcom/narvii/search/SearchUserListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/search/SearchUserListFragment$Adapter;-><init>(Lcom/narvii/search/SearchUserListFragment;)V

    iput-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    .line 42
    iget-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    new-instance v0, Lcom/narvii/search/-$$Lambda$SearchUserListFragment$AqGtG_x_SIDO-a_q2P8Mv1bzaTA;

    invoke-direct {v0, p0}, Lcom/narvii/search/-$$Lambda$SearchUserListFragment$AqGtG_x_SIDO-a_q2P8Mv1bzaTA;-><init>(Lcom/narvii/search/SearchUserListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Users"

    return-object v0
.end method

.method public synthetic lambda$createAdapter$0$SearchUserListFragment(Ljava/lang/String;Z)V
    .locals 1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/search/ISearchBarHost;

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/narvii/search/ISearchBarHost;

    invoke-interface {p2, p0, p1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0f59

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :cond_0
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0, p1}, Lcom/narvii/search/SearchUserListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 65
    iget-boolean p1, p0, Lcom/narvii/search/SearchUserListFragment;->stated:Z

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/narvii/search/SearchUserListFragment;->stated:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903ed

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 57
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 58
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0c48

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
