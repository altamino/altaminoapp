.class Landroid/support/v4/media/session/MediaSessionCompat$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$c;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$d$a;
    }
.end annotation


# instance fields
.field mCallback:Landroid/support/v4/media/session/MediaSessionCompat$b;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field mCaptioningEnabled:Z

.field mDestroyed:Z

.field final mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field mRatingType:I

.field mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$i;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field mRepeatMode:I

.field final mSessionFwk:Landroid/media/session/MediaSession;

.field mSessionInfo:Landroid/os/Bundle;

.field mShuffleMode:I

.field final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mDestroyed:Z

    .line 14
    .line 15
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v4/media/session/MediaSessionCompat$d;->g(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/MediaSession;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 27
    .line 28
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$d$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$d;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p1, v0, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 41
    .line 42
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 43
    .line 44
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionInfo:Landroid/os/Bundle;

    .line 45
    const/4 p1, 0x3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->h(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$b;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 v2, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$b;->mCallbackFwk:Landroid/media/session/MediaSession$Callback;

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1, v2, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->D(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_1
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    return-object v2

    .line 9
    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "getCallingPackage"

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    new-array v4, v3, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 26
    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .line 37
    const-string v1, "MediaSessionCompat"

    .line 38
    .line 39
    const-string v3, "Cannot execute MediaSession.getCallingPackage()"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    return-object v2
.end method

.method public c(Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 6
    return-void
.end method

.method public d(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public e()Landroid/support/v4/media/session/MediaSessionCompat$b;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$b;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public f()Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/MediaSession;
    .locals 0

    .line 1
    .line 2
    new-instance p3, Landroid/media/session/MediaSession;

    .line 3
    .line 4
    .line 5
    invoke-direct {p3, p1, p2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-object p3
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public h(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3
    .line 4
    or-int/lit8 p1, p1, 0x3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 8
    return-void
.end method
