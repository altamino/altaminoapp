.class public Lcom/google/android/exoplayer2/upstream/t;
.super Lcom/google/android/exoplayer2/upstream/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/t$c;,
        Lcom/google/android/exoplayer2/upstream/t$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesToRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentTypePredicate:Lcom/google/common/base/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final keepPostFor302Redirects:Z

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/c0;

.field private responseCode:I

.field private final userAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1f40

    .line 2
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    .line 3
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/upstream/c0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;Lcom/google/common/base/p;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;Lcom/google/common/base/p;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/upstream/c0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/common/base/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/google/android/exoplayer2/upstream/c0;",
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->userAgent:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/t;->connectTimeoutMillis:I

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/t;->readTimeoutMillis:I

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/t;->allowCrossProtocolRedirects:Z

    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/t;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/c0;

    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/t;->contentTypePredicate:Lcom/google/common/base/p;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/upstream/c0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/c0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->requestProperties:Lcom/google/android/exoplayer2/upstream/c0;

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/upstream/t;->keepPostFor302Redirects:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;Lcom/google/common/base/p;ZLcom/google/android/exoplayer2/upstream/t$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;Lcom/google/common/base/p;Z)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->connection:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .line 11
    const-string v1, "DefaultHttpDataSource"

    .line 12
    .line 13
    const-string v2, "Unexpected error while disconnecting"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->connection:Ljava/net/HttpURLConnection;

    .line 20
    :cond_0
    return-void
.end method

