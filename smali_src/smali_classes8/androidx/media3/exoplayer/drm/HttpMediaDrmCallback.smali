.class public final Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/MediaDrmCallback;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final MAX_MANUAL_REDIRECTS:I = 0x5


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final defaultLicenseUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final forceDefaultLicenseUrl:Z

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method

.method private static c(Landroidx/media3/datasource/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 8
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource$Factory;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/datasource/StatsDataSource;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    .line 10
    .line 11
    new-instance p0, Landroidx/media3/datasource/DataSpec$Builder;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->j(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3}, Landroidx/media3/datasource/DataSpec$Builder;->e(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->d(I)Landroidx/media3/datasource/DataSpec$Builder;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Landroidx/media3/datasource/DataSpec$Builder;->c([B)Landroidx/media3/datasource/DataSpec$Builder;

    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->b(I)Landroidx/media3/datasource/DataSpec$Builder;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    .line 40
    move-result-object v2

    .line 41
    const/4 p0, 0x0

    .line 42
    move-object p1, v2

    .line 43
    .line 44
    :goto_0
    :try_start_0
    new-instance p2, Landroidx/media3/datasource/DataSourceInputStream;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v0, p1}, Landroidx/media3/datasource/DataSourceInputStream;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-static {p2}, Landroidx/media3/common/util/Util;->j1(Ljava/io/InputStream;)[B

    .line 51
    move-result-object p0
    :try_end_1
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_2
    invoke-static {p2}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    return-object p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    move-object v7, p0

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception p3

    .line 62
    .line 63
    .line 64
    :try_start_3
    invoke-static {p3, p0}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->d(Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    add-int/lit8 p0, p0, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroidx/media3/datasource/DataSpec$Builder;->j(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    .line 81
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_4
    invoke-static {p2}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    :try_start_5
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    .line 88
    .line 89
    :goto_1
    :try_start_6
    invoke-static {p2}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 90
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 91
    .line 92
    :goto_2
    new-instance p0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->e()Landroid/net/Uri;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    .line 103
    check-cast v3, Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->d()J

    .line 111
    move-result-wide v5

    .line 112
    move-object v1, p0

    .line 113
    .line 114
    .line 115
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    .line 116
    throw p0
.end method

.method private static d(Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 3
    .line 4
    const/16 v1, 0x133

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x134

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    :cond_0
    const/4 v0, 0x5

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string p1, "Location"

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    check-cast p0, Ljava/util/List;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    check-cast p0, Ljava/lang/String;

    .line 42
    return-object p0

    .line 43
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_5

    .line 23
    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    sget-object v2, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "text/xml"

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const-string v3, "application/json"

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    const-string v3, "application/octet-stream"

    .line 53
    .line 54
    :goto_0
    const-string v4, "Content-Type"

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    const-string p1, "SOAPAction"

    .line 66
    .line 67
    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 73
    monitor-enter p1

    .line 74
    .line 75
    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->a()[B

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0, p2, v1}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->c(Landroidx/media3/datasource/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :catchall_0
    move-exception p2

    .line 92
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p2

    .line 94
    .line 95
    :cond_5
    new-instance p1, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    .line 96
    .line 97
    new-instance p2, Landroidx/media3/datasource/DataSpec$Builder;

    .line 98
    .line 99
    .line 100
    invoke-direct {p2}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 101
    .line 102
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v2}, Landroidx/media3/datasource/DataSpec$Builder;->i(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    const-wide/16 v4, 0x0

    .line 117
    .line 118
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string p2, "No license URL"

    .line 121
    .line 122
    .line 123
    invoke-direct {v6, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    move-object v0, p1

    .line 125
    .line 126
    .line 127
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    .line 128
    throw p1
.end method

.method public b(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->b()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "&signedRequest="

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->a()[B

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroidx/media3/common/util/Util;->E([B)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1, v0, v1}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->c(Landroidx/media3/datasource/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method
