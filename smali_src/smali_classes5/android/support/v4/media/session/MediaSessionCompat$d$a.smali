.class Landroid/support/v4/media/session/MediaSessionCompat$d$a;
.super Landroid/support/v4/media/session/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/support/v4/media/session/b$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mCaptioningEnabled:Z

    .line 5
    return v0
.end method

.method public D0()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mShuffleMode:I

    .line 5
    return v0
.end method

.method public E(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public F()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public I(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public J0(J)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public L0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public O(Landroid/support/v4/media/session/a;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mDestroyed:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    move-result v1

    .line 16
    .line 17
    new-instance v2, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 18
    .line 19
    const-string v3, "android.media.session.MediaController"

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3, v0, v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 25
    .line 26
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$d;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 30
    .line 31
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 32
    .line 33
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter p1

    .line 35
    .line 36
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 37
    .line 38
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$d;->mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$i;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->a(II)V

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0
.end method

.method public O0(Landroid/support/v4/media/RatingCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public P0(IILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public Q0(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public R()Z
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public R0(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public T()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public T0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public U(Landroid/support/v4/media/session/a;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1

    .line 21
    .line 22
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$d;->mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$i;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$i;->b(II)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public Y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public Z0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public a()J
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public d1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public e0()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 5
    .line 6
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mRepeatMode:I

    .line 5
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public i0()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mRatingType:I

    .line 5
    return v0
.end method

.method public i1(IILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public j()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public m0()Landroid/os/Bundle;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 3
    .line 4
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionInfo:Landroid/os/Bundle;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$d;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionInfo:Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 18
    :goto_0
    return-object v0
.end method

.method public m1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public n0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public previous()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public q(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public q0(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public s(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public s0(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw v0
.end method

.method public u0(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public w(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method

.method public z(I)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 6
    throw p1
.end method
