.class public final Lcom/narvii/master/search/GlobalMyChatsSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalMyChatsSearchFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;,
        Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyDividerAdapter;,
        Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalMyChatsSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalMyChatsSearchFragment.kt\ncom/narvii/master/search/GlobalMyChatsSearchFragment\n*L\n1#1,132:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

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
.end field

.field private contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private final instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method

.method public static final synthetic access$getCommunityMap$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Ljava/util/HashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contentLanguageService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getInstantSearchListener$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method

.method public static final synthetic access$setContentLanguageService$p(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 49
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 50
    new-instance p1, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;

    const v0, 0x7f0f0226

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyChatSectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 51
    new-instance v0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    .line 52
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    const-string v1, "chatSectionAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    :cond_0
    new-instance p1, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyDividerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$MyDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 55
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalMyChatsSearchFragment$ChatSectionAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 58
    iget-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 57
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 89
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreFromMyChats"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "content_language"

    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"content_language\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 35
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const-string v1, "search_key"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    new-instance v2, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;

    invoke-direct {v2, p0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;-><init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)V

    invoke-virtual {v0, v2}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
