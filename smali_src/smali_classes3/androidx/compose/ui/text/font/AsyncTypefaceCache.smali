.class public final Landroidx/compose/ui/text/font/AsyncTypefaceCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;,
        Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontListFontFamilyTypefaceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/AsyncTypefaceCache\n+ 2 Synchronization.jvm.kt\nandroidx/compose/ui/text/platform/Synchronization_jvmKt\n*L\n1#1,432:1\n24#2:433\n24#2:434\n24#2:435\n24#2:436\n24#2:437\n*S KotlinDebug\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/AsyncTypefaceCache\n*L\n370#1:433\n381#1:434\n393#1:435\n400#1:436\n421#1:437\n*E\n"
.end annotation


# instance fields
.field private final PermanentFailure:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/text/caches/SimpleArrayMap<",
            "Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;",
            "Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resultCache:Landroidx/compose/ui/text/caches/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/text/caches/LruCache<",
            "Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;",
            "Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iput-object v1, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->PermanentFailure:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/ui/text/caches/LruCache;

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/caches/LruCache;-><init>(I)V

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 20
    .line 21
    new-instance v1, Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;-><init>(IILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    iput-object v1, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->a()Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 35
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/caches/SimpleArrayMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/caches/LruCache;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p5, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->e(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public final d(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "font"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "platformFontLoader"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 22
    monitor-enter p1

    .line 23
    .line 24
    :try_start_0
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/caches/LruCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p1

    .line 45
    return-object p2

    .line 46
    :goto_1
    monitor-exit p1

    .line 47
    throw p2
.end method

.method public final e(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "font"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "platformFontLoader"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 22
    monitor-enter p1

    .line 23
    .line 24
    if-nez p3, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 27
    .line 28
    iget-object p3, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->PermanentFailure:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, p3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    if-eqz p4, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0, p3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    .line 69
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0, p3}, Landroidx/compose/ui/text/caches/LruCache;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p1

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit p1

    .line 80
    throw p2
.end method

.method public final g(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;ZLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/Font;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Z",
            "Le8/l<",
            "-",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p5, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p5

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p5}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;-><init>(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p5, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-boolean p3, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->Z$0:Z

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 44
    .line 45
    iget-object p2, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 48
    .line 49
    .line 50
    invoke-static {p5}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {p5}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    new-instance p5, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-direct {p5, p1, p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 74
    monitor-enter p1

    .line 75
    .line 76
    :try_start_0
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p5}, Landroidx/compose/ui/text/caches/LruCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 83
    .line 84
    if-nez p2, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p5}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    check-cast p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p2

    .line 95
    goto :goto_5

    .line 96
    .line 97
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->g()Ljava/lang/Object;

    .line 101
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p1

    .line 103
    return-object p2

    .line 104
    .line 105
    :cond_4
    :try_start_1
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p1

    .line 107
    .line 108
    iput-object p0, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p5, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->L$1:Ljava/lang/Object;

    .line 111
    .line 112
    iput-boolean p3, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->Z$0:Z

    .line 113
    .line 114
    iput v3, v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$runCached$1;->label:I

    .line 115
    .line 116
    .line 117
    invoke-interface {p4, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    if-ne p1, v1, :cond_5

    .line 121
    return-object v1

    .line 122
    :cond_5
    move-object p2, p0

    .line 123
    move-object v4, p5

    .line 124
    move-object p5, p1

    .line 125
    move-object p1, v4

    .line 126
    .line 127
    :goto_2
    iget-object p4, p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 128
    monitor-enter p4

    .line 129
    .line 130
    if-nez p5, :cond_6

    .line 131
    .line 132
    :try_start_2
    iget-object p3, p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 133
    .line 134
    iget-object p2, p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->PermanentFailure:Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p1, p2}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    goto :goto_3

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    goto :goto_4

    .line 145
    .line 146
    :cond_6
    if-eqz p3, :cond_7

    .line 147
    .line 148
    iget-object p2, p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 149
    .line 150
    .line 151
    invoke-static {p5}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    .line 155
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 156
    move-result-object p3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    goto :goto_3

    .line 161
    .line 162
    :cond_7
    iget-object p2, p2, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 163
    .line 164
    .line 165
    invoke-static {p5}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object p3

    .line 167
    .line 168
    .line 169
    invoke-static {p3}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 170
    move-result-object p3

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/text/caches/LruCache;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    monitor-exit p4

    .line 177
    return-object p5

    .line 178
    :goto_4
    monitor-exit p4

    .line 179
    throw p1

    .line 180
    :goto_5
    monitor-exit p1

    .line 181
    throw p2
.end method
