.class public Lcom/narvii/checkin/lottery/LotteryResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# instance fields
.field public lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

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
.method public canWatchVideo()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method
