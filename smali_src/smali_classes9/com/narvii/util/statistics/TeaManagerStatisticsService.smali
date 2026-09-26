.class public Lcom/narvii/util/statistics/TeaManagerStatisticsService;
.super Lcom/narvii/util/statistics/StatisticsServiceImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/statistics/StatisticsServiceImpl;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected logEvent(Lcom/narvii/util/statistics/StatisticsEventBuilder;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/statistics/TeaManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 6
    return-void
.end method
