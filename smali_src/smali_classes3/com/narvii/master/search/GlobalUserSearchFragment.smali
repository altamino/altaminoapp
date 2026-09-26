.class public Lcom/narvii/master/search/GlobalUserSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private searchText(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v1, p1

    .line 9
    .line 10
    :goto_0
    iput-object v1, v0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/master/search/GlobalUserSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/search/GlobalUserSearchFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$1;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/search/GlobalUserSearchFragment$2;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$2;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 13
    .line 14
    const-string v0, "hide_match_id_adapter"

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->setCustomObjectType(I)V

    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/master/search/GlobalUserSearchFragment$3;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$3;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    new-instance v3, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, p0}, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalUserSearchFragment;)V

    .line 42
    .line 43
    iput-object v3, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    .line 48
    new-instance v3, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    .line 57
    const v0, 0x7f121251

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_1
    const v0, 0x7f12031f

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-direct {v3, p0, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    const/4 v0, 0x1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2, v0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 75
    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120d75

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "users"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 8
    .line 9
    const-string p1, "search_key"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchKey:Ljava/lang/String;

    .line 16
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchText(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v0}, Lcom/narvii/master/search/GlobalUserSearchFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalUserSearchFragment;->searchText(Ljava/lang/String;)V

    .line 29
    :cond_2
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    iput-object p2, p1, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method
