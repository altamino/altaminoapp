.class Lnet/protyposis/android/mediaplayer/TimeBase;
.super Ljava/lang/Object;
.source "TimeBase.java"


# instance fields
.field private mSpeed:D

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 27
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    .line 30
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->start()V

    return-void
.end method

.method private microTime()J
    .locals 4

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public getCurrentTime()J
    .locals 4

    .line 42
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->microTime()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getOffsetFrom(J)J
    .locals 2

    .line 46
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getCurrentTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public getSpeed()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    return-wide v0
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, v1}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    return-void
.end method

.method public startAt(J)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->microTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mStartTime:J

    return-void
.end method
