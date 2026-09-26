.class public Lcom/bumptech/glide/manager/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/l$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/manager/l$b;

.field private static final FRAGMENT_INDEX_KEY:Ljava/lang/String; = "key"

.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.bumptech.glide.manager"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field private static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RMRetriever"


# instance fields
.field private volatile applicationManager:Lcom/bumptech/glide/j;

.field private final factory:Lcom/bumptech/glide/manager/l$b;

.field private final handler:Landroid/os/Handler;

.field final pendingRequestManagerFragments:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/k;",
            ">;"
        }
    .end annotation
.end field

.field final pendingSupportRequestManagerFragments:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/o;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBundle:Landroid/os/Bundle;

.field private final tempViewToFragment:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempViewToSupportFragment:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/manager/l$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/manager/l$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/manager/l;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/l$b;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/l$b;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/manager/l$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    .line 25
    .line 26
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->tempViewToFragment:Landroidx/collection/ArrayMap;

    .line 32
    .line 33
    new-instance v0, Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->tempBundle:Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/l;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/l$b;

    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->factory:Lcom/bumptech/glide/manager/l$b;

    .line 46
    .line 47
    new-instance p1, Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->handler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method private static b(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Landroid/app/Activity;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroid/app/Activity;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroid/content/ContextWrapper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/bumptech/glide/manager/l;->b(Landroid/content/Context;)Landroid/app/Activity;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method private c(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/j;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/bumptech/glide/manager/l;->j(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/k;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/k;->e()Lcom/bumptech/glide/j;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    iget-object p4, p0, Lcom/bumptech/glide/manager/l;->factory:Lcom/bumptech/glide/manager/l$b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/k;->c()Lcom/bumptech/glide/manager/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/k;->f()Lcom/bumptech/glide/manager/m;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p4, p3, v0, v1, p1}, Lcom/bumptech/glide/manager/l$b;->a(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/manager/k;->k(Lcom/bumptech/glide/j;)V

    .line 32
    :cond_0
    return-object p3
.end method

.method private h(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->applicationManager:Lcom/bumptech/glide/j;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->applicationManager:Lcom/bumptech/glide/j;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/manager/l;->factory:Lcom/bumptech/glide/manager/l$b;

    .line 20
    .line 21
    new-instance v2, Lcom/bumptech/glide/manager/b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Lcom/bumptech/glide/manager/b;-><init>()V

    .line 25
    .line 26
    new-instance v3, Lcom/bumptech/glide/manager/g;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3}, Lcom/bumptech/glide/manager/g;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/l$b;->a(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->applicationManager:Lcom/bumptech/glide/j;

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1

    .line 47
    .line 48
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bumptech/glide/manager/l;->applicationManager:Lcom/bumptech/glide/j;

    .line 49
    return-object p1
.end method

.method private j(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/k;
    .locals 2
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "com.bumptech.glide.manager"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/bumptech/glide/manager/k;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/manager/l;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/bumptech/glide/manager/k;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    new-instance v1, Lcom/bumptech/glide/manager/k;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lcom/bumptech/glide/manager/k;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/manager/k;->j(Landroid/app/Fragment;)V

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/k;->c()Lcom/bumptech/glide/manager/a;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/a;->d()V

    .line 38
    .line 39
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/manager/l;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 54
    .line 55
    iget-object p2, p0, Lcom/bumptech/glide/manager/l;->handler:Landroid/os/Handler;

    .line 56
    const/4 p3, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_1
    return-object v1
.end method

.method private l(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/manager/o;
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "com.bumptech.glide.manager"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/bumptech/glide/manager/o;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/manager/l;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/bumptech/glide/manager/o;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    new-instance v1, Lcom/bumptech/glide/manager/o;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lcom/bumptech/glide/manager/o;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/manager/o;->p(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/o;->h()Lcom/bumptech/glide/manager/a;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/a;->d()V

    .line 38
    .line 39
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/manager/l;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 54
    .line 55
    iget-object p2, p0, Lcom/bumptech/glide/manager/l;->handler:Landroid/os/Handler;

    .line 56
    const/4 p3, 0x2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_1
    return-object v1
.end method

.method private static m(Landroid/content/Context;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/manager/l;->b(Landroid/content/Context;)Landroid/app/Activity;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private n(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/j;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/bumptech/glide/manager/l;->l(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/manager/o;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/o;->j()Lcom/bumptech/glide/j;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    iget-object p4, p0, Lcom/bumptech/glide/manager/l;->factory:Lcom/bumptech/glide/manager/l$b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/o;->h()Lcom/bumptech/glide/manager/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/o;->k()Lcom/bumptech/glide/manager/m;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p4, p3, v0, v1, p1}, Lcom/bumptech/glide/manager/l$b;->a(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/manager/o;->q(Lcom/bumptech/glide/j;)V

    .line 32
    :cond_0
    return-object p3
.end method


# virtual methods
.method public d(Landroid/app/Activity;)Lcom/bumptech/glide/j;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/k;->o()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/l;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/l;->a(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/manager/l;->m(Landroid/content/Context;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/manager/l;->c(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/j;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public e(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/bumptech/glide/util/k;->p()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    instance-of v0, p1, Landroid/app/Application;

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/l;->g(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/j;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/l;->d(Landroid/app/Activity;)Lcom/bumptech/glide/j;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    move-object v0, p1

    .line 40
    .line 41
    check-cast v0, Landroid/content/ContextWrapper;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/l;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/l;->h(Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v0, "You cannot start a load on a null Context"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1
.end method

.method public f(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/j;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/bumptech/glide/util/k;->o()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/l;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/manager/l;->n(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/j;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public g(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/j;
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/k;->o()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/l;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/l;->a(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/manager/l;->m(Landroid/content/Context;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/manager/l;->n(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/j;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    move-object v0, p1

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroidx/fragment/app/FragmentManager;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    :goto_0
    move-object v4, v0

    .line 24
    move-object v0, p1

    .line 25
    move-object p1, v4

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/app/FragmentManager;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :goto_1
    if-eqz v1, :cond_2

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    const/4 p1, 0x5

    .line 43
    .line 44
    const-string v2, "RMRetriever"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v3, "Failed to remove expected request manager fragment, manager: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    return v1
.end method

.method i(Landroid/app/Activity;)Lcom/bumptech/glide/manager/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/bumptech/glide/manager/l;->m(Landroid/content/Context;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/manager/l;->j(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/k;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method k(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/manager/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/manager/l;->m(Landroid/content/Context;)Z

    .line 5
    move-result p1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, v0, p1}, Lcom/bumptech/glide/manager/l;->l(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/bumptech/glide/manager/o;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
