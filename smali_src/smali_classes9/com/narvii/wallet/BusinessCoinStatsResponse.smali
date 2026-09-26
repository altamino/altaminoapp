.class public Lcom/narvii/wallet/BusinessCoinStatsResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# instance fields
.field public coinStats:Lcom/narvii/wallet/CoinStats;

.field public wallet:Lcom/narvii/wallet/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getDailyStats()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/CoinStats$DailyStats;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/wallet/CoinStats;->dailyStatsList:Ljava/util/ArrayList;

    .line 9
    :goto_0
    return-object v0
.end method

.method public getLast10DayTotal()F
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/wallet/CoinStats;->dailyStatsList:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/wallet/CoinStats$DailyStats;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, v2, Lcom/narvii/wallet/CoinStats$DailyStats;->statsList:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/wallet/CoinStats$StatsSection;

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    float-to-double v4, v1

    .line 54
    .line 55
    iget-wide v6, v3, Lcom/narvii/wallet/CoinStats$StatsSection;->totalCoins:D

    .line 56
    add-double/2addr v4, v6

    .line 57
    double-to-float v1, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_2
    return v1
.end method

.method public getTotalBalance()D
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    return-wide v0

    .line 8
    .line 9
    :cond_0
    iget-wide v0, v0, Lcom/narvii/wallet/Wallet;->totalBusinessCoinsFloat:D

    .line 10
    return-wide v0
.end method

.method public getTotalEarning()D
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-wide v0, v0, Lcom/narvii/wallet/CoinStats;->totalEarnings:D

    .line 10
    :goto_0
    return-wide v0
.end method

.method public getTotalPaidOut()D
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/BusinessCoinStatsResponse;->coinStats:Lcom/narvii/wallet/CoinStats;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-wide v0, v0, Lcom/narvii/wallet/CoinStats;->totalPaidOut:D

    .line 10
    :goto_0
    return-wide v0
.end method
