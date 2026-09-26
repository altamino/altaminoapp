.class public Lcom/narvii/video/pro/VideoPreProcessing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;,
        Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;
    }
.end annotation


# instance fields
.field private mStreamingClient:Lcom/narvii/video/pro/StreamingClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "apm-plugin-video-preprocessing-amino"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public capFile(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "processing  "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "VideoProcess"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/pro/VideoPreProcessing;->capture(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V

    .line 26
    return-void
.end method

.method public native capture(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V
.end method

.method public final deregisterPreProcessing()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/pro/VideoPreProcessing;->doDeregisterPreProcessing()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/pro/VideoPreProcessing;->mStreamingClient:Lcom/narvii/video/pro/StreamingClient;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/video/pro/StreamingClient;->stopStreaming()V

    .line 9
    return-void
.end method

.method public native doDeregisterPreProcessing()V
.end method

.method public native doRegisterPreProcessing()V
.end method

.method public native enablePreProcessing(Z)V
.end method

.method public final registerPreProcessing()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/pro/VideoPreProcessing;->mStreamingClient:Lcom/narvii/video/pro/StreamingClient;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/pro/StreamingClient;->startStreaming()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/pro/VideoPreProcessing;->doRegisterPreProcessing()V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "should call setStreamingClient first"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public native setFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V
.end method

.method public setRemoteFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "VideoProcess"

    .line 3
    .line 4
    const-string v1, "setRemoteFrameAvailableListener  "

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/video/pro/VideoPreProcessing;->setFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    .line 11
    return-void
.end method

.method public setStreamingClient(Lcom/narvii/video/pro/StreamingClient;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/pro/VideoPreProcessing;->mStreamingClient:Lcom/narvii/video/pro/StreamingClient;

    return-void
.end method
