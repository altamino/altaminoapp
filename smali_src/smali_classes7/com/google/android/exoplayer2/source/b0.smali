.class public interface abstract Lcom/google/android/exoplayer2/source/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b0$b;,
        Lcom/google/android/exoplayer2/source/b0$c;,
        Lcom/google/android/exoplayer2/source/b0$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/source/b0$c;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/source/h0;)V
.end method

.method public abstract c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
.end method

.method public abstract d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V
.end method

.method public abstract e(Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/upstream/m0;Lcom/google/android/exoplayer2/analytics/t1;)V
    .param p2    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Lcom/google/android/exoplayer2/source/y;)V
.end method

.method public abstract g(Lcom/google/android/exoplayer2/source/b0$c;)V
.end method

.method public abstract h(Lcom/google/android/exoplayer2/source/b0$c;)V
.end method

.method public abstract i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V
.end method

.method public abstract j()Lcom/google/android/exoplayer2/i2;
.end method

.method public abstract k(Lcom/google/android/exoplayer2/drm/v;)V
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()Lcom/google/android/exoplayer2/z3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract r()Z
.end method
