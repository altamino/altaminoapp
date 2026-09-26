.class public Lio/agora/rtc/live/LiveInjectStreamConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;
    }
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioSampleRate:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public height:I

.field public videoBitrate:I

.field public videoFramerate:I

.field public videoGop:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->width:I

    .line 7
    .line 8
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->height:I

    .line 9
    .line 10
    const/16 v0, 0x1e

    .line 11
    .line 12
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoGop:I

    .line 13
    .line 14
    const/16 v0, 0xf

    .line 15
    .line 16
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoFramerate:I

    .line 17
    .line 18
    const/16 v0, 0x190

    .line 19
    .line 20
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoBitrate:I

    .line 21
    .line 22
    sget-object v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_44100:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 23
    .line 24
    iput-object v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioSampleRate:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 25
    .line 26
    const/16 v0, 0x30

    .line 27
    .line 28
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioBitrate:I

    .line 29
    const/4 v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioChannels:I

    .line 32
    return-void
.end method
