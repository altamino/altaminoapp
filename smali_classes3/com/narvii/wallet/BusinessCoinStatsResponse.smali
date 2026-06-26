.class public Lcom/narvii/wallet/BusinessCoinStatsResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "BusinessCoinStatsResponse.java"


# instance fields
.field public coinStats:Lcom/narvii/wallet/CoinStats;

.field public wallet:Lcom/narvii/wallet/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getDailyStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/CoinStats$DailyStats;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/wallet/CoinStats;->dailyStatsList:Ljava/util/ArrayList;

    :goto_0
    return-object v0
.end method

.method public getLast10DayTotal()F
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/narvii/wallet/CoinStats;->dailyStatsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/CoinStats$DailyStats;

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, v2, Lcom/narvii/wallet/CoinStats$DailyStats;->statsList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/wallet/CoinStats$StatsSection;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    float-to-double v4, v1

    .line 51
    iget-wide v6, v3, Lcom/narvii/wallet/CoinStats$StatsSection;->totalCoins:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v1, v4

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public getTotalBalance()D
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 35
    :cond_0
    iget-wide v0, v0, Lcom/narvii/wallet/Wallet;->totalBusinessCoinsFloat:D

    return-wide v0
.end method

.method public getTotalEarning()D
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/narvii/wallet/CoinStats;->totalEarnings:D

    :goto_0
    return-wide v0
.end method

.method public getTotalPaidOut()D
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/narvii/wallet/CoinStats;->totalPaidOut:D

    :goto_0
    return-wide v0
.end method
