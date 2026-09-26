.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCommunityRecycler"
.end annotation


# instance fields
.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field public isRequesting:Z

.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 8
    .line 9
    const-class v0, Lcom/narvii/model/Community;

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0a0bf9

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 19
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method private sendRequest()V
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
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/master/CommunitySearchListFragment;->access$400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "/community/joined"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/master/CommunitySearchListFragment;->access$500(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-string v2, "q"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string/jumbo v2, "start"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    const/16 v1, 0x64

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    const-string/jumbo v2, "size"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 81
    .line 82
    const-string v1, "api"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;

    .line 97
    .line 98
    const-class v3, Lcom/narvii/community/MyCommunityListResponse;

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Ljava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 105
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyAminos"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$200(Lcom/narvii/master/CommunitySearchListFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$300(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d06bd

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0bf9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 36
    .line 37
    iget-object p3, p3, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p0}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Area;)V

    .line 44
    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->sendRequest()V

    .line 15
    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
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
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "api"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->sendRequest()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 30
    return-void
.end method
