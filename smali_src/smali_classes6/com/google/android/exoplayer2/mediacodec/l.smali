.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/l$c;,
        Lcom/google/android/exoplayer2/mediacodec/l$b;,
        Lcom/google/android/exoplayer2/mediacodec/l$a;
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Landroid/os/Bundle;)V
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract c(IJ)V
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract d(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract e(IZ)V
.end method

.method public abstract f()Landroid/media/MediaFormat;
.end method

.method public abstract flush()V
.end method

.method public abstract g(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h(Landroid/view/Surface;)V
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract i(IIIJI)V
.end method

.method public abstract j()I
.end method

.method public abstract k(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract l(IILcom/google/android/exoplayer2/decoder/c;JI)V
.end method

.method public abstract m(Lcom/google/android/exoplayer2/mediacodec/l$c;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setVideoScalingMode(I)V
.end method
