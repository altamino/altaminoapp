.class public final Lkotlinx/coroutines/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1963#2,14:135\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n38#1:135,14\n*E\n"
.end annotation


# static fields
.field private static final FAST_SERVICE_LOADER_ENABLED:Z

.field public static final INSTANCE:Lkotlinx/coroutines/internal/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final dispatcher:Lkotlinx/coroutines/n2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/x;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/internal/x;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/internal/x;->INSTANCE:Lkotlinx/coroutines/internal/x;

    .line 8
    .line 9
    const-string v1, "kotlinx.coroutines.fast.service.loader"

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/j0;->f(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lkotlinx/coroutines/internal/x;->a()Lkotlinx/coroutines/n2;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Lkotlinx/coroutines/internal/x;->dispatcher:Lkotlinx/coroutines/n2;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final a()Lkotlinx/coroutines/n2;
    .locals 7

    .line 1
    .line 2
    const-class v0, Lkotlinx/coroutines/internal/w;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    sget-boolean v2, Lkotlinx/coroutines/internal/x;->FAST_SERVICE_LOADER_ENABLED:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-object v0, Lkotlinx/coroutines/internal/m;->INSTANCE:Lkotlinx/coroutines/internal/m;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->c()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/sequences/j;->c(Ljava/util/Iterator;)Lkotlin/sequences/g;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/sequences/j;->A(Lkotlin/sequences/g;)Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    :goto_0
    move-object v2, v0

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Iterable;

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    move-object v3, v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-nez v4, :cond_2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v4, v3

    .line 64
    .line 65
    check-cast v4, Lkotlinx/coroutines/internal/w;

    .line 66
    .line 67
    .line 68
    invoke-interface {v4}, Lkotlinx/coroutines/internal/w;->getLoadPriority()I

    .line 69
    move-result v4

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    move-object v6, v5

    .line 75
    .line 76
    check-cast v6, Lkotlinx/coroutines/internal/w;

    .line 77
    .line 78
    .line 79
    invoke-interface {v6}, Lkotlinx/coroutines/internal/w;->getLoadPriority()I

    .line 80
    move-result v6

    .line 81
    .line 82
    if-ge v4, v6, :cond_4

    .line 83
    move-object v3, v5

    .line 84
    move v4, v6

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v5

    .line 89
    .line 90
    if-nez v5, :cond_3

    .line 91
    .line 92
    :goto_1
    check-cast v3, Lkotlinx/coroutines/internal/w;

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/y;->e(Lkotlinx/coroutines/internal/w;Ljava/util/List;)Lkotlinx/coroutines/n2;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-nez v0, :cond_6

    .line 101
    :cond_5
    const/4 v0, 0x3

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v1, v0, v1}, Lkotlinx/coroutines/internal/y;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/z;

    .line 105
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    goto :goto_3

    .line 107
    :goto_2
    const/4 v2, 0x2

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/internal/y;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/z;

    .line 111
    move-result-object v0

    .line 112
    :cond_6
    :goto_3
    return-object v0
.end method
