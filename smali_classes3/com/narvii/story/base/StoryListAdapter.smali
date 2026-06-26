.class public Lcom/narvii/story/base/StoryListAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "StoryListAdapter.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;,
        Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;,
        Lcom/narvii/story/base/StoryListAdapter$DataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/Blog;",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryListAdapter.kt\ncom/narvii/story/base/StoryListAdapter\n*L\n1#1,301:1\n*E\n"
.end annotation


# instance fields
.field private final TYPE_HEADER:I

.field private final TYPE_STORY:I

.field private final accountService:Lcom/narvii/account/AccountService;

.field private allItemCount:I

.field private final communityHelper:Lcom/narvii/community/CommunityHelper;

.field private final languageService:Lcom/narvii/language/ContentLanguageService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/narvii/story/base/StoryListAdapter;->TYPE_STORY:I

    .line 45
    new-instance v0, Lcom/narvii/community/CommunityHelper;

    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/base/StoryListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    const-string v0, "account"

    .line 46
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "context.getService(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/story/base/StoryListAdapter;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "content_language"

    .line 47
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method


# virtual methods
.method public createApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 240
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "topic/0/feed/story"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "type"

    const-string v2, "discover-list"

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "v"

    const-string v2, "2.0.0"

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 244
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "content_language"

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v1, "language"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 246
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public createHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b048e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026er_common, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/narvii/story/base/StoryListAdapter$DataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/base/StoryListAdapter$DataSource;-><init>(Lcom/narvii/story/base/StoryListAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAllItemCount()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/narvii/story/base/StoryListAdapter;->allItemCount:I

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryList"

    return-object v0
.end method

.method public final getCommunityHelper()Lcom/narvii/community/CommunityHelper;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    return-object v0
.end method

.method public final getCommunityInfo(I)Lcom/narvii/model/Community;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/story/base/StoryDataSource;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 177
    check-cast v0, Lcom/narvii/story/base/StoryDataSource;

    invoke-virtual {v0}, Lcom/narvii/story/base/StoryDataSource;->getCommunityInfoMapping()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.story.base.StoryDataSource"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getItemType(I)I
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 123
    iget p1, p0, Lcom/narvii/story/base/StoryListAdapter;->TYPE_HEADER:I

    return p1

    .line 125
    :cond_0
    iget p1, p0, Lcom/narvii/story/base/StoryListAdapter;->TYPE_STORY:I

    return p1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public final getTYPE_HEADER()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/narvii/story/base/StoryListAdapter;->TYPE_HEADER:I

    return v0
.end method

.method public final getTYPE_STORY()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/narvii/story/base/StoryListAdapter;->TYPE_STORY:I

    return v0
.end method

.method protected final getUserInfo(I)Lcom/narvii/model/User;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/story/base/StoryDataSource;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 184
    check-cast v0, Lcom/narvii/story/base/StoryDataSource;

    invoke-virtual {v0}, Lcom/narvii/story/base/StoryDataSource;->getUserInfoMapping()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.story.base.StoryDataSource"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->createApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 207
    :cond_1
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isListShow()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public itemCellLayoutId()I
    .locals 1

    const v0, 0x7f0b0395

    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    instance-of v0, p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    sub-int/2addr p2, v0

    .line 150
    check-cast p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Blog;

    invoke-virtual {p1, p2}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->bindStory(Lcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/narvii/story/base/StoryListAdapter;->TYPE_HEADER:I

    if-ne p2, v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/story/base/StoryListAdapter;->createHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;-><init>(Lcom/narvii/story/base/StoryListAdapter;Landroid/view/View;)V

    return-object p2

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->itemCellLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    new-instance p2, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;-><init>(Lcom/narvii/story/base/StoryListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onHeaderViewClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 165
    invoke-virtual {p0, p4}, Lcom/narvii/story/base/StoryListAdapter;->onHeaderViewClicked(Landroid/view/View;)V

    goto :goto_1

    .line 167
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 168
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 169
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    const-string v1, "blog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 170
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/story/base/StoryListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v1

    iget v2, v0, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p0, v2}, Lcom/narvii/story/base/StoryListAdapter;->getUserInfo(I)Lcom/narvii/model/User;

    move-result-object v2

    invoke-virtual {p0, p4, v0, v1, v2}, Lcom/narvii/story/base/StoryListAdapter;->openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V

    .line 172
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 64
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/model/Blog;

    const-string v2, "null cannot be cast to non-null type com.narvii.model.Blog"

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/model/Blog;

    .line 66
    iget-object v3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v3}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 68
    invoke-static {v3, v1, p1}, Lcom/narvii/story/base/StoryListAdapterKt;->filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;

    move-result-object p1

    goto :goto_2

    .line 65
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-eqz p1, :cond_1a

    if-eqz p1, :cond_4

    .line 73
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    const-string v3, "update"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    const-string v4, "edit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object v1, v0

    :goto_5
    instance-of v1, v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_9

    .line 74
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p0, v3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto/16 :goto_d

    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-eqz p1, :cond_a

    .line 75
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v1, v0

    :goto_6
    const-string v4, "delete"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_7

    :cond_b
    move-object v1, v0

    :goto_7
    instance-of v1, v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_d

    .line 76
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_c

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p0, v4, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto/16 :goto_d

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_e

    .line 77
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_8

    :cond_e
    move-object v1, v0

    :goto_8
    const-string v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz p1, :cond_f

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_9

    :cond_f
    move-object v1, v0

    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_10
    if-eqz p1, :cond_11

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_a

    :cond_11
    move-object v1, v0

    :goto_a
    instance-of v1, v1, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_13

    .line 78
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast v0, Lcom/narvii/model/Comment;

    .line 79
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    iget-object v2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    const-string v3, "n.parentId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/narvii/paging/source/DataSource;->getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1a

    .line 81
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 82
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p1, v1}, Lcom/narvii/paging/source/DataSource;->updateItem(Lcom/narvii/model/NVObject;)I

    .line 83
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_d

    .line 78
    :cond_12
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.Comment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    if-eqz p1, :cond_14

    .line 85
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    :cond_14
    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 88
    invoke-virtual {v1}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 89
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v5, "null cannot be cast to non-null type com.narvii.model.User"

    if-eqz v4, :cond_18

    check-cast v4, Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 90
    instance-of v0, v2, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_17

    .line 91
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_16

    check-cast v0, Lcom/narvii/model/User;

    iput-object v0, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    goto :goto_c

    :cond_16
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_c
    const/4 v0, 0x1

    goto :goto_b

    .line 89
    :cond_18
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    if-eqz v0, :cond_1a

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    :goto_d
    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 p2, 0x0

    .line 191
    invoke-virtual {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p2, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 193
    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 194
    invoke-virtual {p2, p4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 195
    new-instance p3, Lcom/narvii/story/StoryHelper;

    iget-object p4, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, p4}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 196
    invoke-virtual {p3, p1, p2}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public final setAllItemCount(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/narvii/story/base/StoryListAdapter;->allItemCount:I

    return-void
.end method

.method public setFirstPageRequestFinished()V
    .locals 0

    return-void
.end method

.method public showHeaderView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
