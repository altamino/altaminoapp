.class public Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IMediaEventListener;


# direct methods
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
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onVideoPrepared()V
    .locals 0

    return-void
.end method

.method public onVideoWindowIndexChanged(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IMediaEventListener$DefaultImpls;->onVideoWindowIndexChanged(Lcom/narvii/video/interfaces/IMediaEventListener;IZ)V

    .line 4
    return-void
.end method
