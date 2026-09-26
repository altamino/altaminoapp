.class public final Landroidx/window/layout/SidecarWindowBackend$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarWindowBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/window/layout/SidecarWindowBackend$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/window/layout/SidecarWindowBackend;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/window/layout/SidecarWindowBackend;->c()Landroidx/window/layout/SidecarWindowBackend;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/window/layout/SidecarWindowBackend;->d()Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Landroidx/window/layout/SidecarWindowBackend;->c()Landroidx/window/layout/SidecarWindowBackend;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    sget-object v1, Landroidx/window/layout/SidecarWindowBackend;->Companion:Landroidx/window/layout/SidecarWindowBackend$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroidx/window/layout/SidecarWindowBackend$Companion;->b(Landroid/content/Context;)Landroidx/window/layout/ExtensionInterfaceCompat;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance v1, Landroidx/window/layout/SidecarWindowBackend;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p1}, Landroidx/window/layout/SidecarWindowBackend;-><init>(Landroidx/window/layout/ExtensionInterfaceCompat;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroidx/window/layout/SidecarWindowBackend;->e(Landroidx/window/layout/SidecarWindowBackend;)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    throw p1

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_2
    invoke-static {}, Landroidx/window/layout/SidecarWindowBackend;->c()Landroidx/window/layout/SidecarWindowBackend;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 59
    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/window/layout/ExtensionInterfaceCompat;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Landroidx/window/layout/SidecarCompat;->Companion:Landroidx/window/layout/SidecarCompat$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat$Companion;->c()Landroidx/window/core/Version;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/window/layout/SidecarWindowBackend$Companion;->c(Landroidx/window/core/Version;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroidx/window/layout/SidecarCompat;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/window/layout/SidecarCompat;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->l()Z

    .line 27
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c(Landroidx/window/core/Version;)Z
    .locals 2
    .param p1    # Landroidx/window/core/Version;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Landroidx/window/core/Version;->Companion:Landroidx/window/core/Version$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/window/core/Version$Companion;->a()Landroidx/window/core/Version;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/window/core/Version;->b(Landroidx/window/core/Version;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-ltz p1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
.end method
