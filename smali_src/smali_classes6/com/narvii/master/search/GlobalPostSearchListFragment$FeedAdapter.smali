.class Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;
.super Lcom/narvii/master/search/GlobalPostSearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalPostSearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalPostSearchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Global Search"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lcom/narvii/util/logging/LoggingOrigin;->GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 14
    return-void
.end method


# virtual methods
.method protected completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "searchQuery"

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    return-void
.end method

.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0354

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "post/search"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    .line 25
    const-string v0, "v"

    .line 26
    .line 27
    const-string v1, "2.0.0"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    .line 32
    const-string v0, "q"

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->filterByMyAmino()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "my"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->sortBy()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const-string v1, "orderBy"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "searchId"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const-string v1, "language"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "PostsSearchResult"

    return-object v0
.end method

.method protected getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->access$000(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public showListEnd(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected videoAutoPlay()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->access$100(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
