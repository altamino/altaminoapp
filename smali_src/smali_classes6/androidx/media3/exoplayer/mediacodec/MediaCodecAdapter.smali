.class public interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
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

.method public abstract l(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract m(IILandroidx/media3/decoder/CryptoInfo;JI)V
.end method

.method public abstract release()V
.end method

.method public abstract setVideoScalingMode(I)V
.end method
