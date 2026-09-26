.class Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodedOutputBuffer"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field private final bufferedFrames:J

.field private final decodeTimeMs:J

.field private final endDecodeTimeMs:J

.field private final index:I

.field private final ntpTimeStampMs:J

.field private final offset:I

.field private final presentationTimeStampMs:J

.field private final size:I

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;IIJJJJJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "buffer",
            "offset",
            "size",
            "presentationTimeStampMs",
            "timeStampMs",
            "ntpTimeStampMs",
            "decodeTime",
            "endDecodeTime",
            "bufferedFrames"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move v1, p1

    .line 6
    .line 7
    iput v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->index:I

    .line 8
    move v1, p3

    .line 9
    .line 10
    iput v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->offset:I

    .line 11
    move v1, p4

    .line 12
    .line 13
    iput v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->size:I

    .line 14
    move-object v1, p2

    .line 15
    .line 16
    iput-object v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 17
    move-wide v1, p5

    .line 18
    .line 19
    iput-wide v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->presentationTimeStampMs:J

    .line 20
    move-wide v1, p7

    .line 21
    .line 22
    iput-wide v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->timeStampMs:J

    .line 23
    move-wide v1, p9

    .line 24
    .line 25
    iput-wide v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->ntpTimeStampMs:J

    .line 26
    move-wide v1, p11

    .line 27
    .line 28
    iput-wide v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->decodeTimeMs:J

    .line 29
    .line 30
    move-wide/from16 v1, p13

    .line 31
    .line 32
    iput-wide v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->endDecodeTimeMs:J

    .line 33
    .line 34
    move-wide/from16 v1, p15

    .line 35
    .line 36
    iput-wide v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->bufferedFrames:J

    .line 37
    return-void
.end method
