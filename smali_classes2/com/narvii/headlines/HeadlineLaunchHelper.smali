.class public Lcom/narvii/headlines/HeadlineLaunchHelper;
.super Ljava/lang/Object;
.source "HeadlineLaunchHelper.java"


# instance fields
.field final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/narvii/app/NVContext;

.field loggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

.field loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field source:Ljava/lang/String;

.field final timeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 34
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 41
    iput-object p2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    .line 42
    new-instance p2, Lcom/narvii/headlines/HeadlineLoggingHelper;

    invoke-direct {p2, p1}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    return-void
.end method


# virtual methods
.method public launchFeed(ILcom/narvii/model/Feed;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 69
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/narvii/model/Community;

    .line 70
    sget-object v1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 71
    instance-of v1, v7, Lcom/narvii/model/Blog;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    move-object v1, v7

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->shouldShowWebPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 75
    :goto_0
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logPostDetailViewEntered(Lcom/narvii/model/Feed;ILjava/lang/String;ILjava/lang/String;)V

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(I)V

    .line 79
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "community"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    move/from16 v2, p1

    .line 80
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {v1, v8, v9, v2, v3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    :cond_1
    const-string v1, "fromHeadline"

    const-string v2, "__hideDrawer"

    const-string v3, "__interactionScope"

    const-string v4, "loggingOrigin"

    const-string v5, "loggingObjectId"

    const-string v6, "__community"

    const-string v9, "loggingSource"

    const-string v12, "prefetch"

    const-string v13, "__communityId"

    const-string v14, "Source"

    if-eqz v11, :cond_5

    .line 85
    const-class v11, Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {v11}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v11

    .line 86
    iget v15, v7, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v11, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    move-object v6, v7

    check-cast v6, Lcom/narvii/model/Blog;

    invoke-virtual {v6}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v8

    invoke-virtual {v8}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "url"

    invoke-virtual {v11, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "External Content"

    .line 90
    invoke-virtual {v11, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {v6}, Lcom/narvii/model/Blog;->objectType()I

    move-result v8

    const-string v12, "loggingObjectType"

    invoke-virtual {v11, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v6}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget v5, v6, Lcom/narvii/model/Blog;->type:I

    const-string v6, "loggingBlogType"

    invoke-virtual {v11, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v11, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v5, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    invoke-virtual {v11, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v5, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v5, :cond_2

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    :goto_1
    invoke-virtual {v11, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v5, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v5, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    :goto_2
    invoke-virtual {v11, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p6, :cond_4

    .line 99
    invoke-virtual {v11, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-virtual {v11, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :cond_4
    invoke-virtual {v11, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_5
    const-string v11, "global-search-player"

    .line 105
    invoke-static {v7, v11}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 106
    iget v15, v7, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v11, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v13, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v12, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v12, :cond_6

    const/4 v15, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    :goto_3
    invoke-virtual {v11, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v9, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v9, :cond_7

    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    :goto_4
    invoke-virtual {v11, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p6, :cond_8

    .line 113
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v11, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-virtual {v11, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    :cond_8
    invoke-virtual {v11, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_5
    return-void
.end method

.method public onPageResponse(Lcom/narvii/headlines/HeadlineListResponse;)V
    .locals 4

    .line 46
    iget-object v0, p1, Lcom/narvii/headlines/HeadlineListResponse;->communityInfoMapping:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    iget-object v0, p1, Lcom/narvii/headlines/HeadlineListResponse;->communityInfoMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 51
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareEnterCommunity(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "community"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 132
    new-instance v0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/headlines/HeadlineLaunchHelper$1;-><init>(Lcom/narvii/headlines/HeadlineLaunchHelper;I)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setCommunityMap(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 64
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
