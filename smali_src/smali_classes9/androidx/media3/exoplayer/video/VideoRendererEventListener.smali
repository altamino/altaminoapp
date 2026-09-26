.class public interface abstract Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract e(JI)V
.end method

.method public abstract g(Ljava/lang/Exception;)V
.end method

.method public abstract h(Ljava/lang/Object;J)V
.end method

.method public abstract l(Landroidx/media3/exoplayer/DecoderCounters;)V
.end method

.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
.end method

.method public abstract t(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .param p2    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract u(Landroidx/media3/exoplayer/DecoderCounters;)V
.end method

.method public abstract x(Landroidx/media3/common/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
