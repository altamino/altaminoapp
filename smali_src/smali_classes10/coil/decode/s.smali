.class public final Lcoil/decode/s;
.super Lcoil/decode/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageSource.kt\ncoil/decode/SourceImageSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FileSystem.kt\nokio/FileSystem\n+ 4 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,304:1\n1#2:305\n79#3:306\n160#3:307\n80#3:308\n81#3:314\n52#4,5:309\n57#4,13:315\n*S KotlinDebug\n*F\n+ 1 ImageSource.kt\ncoil/decode/SourceImageSource\n*L\n280#1:306\n280#1:307\n280#1:308\n280#1:314\n280#1:309,5\n280#1:315,13\n*E\n"
.end annotation


# instance fields
.field private final cacheDirectory:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private file:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isClosed:Z

.field private final metadata:Lcoil/decode/p$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private source:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljava/io/File;Lcoil/decode/p$a;)V
    .locals 1
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/decode/p$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcoil/decode/p;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput-object p2, p0, Lcoil/decode/s;->cacheDirectory:Ljava/io/File;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil/decode/s;->metadata:Lcoil/decode/p$a;

    .line 9
    .line 10
    iput-object p1, p0, Lcoil/decode/s;->source:Lokio/BufferedSource;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "cacheDirectory must be a directory."

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method private final k()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcoil/decode/s;->isClosed:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "closed"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcoil/decode/s;->isClosed:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcoil/decode/s;->source:Lokio/BufferedSource;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcoil/decode/s;->file:Lokio/Path;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcoil/decode/s;->l()Lokio/FileSystem;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lokio/FileSystem;->delete(Lokio/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public d()Lcoil/decode/p$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/decode/s;->metadata:Lcoil/decode/p$a;

    return-object v0
.end method

.method public declared-synchronized h()Lokio/BufferedSource;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcoil/decode/s;->k()V

    .line 5
    .line 6
    iget-object v0, p0, Lcoil/decode/s;->source:Lokio/BufferedSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcoil/decode/s;->l()Lokio/FileSystem;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcoil/decode/s;->file:Lokio/Path;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcoil/decode/s;->source:Lokio/BufferedSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public l()Lokio/FileSystem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 3
    return-object v0
.end method
