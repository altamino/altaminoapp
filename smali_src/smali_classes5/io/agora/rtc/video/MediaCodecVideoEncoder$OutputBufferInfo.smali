.class Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutputBufferInfo"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final index:I

.field public final isKeyFrame:Z

.field public final presentationTimestampUs:J

.field public final size:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;ZJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "buffer",
            "isKeyFrame",
            "presentationTimestampUs",
            "size"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->index:I

    .line 6
    .line 7
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput-boolean p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->isKeyFrame:Z

    .line 10
    .line 11
    iput-wide p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->presentationTimestampUs:J

    .line 12
    .line 13
    iput p6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->size:I

    .line 14
    return-void
.end method
