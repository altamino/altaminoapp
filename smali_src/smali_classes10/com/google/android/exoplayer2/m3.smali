.class public interface abstract Lcom/google/android/exoplayer2/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h3$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/m3$a;
    }
.end annotation


# static fields
.field public static final MSG_CUSTOM_BASE:I = 0x2710

.field public static final MSG_SET_AUDIO_ATTRIBUTES:I = 0x3

.field public static final MSG_SET_AUDIO_SESSION_ID:I = 0xa

.field public static final MSG_SET_AUX_EFFECT_INFO:I = 0x6

.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_CHANGE_FRAME_RATE_STRATEGY:I = 0x5

.field public static final MSG_SET_PREFERRED_AUDIO_DEVICE:I = 0xc

.field public static final MSG_SET_SCALING_MODE:I = 0x4

.field public static final MSG_SET_SKIP_SILENCE_ENABLED:I = 0x9

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7

.field public static final MSG_SET_VIDEO_OUTPUT:I = 0x1

.field public static final MSG_SET_VOLUME:I = 0x2

.field public static final MSG_SET_WAKEUP_LISTENER:I = 0xb

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_STARTED:I = 0x2


# virtual methods
.method public abstract c()J
.end method

.method public abstract d(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public abstract disable()V
.end method

.method public abstract e(ILcom/google/android/exoplayer2/analytics/t1;)V
.end method

.method public abstract g([Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public abstract getCapabilities()Lcom/google/android/exoplayer2/o3;
.end method

.method public abstract getMediaClock()Lcom/google/android/exoplayer2/util/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lcom/google/android/exoplayer2/source/w0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTrackType()I
.end method

.method public abstract h(Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JZZJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract render(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract resetPosition(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
