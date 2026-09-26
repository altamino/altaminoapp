.class public final Lcoil/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lokio/FileSystem;Lokio/Path;)V
    .locals 1
    .param p0    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lokio/FileSystem;->sink(Lokio/Path;)Lokio/Sink;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 14
    :cond_0
    return-void
.end method

.method public static final b(Lokio/FileSystem;Lokio/Path;)V
    .locals 3
    .param p0    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lokio/Path;

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p0, v1}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lokio/FileMetadata;->isDirectory()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1}, Lcoil/util/e;->b(Lokio/FileSystem;Lokio/Path;)V

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lokio/FileSystem;->delete(Lokio/Path;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :goto_2
    if-nez v0, :cond_0

    .line 44
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    if-nez v0, :cond_3

    .line 48
    return-void

    .line 49
    :cond_3
    throw v0

    .line 50
    :catch_1
    return-void
.end method
