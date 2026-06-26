.class Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MyCommunityListService.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCommunityListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field attaching:Z

.field suspendObserver:Z

.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method public constructor <init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 460
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 461
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    const-string v0, "account"

    .line 530
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 531
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 534
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, v1, v1}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 536
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/joined"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "v"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 539
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 541
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 543
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-nez p1, :cond_4

    .line 544
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 545
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, v1, v1}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    :cond_4
    return-object v1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 515
    const-class v0, Lcom/narvii/model/Community;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadNextPage(Z)V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->attaching:Z

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 491
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 492
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->filterHelper:Lcom/narvii/util/FilterHelper;

    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/community/MyCommunityListService;->filterList:Ljava/util/List;

    .line 493
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->suspendObserver:Z

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->attaching:Z

    .line 468
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->attaching:Z

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 3

    .line 585
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/narvii/community/MyCommunityListService;->requestTime:J

    .line 588
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 608
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Community;

    if-eqz v1, :cond_2

    .line 609
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "new"

    if-ne v1, v3, :cond_1

    .line 610
    check-cast v0, Lcom/narvii/model/Community;

    .line 611
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    iget v3, v0, Lcom/narvii/model/Community;->id:I

    const-string v4, "account"

    invoke-virtual {v1, v3, v4}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 612
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 614
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    iget v5, v0, Lcom/narvii/model/Community;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfileTimestamp()J

    move-result-wide v3

    .line 616
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v1, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 620
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_2
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;I)V
    .locals 6

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->suspendObserver:Z

    .line 559
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 560
    iget-object v1, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->pageSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 561
    iget-object v0, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    .line 563
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-static {v2}, Lcom/narvii/community/MyCommunityListService;->access$300(Lcom/narvii/community/MyCommunityListService;)Ljava/util/HashSet;

    move-result-object v2

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    goto :goto_1

    .line 570
    :cond_2
    iget-object v0, p2, Lcom/narvii/community/MyCommunityListResponse;->userInfoInCommunities:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 571
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 572
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/CommunityUserInfo;

    iget-object v5, v5, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 576
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "start0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 577
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/narvii/community/MyCommunityListService;->requestTime:J

    .line 579
    :cond_4
    iput-boolean v3, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->suspendObserver:Z

    .line 580
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    iget p3, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    :goto_3
    invoke-virtual {p1, p2, p3}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 455
    check-cast p2, Lcom/narvii/community/MyCommunityListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 482
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 483
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 486
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public reorder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/narvii/util/Utils;->isListLenientEqual(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 509
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method protected resetWhenEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/community/MyCommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 520
    const-class v0, Lcom/narvii/community/MyCommunityListResponse;

    return-object v0
.end method
