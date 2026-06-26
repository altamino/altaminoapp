.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "HeadlineSubTypeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedAdapter"
.end annotation


# instance fields
.field deviceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 530
    invoke-direct {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "deviceid"

    .line 531
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 532
    invoke-virtual {p1}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->deviceId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 533
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method

.method static synthetic access$2100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 525
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->sendNoInterestRequest(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private sendNoInterestRequest(Lcom/narvii/model/Feed;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 649
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 650
    new-instance v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 657
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "headline/feedback/report"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v2, 0x1

    .line 659
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 660
    iget-object v3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 661
    iget-object v3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->deviceId:Ljava/lang/String;

    const-string v4, "deviceID"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 662
    iget v3, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ndcId"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 663
    instance-of v3, p1, Lcom/narvii/model/Item;

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 664
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    const-string v2, "objectId"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 665
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "api"

    .line 666
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 667
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 668
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method protected channelId()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 538
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "headline/feed"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 540
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 541
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 542
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->deviceId:Ljava/lang/String;

    const-string v2, "deviceID"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo v1, "v"

    const-string v2, "2.1.0"

    .line 543
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string v1, "start0"

    .line 545
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->REQ_TAG_QUERY_START_TIME:Lcom/narvii/util/Tag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 548
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1802(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    .line 549
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected enterCommunityDirectly()Z
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    const-string v1, "enterCommunityDirectly"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getStoredLastTimeFeedId()Ljava/lang/String;
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/HeadlinePreferencesHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlinePreferencesHelper;->getLastTimeHeadlineFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 600
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 601
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1802(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_1

    .line 606
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904fe

    if-ne v0, v1, :cond_1

    .line 607
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 608
    sget-object p2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    iget-object p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object p4

    iget-object p4, p4, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    xor-int/2addr p2, p4

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    const v0, 0x7f0f0c55

    .line 610
    invoke-virtual {p1, v0, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    :cond_0
    const-string v0, "affiliations"

    .line 612
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 613
    move-object v1, p3

    check-cast v1, Lcom/narvii/model/Feed;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    const v1, 0x7f0f06d5

    .line 614
    invoke-virtual {p1, v1, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 615
    new-instance p5, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;

    invoke-direct {p5, p0, p2, p3, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;ZLjava/lang/Object;Z)V

    invoke-virtual {p1, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 639
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return p4

    .line 642
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLastReadPointClicked()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 571
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onRefresh()V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1802(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 590
    iget-object v0, p2, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {p2}, Lcom/narvii/headlines/HeadlineListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2000(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)V

    .line 595
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 525
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected showLastReadTimePoint()Z
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public storeLastTimeReadFeedId()V
    .locals 4

    .line 576
    invoke-super {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->storeLastTimeReadFeedId()V

    .line 577
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$1900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/HeadlinePreferencesHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/headlines/HeadlinePreferencesHelper;->saveLastReadHeadlineFeedId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
