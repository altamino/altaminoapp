.class public Lcom/narvii/wallet/AdsVideoStats;
.super Ljava/lang/Object;
.source "AdsVideoStats.java"


# instance fields
.field public canEarnedCoins:I

.field public canNotWatchVideoReason:Ljava/lang/String;

.field public canWatchVideo:Z

.field public nextWatchVideoInterval:D

.field public watchVideoMaxCount:I

.field public watchedVideoCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/narvii/wallet/AdsVideoStats;->watchedVideoCount:I

    .line 12
    iput v0, p0, Lcom/narvii/wallet/AdsVideoStats;->watchVideoMaxCount:I

    return-void
.end method


# virtual methods
.method public getNextWatchVideoInterval()J
    .locals 4

    .line 18
    iget-wide v0, p0, Lcom/narvii/wallet/AdsVideoStats;->nextWatchVideoInterval:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
