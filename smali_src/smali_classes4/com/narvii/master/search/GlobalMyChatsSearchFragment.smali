.class public final Lcom/narvii/master/search/GlobalMyChatsSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;,
        Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;,
        Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyDividerAdapter;
    }
.end annotation


# instance fields
.field private chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

.field private final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private final instantSearchListener:Lcom/narvii/search/InstantSearchListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 18
    return-void
.end method

.method public static final synthetic access$getCommunityMap$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    instance-of p2, p2, Lcom/narvii/search/ISearchBarHost;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    const-string v0, "null cannot be cast to non-null type com.narvii.search.ISearchBarHost"

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/search/ISearchBarHost;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p0, p1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->onCreate$lambda$0(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f120269

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    :cond_0
    new-instance p1, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyDividerAdapter;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    const-string v2, "chatSectionAdapter"

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 48
    move-object v0, v1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    const/4 v3, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move-object v1, v0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p1, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 79
    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "global_my_chats_search"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "content_language"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 21
    .line 22
    const-string v1, "search_key"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/master/search/b;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/narvii/master/search/b;-><init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "search_key"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    return-void
.end method
