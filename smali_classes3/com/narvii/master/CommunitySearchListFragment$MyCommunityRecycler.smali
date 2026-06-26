.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;
.super Lcom/narvii/list/NVAdapter;
.source "CommunitySearchListFragment.java"


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

    .line 268
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 269
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 270
    new-instance p1, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    const-class v0, Lcom/narvii/model/Community;

    const v1, 0x7f09093b

    invoke-direct {p1, v0, v1}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method static synthetic access$902(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method private sendRequest()V
    .locals 4

    const-string v0, "account"

    .line 306
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 307
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v1}, Lcom/narvii/master/CommunitySearchListFragment;->access$700(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    .line 311
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/joined"

    .line 312
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 313
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v1}, Lcom/narvii/master/CommunitySearchListFragment;->access$800(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x0

    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x64

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 316
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    const-string v1, "api"

    .line 317
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 318
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 319
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;

    const-class v3, Lcom/narvii/community/MyCommunityListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

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

    .line 275
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$500(Lcom/narvii/master/CommunitySearchListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$600(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

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

    const p1, 0x7f0b0609

    .line 295
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09093b

    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 298
    :cond_0
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 299
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 300
    iget-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p3, p3, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 301
    invoke-static {p1, p2, p0}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Area;)V

    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 258
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->sendRequest()V

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

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 246
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_0

    const-string p1, "api"

    .line 247
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 248
    iget-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->sendRequest()V

    .line 252
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method
