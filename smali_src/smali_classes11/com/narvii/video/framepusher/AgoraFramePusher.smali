.class public Lcom/narvii/video/framepusher/AgoraFramePusher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/framepusher/MediaFramePusher;


# instance fields
.field public rtcEngine:Lio/agora/rtc/RtcEngine;


# direct methods
.method public constructor <init>(Lio/agora/rtc/RtcEngine;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    .line 6
    return-void
.end method


# virtual methods
.method public pushAudioFrame([B)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lio/agora/rtc/RtcEngine;->pushExternalAudioFrame([BJ)I

    .line 13
    return-void
.end method

.method public pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V
    .locals 2

    iget-object p6, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    if-nez p6, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p6, Lio/agora/rtc/video/AgoraVideoFrame;

    invoke-direct {p6}, Lio/agora/rtc/video/AgoraVideoFrame;-><init>()V

    if-nez p3, :cond_1

    const/16 p3, 0xa

    goto :goto_0

    :cond_1
    const/16 p3, 0xb

    :goto_0
    iput p3, p6, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p6, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iput p4, p6, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iput p5, p6, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iput p2, p6, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    const/4 p2, 0x1

    iput-boolean p2, p6, Lio/agora/rtc/video/AgoraVideoFrame;->syncMode:Z

    iput-object p1, p6, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    sget-object p1, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    iput-object p1, p6, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    iget-object p1, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    .line 4
    invoke-virtual {p1, p6}, Lio/agora/rtc/RtcEngine;->pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z

    return-void
.end method

.method public pushVideoFrame([BIII)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lio/agora/rtc/video/AgoraVideoFrame;

    invoke-direct {v0}, Lio/agora/rtc/video/AgoraVideoFrame;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iput p2, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iput p3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iput p4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->rotation:I

    iput-object p1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->buf:[B

    iget-object p1, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    .line 7
    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z

    return-void
.end method
