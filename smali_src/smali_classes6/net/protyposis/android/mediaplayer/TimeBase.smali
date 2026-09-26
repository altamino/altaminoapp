.class Lnet/protyposis/android/mediaplayer/TimeBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSpeed:D

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->start()V

    .line 11
    return-void
.end method

.method private microTime()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    long-to-double v0, v0

    .line 9
    .line 10
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    .line 11
    mul-double/2addr v0, v2

    .line 12
    double-to-long v0, v0

    .line 13
    return-wide v0
.end method


# virtual methods
.method public getCurrentTime()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->microTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mStartTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public getOffsetFrom(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getCurrentTime()J

    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p1, v0

    .line 6
    return-wide p1
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    return-wide v0
.end method

.method public setSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mSpeed:D

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 6
    return-void
.end method

.method public startAt(J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/TimeBase;->microTime()J

    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    .line 7
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/TimeBase;->mStartTime:J

    .line 8
    return-void
.end method
