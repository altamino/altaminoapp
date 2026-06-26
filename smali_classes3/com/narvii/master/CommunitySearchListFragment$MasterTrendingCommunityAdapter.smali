.class Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;
.super Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterTrendingCommunityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;-><init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/CommunitySearchListFragment$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Trending"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$2000(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/master/CommunitySearchListFragment;->access$2100(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getTrendingSectionItemBackgroundColor()I
    .locals 1

    const-string v0, "#1AFFFFFF"

    .line 655
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 666
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 626
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 627
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Community;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 642
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 643
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 644
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "trending"

    invoke-virtual {p1, p2}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object p1

    .line 645
    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p1, p3, p4}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 650
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected supportUnlistedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
