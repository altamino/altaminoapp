.class Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;
.super Lcom/narvii/master/explorer/CommunityListAdapter;
.source "CommunityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndorsedCommunityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1503
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 1504
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1505
    new-instance p1, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    invoke-direct {p1, p0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    const-string p1, "Endorsed Communities"

    .line 1506
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected communityNameSpecialType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1516
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 1517
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1519
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 1520
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 1521
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-object p1

    .line 1524
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/community/kindred"

    .line 1525
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget v0, v0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 1526
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 1527
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "EndorsedAminos"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected itemViewLayoutId()I
    .locals 1

    const v0, 0x7f0b03e1

    return v0
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
