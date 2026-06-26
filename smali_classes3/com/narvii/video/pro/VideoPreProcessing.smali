.class public Lcom/narvii/video/pro/VideoPreProcessing;
.super Ljava/lang/Object;
.source "VideoPreProcessing.java"


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

    const-string v0, "apm-plugin-video-preprocessing"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public capFile(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoProcess"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/pro/VideoPreProcessing;->capture(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V

    return-void
.end method

.method public native capture(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V
.end method

.method public final deregisterPreProcessing()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/narvii/video/pro/VideoPreProcessing;->doDeregisterPreProcessing()V

    .line 50
    iget-object v0, p0, Lcom/narvii/video/pro/VideoPreProcessing;->mStreamingClient:Lcom/narvii/video/pro/StreamingClient;

    invoke-virtual {v0}, Lcom/narvii/video/pro/StreamingClient;->stopStreaming()V

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

    .line 41
    iget-object v0, p0, Lcom/narvii/video/pro/VideoPreProcessing;->mStreamingClient:Lcom/narvii/video/pro/StreamingClient;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/narvii/video/pro/StreamingClient;->startStreaming()V

    .line 45
    invoke-virtual {p0}, Lcom/narvii/video/pro/VideoPreProcessing;->doRegisterPreProcessing()V

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should call setStreamingClient first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native setFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V
.end method

.method public setRemoteFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V
    .locals 2

    const-string v0, "VideoProcess"

    const-string v1, "setRemoteFrameAvailableListener  "

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/video/pro/VideoPreProcessing;->setFrameAvailableListener(Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;)V

    return-void
.end method

.method public setStreamingClient(Lcom/narvii/video/pro/StreamingClient;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/video/pro/VideoPreProcessing;->mStreamingClient:Lcom/narvii/video/pro/StreamingClient;

    return-void
.end method
