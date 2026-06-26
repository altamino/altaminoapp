.class public Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;
.super Ljava/lang/Object;
.source "MediaEventListenerImpl.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IMediaEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTrackAllPrepared()V
    .locals 0

    return-void
.end method

.method public onDoNextVideoSeek()V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onVideoPrepared()V
    .locals 0

    return-void
.end method

.method public onVideoWindowIndexChanged(IZ)V
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IMediaEventListener$DefaultImpls;->onVideoWindowIndexChanged(Lcom/narvii/video/interfaces/IMediaEventListener;IZ)V

    return-void
.end method
