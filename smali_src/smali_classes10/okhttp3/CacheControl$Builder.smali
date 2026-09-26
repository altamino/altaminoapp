.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheControl.kt\nokhttp3/CacheControl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1#2:417\n*E\n"
.end annotation


# instance fields
.field private immutable:Z

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private noStore:Z

.field private noTransform:Z

.field private onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 7
    .line 8
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 9
    .line 10
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 11
    return-void
.end method

.method private final clampToInt(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final build()Lokhttp3/CacheControl;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v16, Lokhttp3/CacheControl;

    .line 5
    .line 6
    iget-boolean v2, v0, Lokhttp3/CacheControl$Builder;->noCache:Z

    .line 7
    .line 8
    iget-boolean v3, v0, Lokhttp3/CacheControl$Builder;->noStore:Z

    .line 9
    .line 10
    iget v4, v0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 11
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    .line 16
    iget v9, v0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 17
    .line 18
    iget v10, v0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 19
    .line 20
    iget-boolean v11, v0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 21
    .line 22
    iget-boolean v12, v0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    .line 23
    .line 24
    iget-boolean v13, v0, Lokhttp3/CacheControl$Builder;->immutable:Z

    .line 25
    const/4 v14, 0x0

    .line 26
    const/4 v15, 0x0

    .line 27
    .line 28
    move-object/from16 v1, v16

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v15}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/k;)V

    .line 32
    return-object v16
.end method

.method public final immutable()Lokhttp3/CacheControl$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    return-object p0
.end method

.method public final maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 2
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "timeUnit"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    int-to-long v0, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 12
    move-result-wide p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lokhttp3/CacheControl$Builder;->clampToInt(J)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    const-string p2, "maxAge < 0: "

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p2
.end method

.method public final maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 2
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "timeUnit"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    int-to-long v0, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 12
    move-result-wide p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lokhttp3/CacheControl$Builder;->clampToInt(J)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    const-string p2, "maxStale < 0: "

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p2
.end method

.method public final minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 2
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "timeUnit"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    int-to-long v0, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 12
    move-result-wide p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lokhttp3/CacheControl$Builder;->clampToInt(J)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    const-string p2, "minFresh < 0: "

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p2
.end method

.method public final noCache()Lokhttp3/CacheControl$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    return-object p0
.end method

.method public final noStore()Lokhttp3/CacheControl$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    return-object p0
.end method

.method public final noTransform()Lokhttp3/CacheControl$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    return-object p0
.end method

.method public final onlyIfCached()Lokhttp3/CacheControl$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    return-object p0
.end method
