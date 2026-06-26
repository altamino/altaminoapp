.class Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;
.super Lcom/narvii/master/search/GlobalPostSearchAdapter;
.source "GlobalPostSearchListFragment.java"


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

    .line 247
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 248
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalPostSearchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Global Search"

    .line 249
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 250
    sget-object p1, Lcom/narvii/util/logging/LoggingOrigin;->GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    return-void
.end method


# virtual methods
.method protected completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 255
    iget-object p2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    const-string v0, "searchQuery"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const p3, 0x7f0b0322

    .line 265
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 276
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 279
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "post/search"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "v"

    const-string v1, "2.0.0"

    .line 281
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 282
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 283
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->filterByMyAmino()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 284
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->sortBy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orderBy"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 285
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 286
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x9

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "excludedPostTypes"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 288
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "PostsSearchResult"

    return-object v0
.end method

.method protected getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->access$000(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

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

    .line 299
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->access$100(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Z

    move-result v0

    return v0
.end method
