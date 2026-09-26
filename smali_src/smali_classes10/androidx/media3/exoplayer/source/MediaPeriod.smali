.class public interface abstract Landroidx/media3/exoplayer/source/MediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    }
.end annotation


# virtual methods
.method public abstract a(JLandroidx/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract c([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
.end method

.method public abstract continueLoading(J)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract e(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method
