.class public interface abstract Lcom/google/android/exoplayer2/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/p$a;
    }
.end annotation


# virtual methods
.method public abstract a(I)Z
.end method

.method public abstract b(Lcom/google/android/exoplayer2/util/p$a;)Z
.end method

.method public abstract obtainMessage(I)Lcom/google/android/exoplayer2/util/p$a;
.end method

.method public abstract obtainMessage(III)Lcom/google/android/exoplayer2/util/p$a;
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract removeCallbacksAndMessages(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeMessages(I)V
.end method

.method public abstract sendEmptyMessage(I)Z
.end method

.method public abstract sendEmptyMessageAtTime(IJ)Z
.end method
