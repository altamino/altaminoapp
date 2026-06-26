.class public Lcom/narvii/checkin/lottery/LotteryResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "LotteryResponse.java"


# instance fields
.field public lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

.field public wallet:Lcom/narvii/wallet/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public canWatchVideo()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