.method private i(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/URL;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/z;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    const/16 v1, 0x7d1

    .line 4
    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string v3, "https"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "http"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/z;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v3, "Unsupported protocol redirect: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 54
    throw p1

    .line 55
    .line 56
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/t;->allowCrossProtocolRedirects:Z

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v3

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/upstream/z;

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string v4, "Disallowed cross-protocol redirect ("

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p1, " to "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p1, ")"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, p1, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 109
    throw v2

    .line 110
    :cond_3
    :goto_1
    return-object v2

    .line 111
    :catch_0
    move-exception p1

    .line 112
    .line 113
    new-instance p2, Lcom/google/android/exoplayer2/upstream/z;

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 117
    throw p2

    .line 118
    .line 119
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/z;

    .line 120
    .line 121
    const-string p2, "Null location redirect"

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 125
    throw p1
.end method

.method private static j(Ljava/net/HttpURLConnection;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "Content-Encoding"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "gzip"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private k(Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/HttpURLConnection;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    .line 6
    new-instance v1, Ljava/net/URL;

    .line 7
    .line 8
    iget-object v0, v12, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    iget v2, v12, Lcom/google/android/exoplayer2/upstream/o;->httpMethod:I

    .line 18
    .line 19
    iget-object v3, v12, Lcom/google/android/exoplayer2/upstream/o;->httpBody:[B

    .line 20
    .line 21
    iget-wide v13, v12, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 22
    .line 23
    iget-wide v9, v12, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 24
    const/4 v15, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v12, v15}, Lcom/google/android/exoplayer2/upstream/o;->d(I)Z

    .line 28
    move-result v16

    .line 29
    .line 30
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/t;->allowCrossProtocolRedirects:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/t;->keepPostFor302Redirects:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    const/4 v15, 0x1

    .line 38
    .line 39
    iget-object v12, v12, Lcom/google/android/exoplayer2/upstream/o;->httpRequestHeaders:Ljava/util/Map;

    .line 40
    .line 41
    move-object/from16 v0, p0

    .line 42
    move-wide v4, v13

    .line 43
    move-wide v6, v9

    .line 44
    .line 45
    move/from16 v8, v16

    .line 46
    move v9, v15

    .line 47
    move-object v10, v12

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/t;->l(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    move-object v8, v1

    .line 55
    move v6, v2

    .line 56
    .line 57
    move-object/from16 v17, v3

    .line 58
    .line 59
    :goto_0
    add-int/lit8 v7, v0, 0x1

    .line 60
    .line 61
    const/16 v1, 0x14

    .line 62
    .line 63
    if-gt v0, v1, :cond_7

    .line 64
    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    iget-object v4, v12, Lcom/google/android/exoplayer2/upstream/o;->httpRequestHeaders:Ljava/util/Map;

    .line 68
    .line 69
    move-object/from16 v0, p0

    .line 70
    move-object v1, v8

    .line 71
    move v2, v6

    .line 72
    .line 73
    move-object/from16 v3, v17

    .line 74
    .line 75
    move-object/from16 v19, v4

    .line 76
    move-wide v4, v13

    .line 77
    .line 78
    move-wide/from16 v20, v13

    .line 79
    move v13, v6

    .line 80
    move v14, v7

    .line 81
    move-wide v6, v9

    .line 82
    .line 83
    move-object/from16 v22, v8

    .line 84
    .line 85
    move/from16 v8, v16

    .line 86
    .line 87
    move-wide/from16 v23, v9

    .line 88
    .line 89
    move/from16 v9, v18

    .line 90
    .line 91
    move-object/from16 v10, v19

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/t;->l(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 99
    move-result v1

    .line 100
    .line 101
    const-string v2, "Location"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    const/16 v3, 0x12f

    .line 108
    .line 109
    const/16 v4, 0x12d

    .line 110
    .line 111
    const/16 v5, 0x12c

    .line 112
    .line 113
    const/16 v6, 0x12e

    .line 114
    .line 115
    if-eq v13, v15, :cond_1

    .line 116
    const/4 v7, 0x3

    .line 117
    .line 118
    if-ne v13, v7, :cond_3

    .line 119
    .line 120
    :cond_1
    if-eq v1, v5, :cond_2

    .line 121
    .line 122
    if-eq v1, v4, :cond_2

    .line 123
    .line 124
    if-eq v1, v6, :cond_2

    .line 125
    .line 126
    if-eq v1, v3, :cond_2

    .line 127
    .line 128
    const/16 v7, 0x133

    .line 129
    .line 130
    if-eq v1, v7, :cond_2

    .line 131
    .line 132
    const/16 v7, 0x134

    .line 133
    .line 134
    if-ne v1, v7, :cond_3

    .line 135
    .line 136
    :cond_2
    move-object/from16 v1, v22

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    const/4 v7, 0x2

    .line 139
    .line 140
    if-ne v13, v7, :cond_6

    .line 141
    .line 142
    if-eq v1, v5, :cond_4

    .line 143
    .line 144
    if-eq v1, v4, :cond_4

    .line 145
    .line 146
    if-eq v1, v6, :cond_4

    .line 147
    .line 148
    if-ne v1, v3, :cond_6

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 152
    .line 153
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/t;->keepPostFor302Redirects:Z

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    if-ne v1, v6, :cond_5

    .line 158
    move v6, v13

    .line 159
    .line 160
    :goto_1
    move-object/from16 v1, v22

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :cond_5
    const/16 v17, 0x0

    .line 164
    move v6, v15

    .line 165
    goto :goto_1

    .line 166
    .line 167
    .line 168
    :goto_2
    invoke-direct {v11, v1, v2, v12}, Lcom/google/android/exoplayer2/upstream/t;->i(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/URL;

    .line 169
    move-result-object v0

    .line 170
    move-object v8, v0

    .line 171
    goto :goto_4

    .line 172
    :cond_6
    return-object v0

    .line 173
    .line 174
    .line 175
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    .line 177
    .line 178
    invoke-direct {v11, v1, v2, v12}, Lcom/google/android/exoplayer2/upstream/t;->i(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/URL;

    .line 179
    move-result-object v0

    .line 180
    move-object v8, v0

    .line 181
    move v6, v13

    .line 182
    :goto_4
    move v0, v14

    .line 183
    .line 184
    move-wide/from16 v13, v20

    .line 185
    .line 186
    move-wide/from16 v9, v23

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    :cond_7
    move v14, v7

    .line 190
    .line 191
    new-instance v0, Lcom/google/android/exoplayer2/upstream/z;

    .line 192
    .line 193
    new-instance v1, Ljava/net/NoRouteToHostException;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    const-string v3, "Too many redirects: "

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    const/16 v2, 0x7d1

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v1, v12, v2, v15}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 219
    throw v0
.end method

.method private l(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/t;->n(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/t;->connectTimeoutMillis:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/t;->readTimeoutMillis:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/t;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/c0;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/c0;->a()Ljava/util/Map;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/t;->requestProperties:Lcom/google/android/exoplayer2/upstream/c0;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/c0;->a()Ljava/util/Map;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 46
    move-result-object p10

    .line 47
    .line 48
    .line 49
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p10

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-static {p4, p5, p6, p7}, Lcom/google/android/exoplayer2/upstream/d0;->a(JJ)Ljava/lang/String;

    .line 82
    move-result-object p4

    .line 83
    .line 84
    if-eqz p4, :cond_2

    .line 85
    .line 86
    const-string p5, "Range"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/t;->userAgent:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz p4, :cond_3

    .line 94
    .line 95
    const-string p5, "User-Agent"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    :cond_3
    if-eqz p8, :cond_4

    .line 101
    .line 102
    const-string p4, "gzip"

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_4
    const-string p4, "identity"

    .line 106
    .line 107
    :goto_1
    const-string p5, "Accept-Encoding"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 114
    .line 115
    if-eqz p3, :cond_5

    .line 116
    const/4 p4, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    const/4 p4, 0x0

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/o;->c(I)Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    .line 130
    if-eqz p3, :cond_6

    .line 131
    array-length p2, p3

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 148
    goto :goto_3

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 152
    :goto_3
    return-object p1
.end method

.method private static m(Ljava/net/HttpURLConnection;J)V
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x13

    .line 7
    .line 8
    if-lt v0, v1, :cond_4

    .line 9
    .line 10
    const/16 v1, 0x14

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    cmp-long v0, p1, v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 27
    move-result p1

    .line 28
    const/4 p2, -0x1

    .line 29
    .line 30
    if-ne p1, p2, :cond_2

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    const-wide/16 v0, 0x800

    .line 34
    .line 35
    cmp-long p1, p1, v0

    .line 36
    .line 37
    if-gtz p1, :cond_2

    .line 38
    return-void

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p2

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Ljava/lang/Class;

    .line 77
    .line 78
    const-string p2, "unexpectedEndOfInput"

    .line 79
    const/4 v0, 0x0

    .line 80
    .line 81
    new-array v1, v0, [Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    move-result-object p1

    .line 86
    const/4 p2, 0x1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 90
    .line 91
    new-array p2, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method private o([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 7
    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    const/4 v3, -0x1

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesRead:J

    .line 16
    sub-long/2addr v0, v4

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v2, v0, v4

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    return v3

    .line 24
    :cond_1
    int-to-long v4, p3

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 28
    move-result-wide v0

    .line 29
    long-to-int p3, v0

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 41
    move-result p1

    .line 42
    .line 43
    if-ne p1, v3, :cond_3

    .line 44
    return v3

    .line 45
    .line 46
    :cond_3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesRead:J

    .line 47
    int-to-long v0, p1

    .line 48
    add-long/2addr p2, v0

    .line 49
    .line 50
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesRead:J

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->d(I)V

    .line 54
    return p1
.end method

.method private p(JLcom/google/android/exoplayer2/upstream/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const/16 v2, 0x1000

    .line 10
    .line 11
    new-array v3, v2, [B

    .line 12
    .line 13
    :goto_0
    cmp-long v4, p1, v0

    .line 14
    .line 15
    if-lez v4, :cond_3

    .line 16
    int-to-long v4, v2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 20
    move-result-wide v4

    .line 21
    long-to-int v4, v4

    .line 22
    .line 23
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Ljava/io/InputStream;

    .line 30
    const/4 v6, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 34
    move-result v4

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x1

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    const/4 v5, -0x1

    .line 47
    .line 48
    if-eq v4, v5, :cond_1

    .line 49
    int-to-long v5, v4

    .line 50
    sub-long/2addr p1, v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/upstream/f;->d(I)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/z;

    .line 57
    .line 58
    const/16 p2, 0x7d8

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p3, p2, v6}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/upstream/z;

    .line 65
    .line 66
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 67
    .line 68
    .line 69
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 70
    .line 71
    const/16 v0, 0x7d0

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p2, p3, v0, v6}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 75
    throw p1

    .line 76
    :cond_3
    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/z;
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesRead:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->f(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/t;->k(Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/HttpURLConnection;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/t;->connection:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 22
    move-result v4

    .line 23
    .line 24
    iput v4, p0, Lcom/google/android/exoplayer2/upstream/t;->responseCode:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 28
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 29
    .line 30
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/t;->responseCode:I

    .line 31
    .line 32
    const-string v5, "Content-Range"

    .line 33
    .line 34
    const/16 v6, 0xc8

    .line 35
    .line 36
    const-wide/16 v8, -0x1

    .line 37
    .line 38
    if-lt v4, v6, :cond_9

    .line 39
    .line 40
    const/16 v10, 0x12b

    .line 41
    .line 42
    if-le v4, v10, :cond_0

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/t;->contentTypePredicate:Lcom/google/common/base/p;

    .line 51
    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-interface {v7, v4}, Lcom/google/common/base/p;->apply(Ljava/lang/Object;)Z

    .line 56
    move-result v7

    .line 57
    .line 58
    if-eqz v7, :cond_1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/upstream/a0;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v4, p1}, Lcom/google/android/exoplayer2/upstream/a0;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;)V

    .line 68
    throw v0

    .line 69
    .line 70
    :cond_2
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/t;->responseCode:I

    .line 71
    .line 72
    if-ne v4, v6, :cond_3

    .line 73
    .line 74
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 75
    .line 76
    cmp-long v4, v6, v0

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    move-wide v0, v6

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/t;->j(Ljava/net/HttpURLConnection;)Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 88
    .line 89
    cmp-long v10, v6, v8

    .line 90
    .line 91
    if-eqz v10, :cond_4

    .line 92
    .line 93
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_4
    const-string v6, "Content-Length"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/upstream/d0;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 108
    move-result-wide v5

    .line 109
    .line 110
    cmp-long v7, v5, v8

    .line 111
    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    sub-long v8, v5, v0

    .line 115
    .line 116
    :cond_5
    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_6
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 120
    .line 121
    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 122
    .line 123
    :goto_1
    const/16 v5, 0x7d0

    .line 124
    .line 125
    .line 126
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 134
    .line 135
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 136
    .line 137
    .line 138
    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .line 140
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto :goto_3

    .line 144
    .line 145
    :cond_7
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/t;->opened:Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->g(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 149
    .line 150
    .line 151
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/t;->p(JLcom/google/android/exoplayer2/upstream/o;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    .line 153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 154
    return-wide v0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 159
    .line 160
    instance-of v1, v0, Lcom/google/android/exoplayer2/upstream/z;

    .line 161
    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    check-cast v0, Lcom/google/android/exoplayer2/upstream/z;

    .line 165
    throw v0

    .line 166
    .line 167
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/upstream/z;

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v0, p1, v5, v2}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 171
    throw v1

    .line 172
    .line 173
    .line 174
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 175
    .line 176
    new-instance v1, Lcom/google/android/exoplayer2/upstream/z;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, v0, p1, v5, v2}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 180
    throw v1

    .line 181
    .line 182
    .line 183
    :cond_9
    :goto_4
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    iget v6, p0, Lcom/google/android/exoplayer2/upstream/t;->responseCode:I

    .line 187
    .line 188
    const/16 v10, 0x1a0

    .line 189
    .line 190
    if-ne v6, v10, :cond_b

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 195
    .line 196
    .line 197
    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/d0;->c(Ljava/lang/String;)J

    .line 198
    move-result-wide v5

    .line 199
    .line 200
    iget-wide v11, p1, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 201
    .line 202
    cmp-long v5, v11, v5

    .line 203
    .line 204
    if-nez v5, :cond_b

    .line 205
    .line 206
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/t;->opened:Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->g(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 210
    .line 211
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 212
    .line 213
    cmp-long p1, v2, v8

    .line 214
    .line 215
    if-eqz p1, :cond_a

    .line 216
    move-wide v0, v2

    .line 217
    :cond_a
    return-wide v0

    .line 218
    .line 219
    .line 220
    :cond_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    .line 226
    :try_start_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->L0(Ljava/io/InputStream;)[B

    .line 227
    move-result-object v0

    .line 228
    goto :goto_5

    .line 229
    .line 230
    :cond_c
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->EMPTY_BYTE_ARRAY:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    :goto_5
    move-object v11, v0

    .line 232
    goto :goto_6

    .line 233
    .line 234
    :catch_2
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->EMPTY_BYTE_ARRAY:[B

    .line 235
    goto :goto_5

    .line 236
    .line 237
    .line 238
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 239
    .line 240
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/t;->responseCode:I

    .line 241
    .line 242
    if-ne v0, v10, :cond_d

    .line 243
    .line 244
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    .line 245
    .line 246
    const/16 v1, 0x7d8

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/l;-><init>(I)V

    .line 250
    :goto_7
    move-object v8, v0

    .line 251
    goto :goto_8

    .line 252
    :cond_d
    const/4 v0, 0x0

    .line 253
    goto :goto_7

    .line 254
    .line 255
    :goto_8
    new-instance v0, Lcom/google/android/exoplayer2/upstream/b0;

    .line 256
    .line 257
    iget v6, p0, Lcom/google/android/exoplayer2/upstream/t;->responseCode:I

    .line 258
    move-object v5, v0

    .line 259
    move-object v9, v4

    .line 260
    move-object v10, p1

    .line 261
    .line 262
    .line 263
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/b0;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/o;[B)V

    .line 264
    throw v0

    .line 265
    :catch_3
    move-exception v0

    .line 266
    .line 267
    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 269
    .line 270
    .line 271
    invoke-static {v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/z;->c(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)Lcom/google/android/exoplayer2/upstream/z;

    .line 272
    move-result-object p1

    .line 273
    throw p1
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/z;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    if-eqz v2, :cond_1

    .line 7
    .line 8
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesToRead:J

    .line 9
    .line 10
    const-wide/16 v5, -0x1

    .line 11
    .line 12
    cmp-long v7, v3, v5

    .line 13
    .line 14
    if-nez v7, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/t;->bytesRead:J

    .line 18
    .line 19
    sub-long v5, v3, v5

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/t;->connection:Ljava/net/HttpURLConnection;

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/t;->m(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .line 33
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/z;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/t;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    check-cast v4, Lcom/google/android/exoplayer2/upstream/o;

    .line 42
    .line 43
    const/16 v5, 0x7d0

    .line 44
    const/4 v6, 0x3

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 48
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/t;->opened:Z

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/t;->opened:Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 63
    :cond_2
    return-void

    .line 64
    .line 65
    :goto_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/t;->inputStream:Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/t;->h()V

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/t;->opened:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/t;->opened:Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 78
    :cond_3
    throw v2
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->connection:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/t$c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/t$c;-><init>(Ljava/util/Map;)V

    .line 19
    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->connection:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method n(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/net/URLConnection;

    .line 11
    .line 12
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 13
    return-object p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/z;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/t;->o([BII)I

    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/t;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/google/android/exoplayer2/upstream/o;

    .line 15
    const/4 p3, 0x2

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/z;->c(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)Lcom/google/android/exoplayer2/upstream/z;

    .line 19
    move-result-object p1

    .line 20
    throw p1
.end method
