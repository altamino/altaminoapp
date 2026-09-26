.class Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field volatile mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic a(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->l(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->m(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->j(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->h(I)V

    return-void
.end method

.method public static synthetic e(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->i(Landroid/location/Location;)V

    return-void
.end method

.method private synthetic h(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/core/location/LocationListenerCompat;->onFlushComplete(I)V

    .line 11
    return-void
.end method

.method private synthetic i(Landroid/location/Location;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 11
    return-void
.end method

.method private synthetic j(Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Ljava/util/List;)V

    .line 11
    return-void
.end method

.method private synthetic k(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/core/location/LocationListenerCompat;->onProviderDisabled(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private synthetic l(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/core/location/LocationListenerCompat;->onProviderEnabled(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private synthetic m(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Landroidx/core/location/LocationListenerCompat;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 11
    return-void
.end method


# virtual methods
.method public g()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 9
    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    return-void
.end method

.method public onFlushComplete(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Landroidx/core/location/k;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Landroidx/core/location/k;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1
    new-instance v1, Landroidx/core/location/n;

    invoke-direct {v1, p0, p1}, Landroidx/core/location/n;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Landroidx/core/location/l;

    invoke-direct {v1, p0, p1}, Landroidx/core/location/l;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Landroidx/core/location/m;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Landroidx/core/location/m;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Landroidx/core/location/j;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Landroidx/core/location/j;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mKey:Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Landroidx/core/location/o;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/core/location/o;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method
