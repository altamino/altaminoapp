.class public abstract Landroidx/browser/customtabs/PostMessageServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/customtabs/PostMessageBackend;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostMessageServConn"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mMessageChannelCreated:Z

.field private mPackageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mService:Landroid/support/customtabs/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSessionBinder:Landroid/support/customtabs/a;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 1
    .param p1    # Landroidx/browser/customtabs/CustomTabsSessionToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->a()Landroid/os/IBinder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/support/customtabs/a$a;->x1(Landroid/os/IBinder;)Landroid/support/customtabs/a;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/a;

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Provided session must have binder."

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method

.method private d(Landroid/os/Bundle;)Z
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/d;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/a;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v3, p1}, Landroid/support/customtabs/d;->u(Landroid/support/customtabs/a;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    monitor-exit v0

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method


# virtual methods
.method public m()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mMessageChannelCreated:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->d(Landroid/os/Bundle;)Z

    .line 9
    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/support/customtabs/d$a;->x1(Landroid/os/IBinder;)Landroid/support/customtabs/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->m()V

    .line 10
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/d;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->n()V

    .line 7
    return-void
.end method
