.class Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;
.super Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;-><init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/e;)V
    .locals 0

    .line 1
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1200(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1300(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method protected getTrendingSectionItemBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "#1AFFFFFF"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    const-string/jumbo p2, "trending"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p3, Lcom/narvii/model/Community;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3, p4}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    .line 28
    .line 29
    const-string/jumbo p1, "statistics"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 36
    .line 37
    const-string p2, "Search For Communities - Trending Communities"

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string p2, "Taps Trending Community"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method protected supportUnlistedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
