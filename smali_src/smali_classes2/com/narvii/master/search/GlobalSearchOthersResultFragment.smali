.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyDividerAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;,
        Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;
    }
.end annotation


# instance fields
.field public aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field private curKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

.field private requestSent:Z

.field private responseTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

.field private topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;


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

.method public static final synthetic access$getApiService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/master/search/ChangeSearchTextListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->errorMsg:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->requestSent:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$onRequestFinish(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/master/search/model/AllSearchResultResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onRequestFinish(Lcom/narvii/master/search/model/AllSearchResultResponse;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setApiRequest$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    return-void
.end method

.method public static final synthetic access$setErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->errorMsg:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static final synthetic access$setRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->requestSent:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$showSearchHistory(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->showSearchHistory()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final onRequestFinish(Lcom/narvii/master/search/model/AllSearchResultResponse;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/master/search/model/AllSearchResultResponse;->sectionList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->sectionType:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string v3, "sectionType"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    const-string p1, "topicSectionAdapter"

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 60
    const/4 p1, 0x0

    .line 61
    .line 62
    :cond_3
    const-string v1, "TOPIC"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getPostSectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string v1, "POST"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 94
    :cond_4
    :goto_1
    return-void
.end method

.method private final searchText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 35
    :cond_2
    return-void
.end method

.method private final sendRequest()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    const-string v1, "apiService"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object v0, v2

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    :cond_2
    return-void

    .line 37
    :cond_3
    const/4 v0, 0x0

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->requestSent:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    :cond_4
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v3, "/search/others"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v3, "q"

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v3, "searchId"

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object v0

    .line 80
    const/4 v3, 0x1

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    const-string v4, "ignoreMembership"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 93
    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    const-string v3, "contentLanguageService"

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 100
    move-object v3, v2

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    const-string v4, "language"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 119
    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    move-object v2, v0

    .line 126
    .line 127
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 128
    .line 129
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;

    .line 130
    .line 131
    const-class v3, Lcom/narvii/master/search/model/AllSearchResultResponse;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, p0, v3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$sendRequest$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/Class;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 138
    return-void
.end method

.method private final showSearchHistory()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "searchHistoryDelegate"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    move-object p1, v0

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 26
    .line 27
    .line 28
    const v1, 0x7f12106a

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    .line 55
    :cond_2
    new-instance p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->setAminoIdMatchedAdapter(Lcom/narvii/master/search/AminoIdMatchedAdapter;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    :cond_3
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 75
    .line 76
    .line 77
    const v1, 0x7f1211dd

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p0, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 86
    .line 87
    iput-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 91
    .line 92
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyDividerAdapter;

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->topicSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    .line 98
    .line 99
    if-nez v2, :cond_4

    .line 100
    .line 101
    const-string v2, "topicSectionAdapter"

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move-object v0, v2

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    .line 118
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .line 125
    :cond_6
    new-instance p1, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 126
    .line 127
    .line 128
    const v0, 0x7f120f3c

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 132
    .line 133
    new-instance v0, Lcom/narvii/master/HeadlineDividerAdapter;

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, p0}, Lcom/narvii/master/HeadlineDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 137
    .line 138
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->setPostSectionAdapter(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getPostSectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/narvii/master/HeadlineDividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getPostSectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 159
    .line 160
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 161
    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    .line 167
    :cond_7
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 168
    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    .line 174
    :cond_8
    new-instance p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;

    .line 175
    const/4 v3, 0x4

    .line 176
    const/4 v4, 0x1

    .line 177
    const/4 v5, 0x0

    .line 178
    const/4 v6, 0x4

    .line 179
    const/4 v7, 0x0

    .line 180
    move-object v1, p1

    .line 181
    move-object v2, p0

    .line 182
    .line 183
    .line 184
    invoke-direct/range {v1 .. v7}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZILkotlin/jvm/internal/k;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getPostSectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 194
    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    .line 200
    :cond_9
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 201
    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    .line 9
    const-string v1, "getString(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    return-object v0
.end method

.method public final getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "aminoIdMatchedAdapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.method public final getMergeAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "global_others_search"

    return-object v0
.end method

.method public final getPostSectionAdapter()Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "postSectionAdapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getResponseTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->responseTime:Ljava/lang/String;

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
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    const-string p1, "content_language"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "getService(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 23
    .line 24
    const-string p1, "api"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 38
    .line 39
    const-string v0, "others"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Le8/l;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    const-string p1, "searchHistoryDelegate"

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 62
    const/4 p1, 0x0

    .line 63
    .line 64
    :cond_0
    new-instance v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$2;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$2;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Le8/a;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02d7

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 17
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 7
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchText(Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "searchHistoryDelegate"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0
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
    .line 3
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->curKey:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 27
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->sendRequest()V

    .line 12
    return-void
.end method

.method public final setAminoIdMatchedAdapter(Lcom/narvii/master/search/AminoIdMatchedAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/AminoIdMatchedAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0
    .param p1    # Lcom/narvii/master/search/ChangeSearchTextListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method

.method public final setMergeAdapter(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->mergeAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;

    return-void
.end method

.method public final setPostSectionAdapter(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->postSectionAdapter:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    return-void
.end method

.method public final setResponseTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->responseTime:Ljava/lang/String;

    return-void
.end method
