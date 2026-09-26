.class Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/statistics/StatisticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommunityStatisticsService"
.end annotation


# instance fields
.field cid:I

.field communityService:Lcom/narvii/community/CommunityService;

.field parent:Lcom/narvii/util/statistics/StatisticsService;

.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;


# direct methods
.method public constructor <init>(Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;Lcom/narvii/util/statistics/StatisticsService;ILcom/narvii/community/CommunityService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->this$0:Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->parent:Lcom/narvii/util/statistics/StatisticsService;

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->cid:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->communityService:Lcom/narvii/community/CommunityService;

    .line 12
    return-void
.end method


# virtual methods
.method public event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->parent:Lcom/narvii/util/statistics/StatisticsService;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Community ID"

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->cid:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->communityService:Lcom/narvii/community/CommunityService;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->cid:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v0, v0, Lcom/narvii/model/Community;->templateId:I

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v1, "Template"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :catch_0
    const-string v0, "fail to get community template"

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-object p1
.end method

.method public revenue(Ljava/lang/String;D)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->parent:Lcom/narvii/util/statistics/StatisticsService;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsService;->revenue(Ljava/lang/String;D)V

    .line 6
    return-void
.end method

.method public setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;->parent:Lcom/narvii/util/statistics/StatisticsService;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    return-void
.end method
