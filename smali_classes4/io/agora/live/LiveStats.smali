.class public Lio/agora/live/LiveStats;
.super Ljava/lang/Object;
.source "LiveStats.java"


# instance fields
.field public cpuAppUsage:D

.field public cpuTotalUsage:D

.field public duration:I

.field public rxAudioKBitrate:I

.field public rxBytes:I

.field public rxVideoKBitrate:I

.field public txAudioKBitrate:I

.field public txBytes:I

.field public txVideoKBitrate:I

.field public userCount:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->totalDuration:I

    iput v0, p0, Lio/agora/live/LiveStats;->duration:I

    .line 23
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txBytes:I

    iput v0, p0, Lio/agora/live/LiveStats;->txBytes:I

    .line 24
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxBytes:I

    iput v0, p0, Lio/agora/live/LiveStats;->rxBytes:I

    .line 25
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txAudioKBitRate:I

    iput v0, p0, Lio/agora/live/LiveStats;->txAudioKBitrate:I

    .line 26
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxAudioKBitRate:I

    iput v0, p0, Lio/agora/live/LiveStats;->rxAudioKBitrate:I

    .line 27
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txVideoKBitRate:I

    iput v0, p0, Lio/agora/live/LiveStats;->txVideoKBitrate:I

    .line 28
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxVideoKBitRate:I

    iput v0, p0, Lio/agora/live/LiveStats;->rxVideoKBitrate:I

    .line 29
    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->users:I

    iput v0, p0, Lio/agora/live/LiveStats;->userCount:I

    .line 30
    iget-wide v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->cpuAppUsage:D

    iput-wide v0, p0, Lio/agora/live/LiveStats;->cpuAppUsage:D

    .line 31
    iget-wide v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->cpuTotalUsage:D

    iput-wide v0, p0, Lio/agora/live/LiveStats;->cpuTotalUsage:D

    return-void
.end method
