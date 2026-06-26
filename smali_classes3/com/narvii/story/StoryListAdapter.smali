.class public Lcom/narvii/story/StoryListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "StoryListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Blog;",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private final communityHelper:Lcom/narvii/community/CommunityHelper;

.field communityInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field languageService:Lcom/narvii/language/ContentLanguageService;

.field protected playerSource:Ljava/lang/String;

.field private storyHelper:Lcom/narvii/story/StoryHelper;

.field topId:I

.field type:Ljava/lang/String;

.field userInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;ILjava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/StoryListAdapter;->communityInfoMapping:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/StoryListAdapter;->userInfoMapping:Ljava/util/Map;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 54
    iput p2, p0, Lcom/narvii/story/StoryListAdapter;->topId:I

    .line 55
    iput-object p3, p0, Lcom/narvii/story/StoryListAdapter;->type:Ljava/lang/String;

    const-string p2, "topic-player"

    .line 56
    iput-object p2, p0, Lcom/narvii/story/StoryListAdapter;->playerSource:Ljava/lang/String;

    const-string p2, "content_language"

    .line 57
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    iput-object p2, p0, Lcom/narvii/story/StoryListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 58
    new-instance p2, Lcom/narvii/community/CommunityHelper;

    invoke-direct {p2, p1}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/story/StoryListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 59
    new-instance p2, Lcom/narvii/story/StoryHelper;

    invoke-direct {p2, p1}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/story/StoryListAdapter;->storyHelper:Lcom/narvii/story/StoryHelper;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 80
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/story/StoryListAdapter;->topId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/feed/story"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->type:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "v"

    const-string v1, "2.0.0"

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryList"

    return-object v0
.end method

.method protected getCommunityInfo(I)Lcom/narvii/model/Community;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->communityInfoMapping:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 166
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 167
    move-object v5, p1

    check-cast v5, Lcom/narvii/model/Blog;

    const p1, 0x7f0b0395

    .line 168
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090ae4

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/widgets/StoryCardView;

    .line 170
    invoke-virtual {p2, v5}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    .line 171
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {v5}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p2

    if-eqz p2, :cond_0

    const v2, 0x7f090586

    const/4 p2, 0x0

    .line 173
    invoke-virtual {v5, p2}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getUserInfo(I)Lcom/narvii/model/User;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->userInfoMapping:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 65
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onFirstStoryPageBecomeVisible()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 105
    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 106
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 107
    check-cast p3, Lcom/narvii/model/Blog;

    invoke-virtual {p0, p4, p3}, Lcom/narvii/story/StoryListAdapter;->showStoryListFragment(Landroid/view/View;Lcom/narvii/model/Blog;)V

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 182
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    const-string v1, "update"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto/16 :goto_2

    .line 184
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v4, "new"

    if-eq v0, v4, :cond_1

    const-string v4, "delete"

    if-ne v0, v4, :cond_4

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    .line 188
    iget-object v4, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    instance-of v4, v1, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_2

    .line 190
    check-cast v1, Lcom/narvii/model/Blog;

    .line 191
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/model/Comment;

    iget-object v4, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 198
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 200
    :cond_4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v1, v0, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    .line 203
    instance-of v4, v1, Lcom/narvii/model/Feed;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/User;

    check-cast v1, Lcom/narvii/model/Feed;

    iget-object v5, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v4, v5}, Lcom/narvii/model/User;->isSameUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/model/User;

    iput-object v2, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 209
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;I)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/narvii/story/StoryListAdapter;->onFirstStoryPageBecomeVisible()V

    .line 95
    :cond_0
    iget-object p1, p2, Lcom/narvii/model/api/BlogListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 96
    iget-object p3, p0, Lcom/narvii/story/StoryListAdapter;->communityInfoMapping:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    :cond_1
    iget-object p1, p2, Lcom/narvii/model/api/BlogListResponse;->userProfileMapping:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 99
    iget-object p2, p0, Lcom/narvii/story/StoryListAdapter;->userInfoMapping:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 39
    check-cast p2, Lcom/narvii/model/api/BlogListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/story/StoryListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 137
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->communityInfoMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->userInfoMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 75
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.method protected showCommentBarInDetailPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showSearchButtonInDetailPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showStoryListFragment(Landroid/view/View;Lcom/narvii/model/Blog;)V
    .locals 2

    .line 122
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Feed;->ndcId:I

    .line 124
    invoke-virtual {p0, v1}, Lcom/narvii/story/StoryListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/narvii/story/StoryListAdapter;->showCommentBarInDetailPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/story/StoryListAdapter;->topId:I

    .line 126
    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryListAdapter;->playerSource:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    .line 128
    invoke-virtual {p0, p2}, Lcom/narvii/story/StoryListAdapter;->getUserInfo(I)Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/narvii/story/StoryListAdapter;->storyHelper:Lcom/narvii/story/StoryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
