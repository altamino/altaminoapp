.class Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeStamps"
.end annotation


# instance fields
.field private final decodeStartTimeMs:J

.field private final ntpTimeStampMs:J

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decodeStartTimeMs",
            "timeStampMs",
            "ntpTimeStampMs"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->decodeStartTimeMs:J

    .line 6
    .line 7
    iput-wide p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->timeStampMs:J

    .line 8
    .line 9
    iput-wide p5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->ntpTimeStampMs:J

    .line 10
    return-void
.end method

.method static synthetic access$100(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->decodeStartTimeMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$200(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->timeStampMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->ntpTimeStampMs:J

    .line 3
    return-wide v0
.end method
