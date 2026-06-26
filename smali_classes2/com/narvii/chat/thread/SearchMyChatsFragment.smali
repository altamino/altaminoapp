.class public final Lcom/narvii/chat/thread/SearchMyChatsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SearchMyChatsFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchMyChatsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchMyChatsFragment.kt\ncom/narvii/chat/thread/SearchMyChatsFragment\n*L\n1#1,149:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

.field private final instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private searchBar:Lcom/narvii/widget/SearchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method

.method public static final synthetic access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 80
    new-instance p1, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;-><init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    .line 81
    iget-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    const/4 v1, 0x0

    const-string v2, "chatsAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SearchMyChat"

    return-object v0
.end method

.method public bridge synthetic hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->hasPostEntry()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0226

    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 35
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 36
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    new-instance v1, Lcom/narvii/chat/thread/SearchMyChatsFragment$onCreate$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment$onCreate$1;-><init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "search_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02de

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0909da

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.search_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/SearchBar;

    iput-object p2, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 67
    iget-object p2, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 68
    sget p2, Lcom/narvii/amino/R$id;->search_cancel:I

    invoke-virtual {p0, p2}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p2, Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$2;

    invoke-direct {p2, p1}, Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$2;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0xc8

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const-string p1, "searchBar"

    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected showListviewWhenLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
