.class public Lcom/narvii/video/framepusher/AgoraFramePusher;
.super Ljava/lang/Object;
.source "AgoraFramePusher.java"

# interfaces
.implements Lcom/narvii/video/framepusher/MediaFramePusher;


# instance fields
.field public rtcEngine:Lio/agora/rtc/RtcEngine;


# direct methods
.method public constructor <init>(Lio/agora/rtc/RtcEngine;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    return-void
.end method


# virtual methods
.method public pushAudioFrame([B)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lio/agora/rtc/RtcEngine;->pushExternalAudioFrame([BJ)I

    return-void
.end method

.method public pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V
    .locals 2

    .line 25
    iget-object p6, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    if-nez p6, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p6, Lio/agora/rtc/video/AgoraVideoFrame;

    invoke-direct {p6}, Lio/agora/rtc/video/AgoraVideoFrame;-><init>()V

    if-nez p3, :cond_1

    const/16 p3, 0xa

    goto :goto_0

    :cond_1
    const/16 p3, 0xb

    .line 29
    :goto_0
    iput p3, p6, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p6, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    .line 32
    iput p4, p6, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    .line 33
    iput p5, p6, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    .line 34
    iput p2, p6, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p6, Lio/agora/rtc/video/AgoraVideoFrame;->syncMode:Z

    .line 36
    iput-object p1, p6, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    .line 37
    sget-object p1, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    iput-object p1, p6, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    .line 38
    iget-object p1, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p1, p6}, Lio/agora/rtc/RtcEngine;->pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z

    return-void
.end method

.method public pushVideoFrame([BIII)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Lio/agora/rtc/video/AgoraVideoFrame;

    invoke-direct {v0}, Lio/agora/rtc/video/AgoraVideoFrame;-><init>()V

    const/4 v1, 0x3

    .line 47
    iput v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    .line 49
    iput p2, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    .line 50
    iput p3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    .line 51
    iput p4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->rotation:I

    .line 52
    iput-object p1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->buf:[B

    .line 53
    iget-object p1, p0, Lcom/narvii/video/framepusher/AgoraFramePusher;->rtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z

    return-void
.end method
