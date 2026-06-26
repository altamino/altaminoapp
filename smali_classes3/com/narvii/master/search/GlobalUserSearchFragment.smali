.class public Lcom/narvii/master/search/GlobalUserSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalUserSearchFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

.field aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private searchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/GlobalUserSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchKey:Ljava/lang/String;

    return-object p0
.end method

.method private searchText(Ljava/lang/String;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 127
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 63
    new-instance p1, Lcom/narvii/master/search/GlobalUserSearchFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$1;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 69
    new-instance v0, Lcom/narvii/master/search/GlobalUserSearchFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$2;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const-string v0, "hide_match_id_adapter"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v2, v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->setCustomObjectType(I)V

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance v2, Lcom/narvii/master/search/GlobalUserSearchFragment$3;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$3;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 88
    new-instance v3, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    invoke-direct {v3, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;)V

    iput-object v3, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 89
    iget-object v3, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    invoke-virtual {v2, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v3, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f1148

    goto :goto_0

    :cond_1
    const v0, 0x7f0f02d4

    :goto_0
    invoke-direct {v3, p0, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 91
    invoke-virtual {v3, v2}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 92
    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v2, v0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0c48

    .line 58
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Users"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    const-string p1, "search_key"

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchKey:Ljava/lang/String;

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchText(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0, v0}, Lcom/narvii/master/search/GlobalUserSearchFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 113
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->notifyDataSetChanged()V

    return-void
.end method
