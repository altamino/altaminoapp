.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalSearchOthersResultFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyDividerAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingStoryAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalSearchOthersResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalSearchOthersResultFragment.kt\ncom/narvii/master/search/GlobalSearchOthersResultFragment\n*L\n1#1,743:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

.field private contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private curKey:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

.field public postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

.field private requestSent:Z

.field private responseTime:Ljava/lang/String;

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

.field public storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

.field private topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApiRequest$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$getApiService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "apiService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/master/search/ChangeSearchTextListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-object p0
.end method

.method public static final synthetic access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contentLanguageService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->requestSent:Z

    return p0
.end method

.method public static final synthetic access$onRequestFinish(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/master/search/model/AllSearchResultResponse;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onRequestFinish(Lcom/narvii/master/search/model/AllSearchResultResponse;)V

    return-void
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    return-void
.end method

.method public static final synthetic access$setApiRequest$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static final synthetic access$setApiService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public static final synthetic access$setChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method

.method public static final synthetic access$setContentLanguageService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public static final synthetic access$setCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->requestSent:Z

    return-void
.end method

.method public static final synthetic access$showSearchHistory(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method private final onRequestFinish(Lcom/narvii/master/search/model/AllSearchResultResponse;)V
    .locals 4

    if-eqz p1, :cond_7

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget-object p1, p1, Lcom/narvii/master/search/model/AllSearchResultResponse;->sectionList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 247
    iget-object v2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->sectionType:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "section.sectionType"

    .line 248
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "section"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-string v2, "TOPIC"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V

    .line 253
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    if-eqz p1, :cond_5

    const-string v2, "STORY"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V

    .line 254
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    if-eqz p1, :cond_4

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V

    .line 256
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    :cond_4
    const-string p1, "postSectionAdapter"

    .line 254
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "storySectionAdapter"

    .line 253
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "topicSectionAdapter"

    .line 252
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    return-void
.end method

.method private final searchText(Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 290
    :goto_0
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 292
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    const-string p1, "aminoIdMatchedAdapter"

    .line 292
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final sendRequest()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    const-string v1, "apiService"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 199
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->requestSent:Z

    .line 207
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 208
    :cond_4
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 209
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v3, "/search/others"

    .line 210
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 211
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    const-string v4, "q"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 212
    invoke-static {p0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "searchId"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ignoreMembership"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 214
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 215
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;

    const-class v3, Lcom/narvii/master/search/model/AllSearchResultResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "contentLanguageService"

    .line 214
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final showSearchHistory()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 12

    .line 136
    new-instance p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 138
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 140
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v1, 0x7f0f0f5e

    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 141
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V

    .line 143
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    :cond_1
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v1, 0x7f0f0f5d

    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 147
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingStoryAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingStoryAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 148
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V

    .line 149
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v9

    .line 150
    new-instance v2, Lcom/narvii/list/DivideColumnAdapter;

    move-object v4, v2

    move-object v5, p0

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v4 .. v9}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v3, 0x1

    .line 151
    iput-boolean v3, v2, Lcom/narvii/list/DivideColumnAdapter;->recyclerItem:Z

    const/4 v3, 0x2

    .line 152
    invoke-virtual {v2, v1, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 153
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    :cond_3
    new-instance p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 157
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    const-string p1, "aminoIdMatchedAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_5
    :goto_0
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v1, 0x7f0f10d1

    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 160
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    .line 161
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    const-string v2, "topicSectionAdapter"

    if-eqz v1, :cond_14

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 162
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyDividerAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 163
    iget-object v4, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    if-eqz v4, :cond_13

    invoke-virtual {v1, v4}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    :cond_6
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    :cond_7
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v1, 0x7f0f1042

    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 169
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    .line 170
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    .line 171
    new-instance v2, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v2, p0, v1, v1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 172
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    const-string v4, "storySectionAdapter"

    if-eqz v1, :cond_12

    invoke-virtual {v2, v1, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 173
    invoke-virtual {p1, v2}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 174
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    :cond_9
    new-instance p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    if-eqz v1, :cond_11

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 178
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    :cond_a
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v1, 0x7f0f0e12

    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 183
    new-instance v1, Lcom/narvii/master/HeadlineDividerAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/master/HeadlineDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 184
    new-instance v2, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 185
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    const-string v3, "postSectionAdapter"

    if-eqz v2, :cond_10

    invoke-virtual {v1, v2}, Lcom/narvii/master/HeadlineDividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    if-eqz v2, :cond_f

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 187
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v2, :cond_b

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    :cond_b
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    :cond_c
    new-instance p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    if-eqz v1, :cond_e

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    :cond_d
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    return-object p1

    .line 190
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string p1, "searchHistoryDelegate"

    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f0c48

    .line 236
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.normal_empty_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "aminoIdMatchedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 489
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public final getMergeAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Others"

    return-object v0
.end method

.method public final getPostSectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "postSectionAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getResponseTime()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->responseTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorySectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "storySectionAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 739
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 118
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    const-string p1, "content_language"

    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    const-string p1, "api"

    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 122
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "others"

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 123
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const/4 v0, 0x0

    const-string v1, "searchHistoryDelegate"

    if-eqz p1, :cond_1

    new-instance v2, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;

    invoke-direct {v2, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V

    .line 127
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$2;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02a7

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 132
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    const-string p1, "text"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchText(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "searchHistoryDelegate"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 267
    :cond_2
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 272
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 275
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const-string p2, "aminoIdMatchedAdapter"

    .line 275
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    return-void
.end method

.method public final setAminoIdMatchedAdapter(Lcom/narvii/master/search/AminoIdMatchedAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method

.method public final setMergeAdapter(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    return-void
.end method

.method public final setPostSectionAdapter(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    return-void
.end method

.method public final setResponseTime(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->responseTime:Ljava/lang/String;

    return-void
.end method

.method public final setStorySectionAdapter(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->storySectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;

    return-void
.end method
