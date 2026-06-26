.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalChatsSearchFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;,
        Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;,
        Lcom/narvii/master/search/GlobalChatsSearchFragment$MyDividerAdapter;,
        Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatsSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatsSearchFragment.kt\ncom/narvii/master/search/GlobalChatsSearchFragment\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

.field private chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

.field private chatApiRequest:Lcom/narvii/util/http/ApiRequest;

.field private chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

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

.field private curKey:Ljava/lang/String;

.field private hideMatchIdAdapter:Z

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private requestSent:Z

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/ChangeSearchTextListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-object p0
.end method

.method public static final synthetic access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "chatAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getChatApiRequest$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$getChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "chatSectionAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCommunityMap$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->communityMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getHideMatchIdAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    return p0
.end method

.method public static final synthetic access$getMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method public static final synthetic access$getRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    return p0
.end method

.method public static final synthetic access$onRequestFinish(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->onRequestFinish(Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V

    return-void
.end method

.method public static final synthetic access$setChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method

.method public static final synthetic access$setChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    return-void
.end method

.method public static final synthetic access$setChatApiRequest$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static final synthetic access$setChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    return-void
.end method

.method public static final synthetic access$setCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setHideMatchIdAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    return-void
.end method

.method public static final synthetic access$setMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/list/MergeAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-void
.end method

.method public static final synthetic access$setRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    return-void
.end method

.method public static final synthetic access$showSearchHistory(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method private final onRequestFinish(Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 426
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    const-string p1, "chatSectionAdapter"

    .line 425
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final sendRequest()V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    const-string v1, "apiService"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 389
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 392
    iput-boolean v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    .line 393
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void

    :cond_2
    const-string v0, "chatSectionAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->requestSent:Z

    .line 397
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 398
    :cond_4
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 399
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v4, "chat/thread/search"

    .line 400
    invoke-virtual {v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 401
    iget-object v4, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    const-string v5, "q"

    invoke-virtual {v0, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 402
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 403
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 404
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatApiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;

    const-class v3, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "contentLanguageService"

    .line 403
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final showSearchHistory()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 11

    .line 148
    new-instance p1, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 170
    new-instance p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 171
    new-instance p1, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 173
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 175
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    .line 177
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 178
    iget-object v1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    if-eqz v1, :cond_9

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 180
    new-instance v1, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 181
    invoke-virtual {v1, p1}, Lcom/narvii/master/search/SearchKeywordHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    const/4 v2, 0x0

    const-string v3, "hide_match_id_adapter"

    .line 183
    invoke-virtual {p0, v3, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    .line 184
    iget-boolean v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    :cond_0
    new-instance v2, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v3, 0x7f0f0226

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 190
    new-instance v3, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    invoke-direct {v3, p0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 191
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    const-string v4, "chatSectionAdapter"

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 192
    new-instance v3, Lcom/narvii/master/search/GlobalChatsSearchFragment$MyDividerAdapter;

    invoke-direct {v3, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$MyDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 193
    iget-object v5, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz v5, :cond_7

    invoke-virtual {v3, v5}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-boolean v5, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    if-nez v5, :cond_2

    .line 195
    iget-object v5, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    :cond_2
    new-instance v2, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 199
    iget-object v3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 200
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->hideMatchIdAdapter:Z

    if-nez v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1

    .line 199
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p1, "chatAdapter"

    .line 178
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string p1, "searchHistoryDelegate"

    .line 173
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f0c48

    .line 134
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.normal_empty_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 215
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

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    const-string p1, "search_key"

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    const-string p1, "api"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->apiService:Lcom/narvii/util/http/ApiService;

    const-string p1, "content_language"

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 68
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "chat"

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 69
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const/4 v0, 0x0

    const-string v1, "searchHistoryDelegate"

    if-eqz p1, :cond_2

    new-instance v2, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$1;

    invoke-direct {v2, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$1;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V

    .line 73
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$onCreate$2;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-virtual {p0, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchText(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 123
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "searchHistoryDelegate"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p0, v1, v1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_2
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchText(Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "searchHistoryDelegate"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string p1, "chatAdapter"

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "chatAdapter"

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 103
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->setKeyword(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 105
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    .line 106
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void

    :cond_1
    const-string p1, "chatSectionAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V

    return-void
.end method

.method public final searchText(Ljava/lang/String;)V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    const-string v1, "chatAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object v5, p1

    :goto_2
    invoke-virtual {v0, v5}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->setKeyword(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->resetList()V

    .line 140
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    move-object p1, v6

    :cond_6
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->curKey:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->chatSectionAdapter:Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->setSection(Lcom/narvii/chat/thread/ThreadListResponse;)V

    .line 144
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V

    return-void

    :cond_7
    const-string p1, "chatSectionAdapter"

    .line 143
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setAminoIdMatchedAdapter(Lcom/narvii/master/search/AminoIdMatchedAdapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
