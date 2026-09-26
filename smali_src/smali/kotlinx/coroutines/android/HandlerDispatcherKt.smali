.class public final Lkotlinx/coroutines/android/HandlerDispatcherKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,217:1\n314#2,11:218\n314#2,9:229\n323#2,2:239\n17#3:238\n1#4:241\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n189#1:218,11\n197#1:229,9\n197#1:239,2\n201#1:238\n*E\n"
.end annotation


# static fields
.field private static final MAX_DELAY:J = 0x3fffffffffffffffL

.field public static final Main:Lkotlinx/coroutines/android/HandlerDispatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile choreographer:Landroid/view/Choreographer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 4
    .line 5
    new-instance v1, Lkotlinx/coroutines/android/HandlerContext;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->asHandler(Landroid/os/Looper;Z)Landroid/os/Handler;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x2

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v0, v3, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    .line 26
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {v1}, Lw7/v;->g(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move-object v0, v1

    .line 43
    .line 44
    :goto_1
    check-cast v0, Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 45
    .line 46
    sput-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->Main:Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 47
    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/o;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->postFrameCallback$lambda$6(Lkotlinx/coroutines/o;J)V

    return-void
.end method

.method public static final synthetic access$awaitFrameSlowPath(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->awaitFrameSlowPath(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/o;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/o;)V

    .line 4
    return-void
.end method

.method public static final asHandler(Landroid/os/Looper;Z)Landroid/os/Handler;
    .locals 7
    .param p0    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1c

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    const-class v2, Landroid/os/Looper;

    .line 10
    .line 11
    const-class v3, Landroid/os/Handler;

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    new-array p1, v5, [Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v2, p1, v4

    .line 20
    .line 21
    const-string v0, "createAsync"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-array v0, v5, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p0, v0, v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    const-string p1, "null cannot be cast to non-null type android.os.Handler"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    check-cast p0, Landroid/os/Handler;

    .line 41
    return-object p0

    .line 42
    :cond_0
    const/4 p1, 0x3

    .line 43
    .line 44
    :try_start_0
    new-array v0, p1, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v2, v0, v4

    .line 47
    .line 48
    const-class v2, Landroid/os/Handler$Callback;

    .line 49
    .line 50
    aput-object v2, v0, v5

    .line 51
    .line 52
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 53
    const/4 v6, 0x2

    .line 54
    .line 55
    aput-object v2, v0, v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 59
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    new-array p1, p1, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object p0, p1, v4

    .line 64
    .line 65
    aput-object v1, p1, v5

    .line 66
    .line 67
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    aput-object p0, p1, v6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    check-cast p0, Landroid/os/Handler;

    .line 76
    return-object p0

    .line 77
    .line 78
    :catch_0
    new-instance p1, Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    return-object p1
.end method

.method public static final awaitFrame(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->choreographer:Landroid/view/Choreographer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    new-instance v1, Lkotlinx/coroutines/p;

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lkotlinx/coroutines/p;->x()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->access$postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/o;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 34
    :cond_0
    return-object v0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->awaitFrameSlowPath(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final awaitFrameSlowPath(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->access$updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/o;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-instance v3, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v0}, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/o;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lkotlinx/coroutines/k0;->dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    if-ne v0, v1, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 57
    :cond_1
    return-object v0
.end method

.method public static final from(Landroid/os/Handler;)Lkotlinx/coroutines/android/HandlerDispatcher;
    .locals 2
    .param p0    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;
    .locals 1
    .param p0    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lkotlinx/coroutines/android/HandlerContext;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic getMain$annotations()V
    .locals 0

    return-void
.end method

.method private static final postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Choreographer;",
            "Lkotlinx/coroutines/o<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/android/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lkotlinx/coroutines/android/b;-><init>(Lkotlinx/coroutines/o;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 9
    return-void
.end method

.method private static final postFrameCallback$lambda$6(Lkotlinx/coroutines/o;J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0, p1}, Lkotlinx/coroutines/o;->V(Lkotlinx/coroutines/k0;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method private static final updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->choreographer:Landroid/view/Choreographer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    sput-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->choreographer:Landroid/view/Choreographer;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0, p0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/o;)V

    .line 17
    return-void
.end method
