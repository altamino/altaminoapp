.class public Lcom/narvii/search/SearchChatListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SearchChatListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/SearchChatListFragment$Adapter;
    }
.end annotation


# instance fields
.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field mAdapter:Lcom/narvii/search/SearchChatListFragment$Adapter;

.field public source:Ljava/lang/String;

.field stated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const-string v0, "Search"

    .line 37
    iput-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->source:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 59
    new-instance p1, Lcom/narvii/search/SearchChatListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/search/SearchChatListFragment$Adapter;-><init>(Lcom/narvii/search/SearchChatListFragment;)V

    iput-object p1, p0, Lcom/narvii/search/SearchChatListFragment;->mAdapter:Lcom/narvii/search/SearchChatListFragment$Adapter;

    .line 60
    iget-object p1, p0, Lcom/narvii/search/SearchChatListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->mAdapter:Lcom/narvii/search/SearchChatListFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v4, p1

    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v2, p1

    .line 63
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 64
    iget-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->mAdapter:Lcom/narvii/search/SearchChatListFragment$Adapter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 119
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Chats"

    return-object v0
.end method

.method public synthetic lambda$onCreate$0$SearchChatListFragment(Ljava/lang/String;Z)V
    .locals 1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/search/ISearchBarHost;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/narvii/search/ISearchBarHost;

    invoke-interface {p2, p0, p1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0f59

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :cond_0
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 48
    iget-object p1, p0, Lcom/narvii/search/SearchChatListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    new-instance v0, Lcom/narvii/search/-$$Lambda$SearchChatListFragment$fPN4R4cj_vsr33QlxBOkwgVXwX4;

    invoke-direct {v0, p0}, Lcom/narvii/search/-$$Lambda$SearchChatListFragment$fPN4R4cj_vsr33QlxBOkwgVXwX4;-><init>(Lcom/narvii/search/SearchChatListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/widget/NVListView;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const-string p2, "config"

    .line 88
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 89
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->mAdapter:Lcom/narvii/search/SearchChatListFragment$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/narvii/search/SearchChatListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/search/SearchChatListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903ed

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 72
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 73
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0c48

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
