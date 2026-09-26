.class Lio/agora/rtc/internal/AudioRoutingListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/internal/AudioRoutingListener;


# instance fields
.field private mAudioRoutingNativeHandle:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    .line 6
    return-void
.end method


# virtual methods
.method native nativeAudioRoutingChanged(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "routing"
        }
    .end annotation
.end method

.method native nativeAudioRoutingError(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "errCode"
        }
    .end annotation
.end method

.method public onAudioRoutingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->nativeAudioRoutingChanged(JI)V

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public onAudioRoutingDestroyed()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    :try_start_0
    iput-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public onAudioRoutingError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errCode"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->nativeAudioRoutingError(JI)V

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method
