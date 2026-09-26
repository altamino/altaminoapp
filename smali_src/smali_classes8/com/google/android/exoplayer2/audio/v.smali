.class public interface abstract Lcom/google/android/exoplayer2/audio/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/v$d;,
        Lcom/google/android/exoplayer2/audio/v$e;,
        Lcom/google/android/exoplayer2/audio/v$b;,
        Lcom/google/android/exoplayer2/audio/v$a;,
        Lcom/google/android/exoplayer2/audio/v$c;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field public static final SINK_FORMAT_SUPPORTED_DIRECTLY:I = 0x2

.field public static final SINK_FORMAT_SUPPORTED_WITH_TRANSCODING:I = 0x1

.field public static final SINK_FORMAT_UNSUPPORTED:I


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/a2;)Z
.end method

.method public abstract b(Lcom/google/android/exoplayer2/c3;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract e(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$b;,
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation
.end method

.method public abstract f(J)V
.end method

.method public abstract flush()V
.end method

.method public abstract g(Z)V
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/c3;
.end method

.method public abstract h(Lcom/google/android/exoplayer2/audio/e;)V
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract i(Lcom/google/android/exoplayer2/analytics/t1;)V
    .param p1    # Lcom/google/android/exoplayer2/analytics/t1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isEnded()Z
.end method

.method public abstract j(Lcom/google/android/exoplayer2/audio/v$c;)V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/a2;)I
.end method

.method public abstract l(Lcom/google/android/exoplayer2/audio/y;)V
.end method

.method public abstract m(Lcom/google/android/exoplayer2/a2;I[I)V
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$a;
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/v$e;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract setVolume(F)V
.end method
