.class Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodedTextureBuffer"
.end annotation


# instance fields
.field private final decodeTimeMs:J

.field private final frameDelayMs:J

.field private final ntpTimeStampMs:J

.field private final presentationTimeStampMs:J

.field private final textureID:I

.field private final timeStampMs:J

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>(I[FJJJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureID",
            "transformMatrix",
            "presentationTimeStampMs",
            "timeStampMs",
            "ntpTimeStampMs",
            "decodeTimeMs",
            "frameDelay"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->textureID:I

    .line 6
    .line 7
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->transformMatrix:[F

    .line 8
    .line 9
    iput-wide p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->presentationTimeStampMs:J

    .line 10
    .line 11
    iput-wide p5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->timeStampMs:J

    .line 12
    .line 13
    iput-wide p7, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->ntpTimeStampMs:J

    .line 14
    .line 15
    iput-wide p9, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->decodeTimeMs:J

    .line 16
    .line 17
    iput-wide p11, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->frameDelayMs:J

    .line 18
    return-void
.end method
