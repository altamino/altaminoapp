.class Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v1}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    const-string v2, "/community/joined"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    const-string v3, "v"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const-string p1, "start0"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result p1

    .line 78
    .line 79
    if-gtz p1, :cond_3

    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v1}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 92
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

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->attaching:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 9
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/community/MyCommunityListService;->filterList:Ljava/util/List;

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->suspendObserver:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v1}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->attaching:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->attaching:Z

    .line 10
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "start0"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    iput-wide v1, v0, Lcom/narvii/community/MyCommunityListService;->requestTime:J

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 32
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Community;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "new"

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/model/Community;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    .line 22
    .line 23
    const-string v4, "account"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v4}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 40
    .line 41
    iget v5, v0, Lcom/narvii/model/Community;->id:I

    .line 42
    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfileTimestamp()J

    .line 52
    move-result-wide v1

    .line 53
    .line 54
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 57
    .line 58
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    new-instance v5, Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 77
    const/4 v1, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3, v1}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 84
    :cond_2
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;I)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->suspendObserver:Z

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget-object v1, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->pageSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 4
    iget-object v0, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5
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

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 6
    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 7
    invoke-static {v2}, Lcom/narvii/community/MyCommunityListService;->a(Lcom/narvii/community/MyCommunityListService;)Ljava/util/HashSet;

    move-result-object v2

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 8
    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 9
    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p2, Lcom/narvii/community/MyCommunityListResponse;->userInfoInCommunities:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 11
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

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 12
    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/CommunityUserInfo;

    iget-object v5, v5, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 13
    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "start0"

    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/narvii/community/MyCommunityListService;->requestTime:J

    :cond_4
    iput-boolean v3, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->suspendObserver:Z

    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    iget p3, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 16
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

    .line 1
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

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 28
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/narvii/util/Utils;->isListLenientEqual(Ljava/util/List;Ljava/util/List;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->notifyDataSetChanged()V

    .line 27
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

    const-class v0, Lcom/narvii/community/MyCommunityListResponse;

    return-object v0
.end method
