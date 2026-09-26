.class public final Landroidx/media3/exoplayer/dash/DashUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Landroidx/media3/datasource/DataSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/Representation;",
            "Ljava/lang/String;",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DataSpec;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->i(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-wide v0, p2, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->start:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->h(J)Landroidx/media3/datasource/DataSpec$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-wide v0, p2, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->length:J

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->g(J)Landroidx/media3/datasource/DataSpec$Builder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/dash/DashUtil;->g(Landroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/RangedUri;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroidx/media3/datasource/DataSpec$Builder;->f(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p3}, Landroidx/media3/datasource/DataSpec$Builder;->b(I)Landroidx/media3/datasource/DataSpec$Builder;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p4}, Landroidx/media3/datasource/DataSpec$Builder;->e(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static b(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/extractor/ChunkIndex;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/exoplayer/dash/DashUtil;->c(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;I)Landroidx/media3/extractor/ChunkIndex;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;I)Landroidx/media3/extractor/ChunkIndex;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/manifest/Representation;->m()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/dash/manifest/Representation;->format:Landroidx/media3/common/Format;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/dash/DashUtil;->f(ILandroidx/media3/common/Format;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1, p0, p2, p3, v0}, Landroidx/media3/exoplayer/dash/DashUtil;->e(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/Representation;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->release()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->c()Landroidx/media3/extractor/ChunkIndex;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->release()V

    .line 31
    throw p0
.end method

.method private static d(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/Representation;ILandroidx/media3/exoplayer/source/chunk/ChunkExtractor;Landroidx/media3/exoplayer/dash/manifest/RangedUri;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 9
    .line 10
    iget-object p2, p2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p4, v0, v1}, Landroidx/media3/exoplayer/dash/DashUtil;->a(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Landroidx/media3/datasource/DataSpec;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    new-instance p2, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;

    .line 22
    .line 23
    iget-object v5, p1, Landroidx/media3/exoplayer/dash/manifest/Representation;->format:Landroidx/media3/common/Format;

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p0

    .line 28
    move-object v8, p3

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->load()V

    .line 35
    return-void
.end method

.method private static e(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/Representation;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/manifest/Representation;->m()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 11
    .line 12
    if-eqz p4, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/manifest/Representation;->l()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 16
    move-result-object p4

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object v1, p2, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p4, v1}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->a(Landroidx/media3/exoplayer/dash/manifest/RangedUri;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/exoplayer/dash/DashUtil;->d(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/Representation;ILandroidx/media3/exoplayer/source/chunk/ChunkExtractor;Landroidx/media3/exoplayer/dash/manifest/RangedUri;)V

    .line 39
    move-object v0, p4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v1

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/exoplayer/dash/DashUtil;->d(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/Representation;ILandroidx/media3/exoplayer/source/chunk/ChunkExtractor;Landroidx/media3/exoplayer/dash/manifest/RangedUri;)V

    .line 45
    return-void
.end method

.method private static f(ILandroidx/media3/common/Format;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v1, "video/webm"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "audio/webm"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>()V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    .line 32
    .line 33
    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v0, p0, p1}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;ILandroidx/media3/common/Format;)V

    .line 37
    return-object v1
.end method

.method public static g(Landroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/RangedUri;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/Representation;->j()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method
