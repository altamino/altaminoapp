.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedAdapter"
.end annotation


# instance fields
.field dID:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->dID:Ljava/lang/String;

    .line 12
    const/4 p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 15
    return-void
.end method

.method static synthetic access$900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->sendNoInterestRequest(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method private sendNoInterestRequest(Lcom/narvii/model/Feed;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, "headline/feedback/report"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    const-string v2, "type"

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->x(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/language/ContentLanguageService;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string v4, "language"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    sget-object v2, La0/a;->o:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->dID:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    .line 70
    iget v2, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    const-string v4, "ndcId"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    .line 81
    instance-of v2, p1, Lcom/narvii/model/Item;

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    const/4 v3, 0x2

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    const-string v3, "objectType"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    .line 95
    const-string v2, "objectId"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iget-object p1, p1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "channel"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    .line 117
    const-string p1, "api"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 136
    return-void
.end method


# virtual methods
.method protected channelId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 19
    :goto_0
    return-object v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "headline/feed"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "channel"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->x(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/language/ContentLanguageService;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "language"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    .line 43
    sget-object v1, La0/a;->o:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->dID:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    const-string v1, "v"

    .line 51
    .line 52
    const-string v2, "2.1.0"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const-string v1, "start0"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    .line 64
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->REQ_TAG_QUERY_START_TIME:Lcom/narvii/util/Tag;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    move-result-wide v2

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {v1, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->E(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method protected enterCommunityDirectly()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    const-string v1, "enterCommunityDirectly"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected getStoredLastTimeFeedId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->B(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/HeadlinePreferencesHelper;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlinePreferencesHelper;->getLastTimeHeadlineFeedId(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    :goto_0
    return-object v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->E(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V

    .line 10
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0653

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    sget-object p2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 28
    move-result-object p4

    .line 29
    .line 30
    iget-object p4, p4, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p2

    .line 35
    const/4 p4, 0x1

    .line 36
    xor-int/2addr p2, p4

    .line 37
    const/4 p5, 0x0

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    .line 42
    const v0, 0x7f120d82

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 46
    .line 47
    :cond_0
    const-string v0, "affiliations"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 54
    move-object v1, p3

    .line 55
    .line 56
    check-cast v1, Lcom/narvii/model/Feed;

    .line 57
    .line 58
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f120781

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 69
    .line 70
    new-instance p5, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;

    .line 71
    .line 72
    .line 73
    invoke-direct {p5, p0, p2, p3, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;ZLjava/lang/Object;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 80
    return p4

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method protected onLastReadPointClicked()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onRefresh()V

    .line 16
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->E(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 3
    iget-object v0, p2, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/narvii/headlines/HeadlineListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 6
    invoke-static {v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->L(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected showLastReadTimePoint()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    xor-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public storeLastTimeReadFeedId()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->storeLastTimeReadFeedId()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->B(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/HeadlinePreferencesHelper;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Lcom/narvii/model/Feed;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/narvii/headlines/HeadlinePreferencesHelper;->saveLastReadHeadlineFeedId(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
