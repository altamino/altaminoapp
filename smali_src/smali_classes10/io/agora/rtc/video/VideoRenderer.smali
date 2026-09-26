.class public Lio/agora/rtc/video/VideoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/VideoRenderer$Callbacks;,
        Lio/agora/rtc/video/VideoRenderer$I420Frame;
    }
.end annotation


# instance fields
.field nativeVideoRenderer:J


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoRenderer$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/agora/rtc/video/VideoRenderer;->nativeWrapVideoRenderer(Lio/agora/rtc/video/VideoRenderer$Callbacks;)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    iput-wide v0, p0, Lio/agora/rtc/video/VideoRenderer;->nativeVideoRenderer:J

    .line 10
    return-void
.end method

.method private static native freeWrappedVideoRenderer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeVideoRenderer"
        }
    .end annotation
.end method

.method public static native nativeCopyPlane(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "width",
            "height",
            "srcStride",
            "dst",
            "dstStride"
        }
    .end annotation
.end method

.method private static native nativeWrapVideoRenderer(Lio/agora/rtc/video/VideoRenderer$Callbacks;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation
.end method

.method private static native releaseNativeFrame(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeFramePointer"
        }
    .end annotation
.end method

.method public static renderFrameDone(Lio/agora/rtc/video/VideoRenderer$I420Frame;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lio/agora/rtc/video/VideoRenderer$I420Frame;->textureId:I

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lio/agora/rtc/video/VideoRenderer$I420Frame;->access$000(Lio/agora/rtc/video/VideoRenderer$I420Frame;)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lio/agora/rtc/video/VideoRenderer$I420Frame;->access$000(Lio/agora/rtc/video/VideoRenderer$I420Frame;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoRenderer;->releaseNativeFrame(J)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v2, v3}, Lio/agora/rtc/video/VideoRenderer$I420Frame;->access$002(Lio/agora/rtc/video/VideoRenderer$I420Frame;J)J

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/VideoRenderer;->nativeVideoRenderer:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoRenderer;->freeWrappedVideoRenderer(J)V

    .line 13
    .line 14
    iput-wide v2, p0, Lio/agora/rtc/video/VideoRenderer;->nativeVideoRenderer:J

    .line 15
    return-void
.end method
