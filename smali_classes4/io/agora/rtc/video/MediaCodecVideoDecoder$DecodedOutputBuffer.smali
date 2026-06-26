.class Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodedOutputBuffer"
.end annotation


# instance fields
.field private final decodeTimeMs:J

.field private final endDecodeTimeMs:J

.field private final index:I

.field private final ntpTimeStampMs:J

.field private final offset:I

.field private final presentationTimeStampMs:J

.field private final size:I

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(IIIJJJJJ)V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->index:I

    .line 461
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->offset:I

    .line 462
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->size:I

    .line 463
    iput-wide p4, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->presentationTimeStampMs:J

    .line 464
    iput-wide p6, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->timeStampMs:J

    .line 465
    iput-wide p8, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->ntpTimeStampMs:J

    .line 466
    iput-wide p10, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->decodeTimeMs:J

    .line 467
    iput-wide p12, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->endDecodeTimeMs:J

    return-void
.end method
