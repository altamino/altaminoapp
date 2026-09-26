.class Landroid/support/v4/media/MediaBrowserCompat$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$f;
.implements Landroid/support/v4/media/MediaBrowserCompat$j;
.implements Landroid/support/v4/media/MediaBrowserCompat$c$b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field protected final mBrowserFwk:Landroid/media/browse/MediaBrowser;

.field protected mCallbacksMessenger:Landroid/os/Messenger;

.field final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/support/v4/media/MediaBrowserCompat$b;

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mNotifyChildrenChangedOptions:Landroid/os/Bundle;

.field protected final mRootHints:Landroid/os/Bundle;

.field protected mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$l;

.field protected mServiceVersion:I

.field private final mSubscriptions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$c;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 11
    .line 12
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mSubscriptions:Landroidx/collection/ArrayMap;

    .line 18
    .line 19
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v0, Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mRootHints:Landroid/os/Bundle;

    .line 33
    .line 34
    const-string p4, "extra_client_version"

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    const-string p4, "extra_calling_pid"

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->d(Landroid/support/v4/media/MediaBrowserCompat$c$b;)V

    .line 51
    .line 52
    new-instance p4, Landroid/media/browse/MediaBrowser;

    .line 53
    .line 54
    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$c;->mConnectionCallbackFwk:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 55
    .line 56
    .line 57
    invoke-direct {p4, p1, p2, p3, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    .line 58
    .line 59
    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 4
    .line 5
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->a(Landroid/os/Messenger;)V

    .line 13
    return-void
.end method

.method public c(Landroid/os/Messenger;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mSubscriptions:Landroidx/collection/ArrayMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string p3, "onLoadChildren for id that isn\'t subscribed id="

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string p2, "MediaBrowserCompat"

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    return-void

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$m;->a(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    if-nez p4, :cond_4

    .line 52
    .line 53
    if-nez p3, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$n;->c(Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$n;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 63
    .line 64
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_4
    if-nez p3, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$n;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_5
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$n;->b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 77
    .line 78
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 79
    :cond_6
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->c(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :catch_0
    const-string v0, "MediaBrowserCompat"

    .line 15
    .line 16
    const-string v1, "Remote error unregistering client messenger."

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 25
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 19
    return-object v0
.end method

.method public onConnected()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "MediaBrowserCompat"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    const-string v2, "extra_service_version"

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    .line 20
    iput v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mServiceVersion:I

    .line 21
    .line 22
    const-string v2, "extra_messenger"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/core/app/BundleCompat;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 31
    .line 32
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mRootHints:Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$l;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 36
    .line 37
    iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 38
    .line 39
    new-instance v2, Landroid/os/Messenger;

    .line 40
    .line 41
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 45
    .line 46
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 47
    .line 48
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$b;->a(Landroid/os/Messenger;)V

    .line 52
    .line 53
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 54
    .line 55
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :catch_0
    const-string v2, "Remote error registering client messenger."

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    :cond_1
    :goto_0
    const-string v0, "extra_session_binder"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v0}, Landroidx/core/app/BundleCompat;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Landroid/support/v4/media/session/b$a;->x1(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 91
    :cond_2
    return-void

    .line 92
    :catch_1
    move-exception v1

    .line 93
    .line 94
    const-string v2, "Unexpected IllegalStateException"

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method
