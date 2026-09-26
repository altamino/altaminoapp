.class public final Lkotlinx/coroutines/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REMOVE_FUTURE_ON_CANCEL:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    const-class v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    .line 4
    const-string v1, "setRemoveOnCancelPolicy"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    aput-object v3, v2, v4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    sput-object v0, Lkotlinx/coroutines/internal/c;->REMOVE_FUTURE_ON_CANCEL:Ljava/lang/reflect/Method;

    .line 21
    return-void
.end method

.method public static final a(Ljava/util/concurrent/Executor;)Z
    .locals 5
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    .line 11
    :goto_0
    if-nez p0, :cond_1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/c;->REMOVE_FUTURE_ON_CANCEL:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    return v0

    .line 18
    :cond_2
    const/4 v2, 0x1

    .line 19
    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    aput-object v4, v3, v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return v2

    .line 29
    :catchall_0
    return v0
.end method
