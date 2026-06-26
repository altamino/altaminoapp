.class Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;
.super Lcom/narvii/feed/FeaturedFeedAdapter;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrontFeaturedAdapter"
.end annotation


# instance fields
.field pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

.field refreshFlags:I

.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;I)V
    .locals 1

    .line 365
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeaturedFeedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 357
    new-instance p1, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter$1;

    const-class v0, Lcom/narvii/model/Feed;

    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter$1;-><init>(Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

    .line 367
    iput p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const-string p1, "Front Page Feed"

    .line 368
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    const-wide/16 p1, 0x4b0

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->setRefreshWaitTime(J)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 442
    iget-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    if-eqz v0, :cond_2

    .line 443
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 449
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShown()Z
    .locals 3

    .line 429
    iget-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v2

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected logFeedClickEvent(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 415
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void

    .line 419
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 379
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    .line 380
    new-instance v0, Lcom/narvii/feed/FeatureLayoutImpressionCollector;

    const-class v1, Lcom/narvii/model/Feed;

    invoke-direct {v0, v1}, Lcom/narvii/feed/FeatureLayoutImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 381
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    .line 472
    invoke-virtual {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->resetList()V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/FeaturedFeedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 387
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    iget-boolean p3, p1, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->pendingForFeatured:Z

    if-eqz p3, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p3, p1, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 391
    iget-boolean p3, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    if-eqz p3, :cond_2

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 392
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    invoke-virtual {p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->getTopCellCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->setShowStyle(I)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->setShowStyle(I)V

    .line 399
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 400
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 401
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    const/4 p3, 0x4

    if-eq p1, p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 403
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    .line 406
    :cond_5
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    const p2, 0x3f19999a    # 0.6f

    iput p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->targetAlpha:F

    goto :goto_3

    .line 404
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->targetAlpha:F

    .line 408
    :goto_3
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    invoke-static {p1}, Lcom/narvii/feed/FrontFeedListFragment;->access$100(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 409
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "config"

    .line 460
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 461
    iget-object v1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v1, v1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    const-string v2, "frontPageLayout"

    invoke-virtual {v0, v2}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/feed/FeaturedFeedAdapter;->setDisplayMode(I)V

    .line 462
    iput p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->refreshFlags:I

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    or-int/lit16 p2, p1, 0x200

    const/4 v0, 0x0

    .line 464
    invoke-super {p0, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 465
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p2, p2, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 466
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p2, p2, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 467
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method protected useDefaultImpressionCollector()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
