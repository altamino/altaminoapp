.class Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasBoundService:Z

.field mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private m()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;->x1(Landroid/os/IBinder;)Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->m()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;->W0(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :catch_0
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/ResolvableFuture;->q(Ljava/lang/Object;)Z

    .line 25
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    return-void
.end method
