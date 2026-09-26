.class final Lcoil/network/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/network/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkObserver.kt\ncoil/network/RealNetworkObserver\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,112:1\n12708#2,2:113\n12708#2,2:115\n*S KotlinDebug\n*F\n+ 1 NetworkObserver.kt\ncoil/network/RealNetworkObserver\n*L\n82#1:113,2\n96#1:115,2\n*E\n"
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcoil/network/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkCallback:Lcoil/network/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lcoil/network/e$a;)V
    .locals 2
    .param p1    # Landroid/net/ConnectivityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/network/e$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/network/g;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/network/g;->listener:Lcoil/network/e$a;

    .line 8
    .line 9
    new-instance p2, Lcoil/network/g$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcoil/network/g$a;-><init>(Lcoil/network/g;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcoil/network/g;->networkCallback:Lcoil/network/g$a;

    .line 15
    .line 16
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 33
    return-void
.end method

.method public static final synthetic b(Lcoil/network/g;Landroid/net/Network;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcoil/network/g;->d(Landroid/net/Network;Z)V

    .line 4
    return-void
.end method

.method private final c(Landroid/net/Network;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/network/g;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private final d(Landroid/net/Network;Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/network/g;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    aget-object v4, v0, v3

    .line 14
    .line 15
    .line 16
    invoke-static {v4, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v5

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    move v4, p2

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0, v4}, Lcoil/network/g;->c(Landroid/net/Network;)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    :goto_1
    if-eqz v4, :cond_1

    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    :goto_2
    iget-object p1, p0, Lcoil/network/g;->listener:Lcoil/network/e$a;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v2}, Lcoil/network/e$a;->a(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/network/g;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    .line 11
    :goto_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    aget-object v4, v0, v3

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v4}, Lcoil/network/g;->c(Landroid/net/Network;)Z

    .line 17
    move-result v4

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return v2
.end method

.method public shutdown()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/network/g;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/network/g;->networkCallback:Lcoil/network/g$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 8
    return-void
.end method
