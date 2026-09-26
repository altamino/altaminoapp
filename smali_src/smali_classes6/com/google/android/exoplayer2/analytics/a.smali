.class public interface abstract Lcom/google/android/exoplayer2/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/d3$d;
.implements Lcom/google/android/exoplayer2/source/h0;
.implements Lcom/google/android/exoplayer2/upstream/e$a;
.implements Lcom/google/android/exoplayer2/drm/v;


# virtual methods
.method public abstract A(Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract C(Lcom/google/android/exoplayer2/d3;Landroid/os/Looper;)V
.end method

.method public abstract D(Lcom/google/android/exoplayer2/analytics/c;)V
.end method

.method public abstract Q(Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;)V
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            ">;",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/Exception;)V
.end method

.method public abstract e(JI)V
.end method

.method public abstract f(J)V
.end method

.method public abstract g(Ljava/lang/Exception;)V
.end method

.method public abstract h(Ljava/lang/Object;J)V
.end method

.method public abstract i(IJJ)V
.end method

.method public abstract l(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract m(Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract p()V
.end method

.method public abstract release()V
.end method

.method public abstract t(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract u(Lcom/google/android/exoplayer2/decoder/e;)V
.end method

.method public abstract w(Lcom/google/android/exoplayer2/decoder/e;)V
.end method
