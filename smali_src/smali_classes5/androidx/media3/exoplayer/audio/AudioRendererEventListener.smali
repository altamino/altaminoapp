.class public interface abstract Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/Exception;)V
.end method

.method public abstract f(J)V
.end method

.method public abstract i(IJJ)V
.end method

.method public abstract k(Landroidx/media3/exoplayer/DecoderCounters;)V
.end method

.method public abstract m(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .param p2    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract n(Landroidx/media3/exoplayer/DecoderCounters;)V
.end method

.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onSkipSilenceEnabledChanged(Z)V
.end method

.method public abstract w(Landroidx/media3/common/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
