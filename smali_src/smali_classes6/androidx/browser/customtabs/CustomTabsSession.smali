.class public final Landroidx/browser/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsSession$MockSession;,
        Landroidx/browser/customtabs/CustomTabsSession$PendingSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"

.field static final TARGET_ORIGIN_KEY:Ljava/lang/String; = "target_origin"


# instance fields
.field private final mCallback:Landroid/support/customtabs/a;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/support/customtabs/b;


# direct methods
.method constructor <init>(Landroid/support/customtabs/b;Landroid/support/customtabs/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 1
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
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
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/b;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 17
    .line 18
    iput-object p4, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    .line 19
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "android.support.customtabs.extra.SESSION_ID"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/CustomTabsSession;->a(Landroid/os/Bundle;)V

    .line 14
    return-object v0
.end method

.method private c(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v1, "target_origin"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/CustomTabsSession;->a(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    const/4 v0, 0x0

    .line 27
    :cond_2
    return-object v0
.end method


# virtual methods
.method d()Landroid/os/IBinder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method e()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method f()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public g(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsSession;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/b;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/customtabs/b;->Q(Landroid/support/customtabs/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public h(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsSession;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/b;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2, p1, p2}, Landroid/support/customtabs/b;->X(Landroid/support/customtabs/a;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 15
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    monitor-exit v0

    .line 17
    return p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    monitor-exit v0

    .line 21
    const/4 p1, -0x2

    .line 22
    return p1

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public i(Landroid/net/Uri;)Z
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v1, v0}, Landroidx/browser/customtabs/CustomTabsSession;->j(Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public j(Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsSession;->c(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/b;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0, p1, p3}, Landroid/support/customtabs/b;->z0(Landroid/support/customtabs/a;Landroid/net/Uri;Landroid/os/Bundle;)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/b;

    .line 21
    .line 22
    iget-object p3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p3, p1}, Landroid/support/customtabs/b;->o1(Landroid/support/customtabs/a;Landroid/net/Uri;)Z

    .line 26
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p1

    .line 28
    :catch_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public k(ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 3
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-lt p1, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    if-le p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsSession;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/b;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/a;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v2, p1, p2, p3}, Landroid/support/customtabs/b;->i(Landroid/support/customtabs/a;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    .line 20
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p1

    .line 22
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
