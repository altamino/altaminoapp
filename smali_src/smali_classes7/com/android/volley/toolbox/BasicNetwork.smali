.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static final DEFAULT_POOL_SIZE:I = 0x1000

.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# instance fields
.field private final mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 3
    .line 4
    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 3
    new-instance v0, Lcom/android/volley/toolbox/AdaptedHttpStack;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/AdaptedHttpStack;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x2

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    new-array p2, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p0, p2, v3

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    aput-object p0, p2, v2

    .line 25
    .line 26
    const-string p0, "%s-retry [timeout=%s]"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p2

    .line 36
    .line 37
    new-array v0, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p0, v0, v3

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    aput-object p0, v0, v2

    .line 46
    .line 47
    const-string p0, "%s-timeout-giveup [timeout=%s]"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 55
    throw p2
.end method

.method private static combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/android/volley/Header;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 50
    move-result p0

    .line 51
    .line 52
    if-nez p0, :cond_4

    .line 53
    .line 54
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    check-cast p1, Lcom/android/volley/Header;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 90
    move-result p0

    .line 91
    .line 92
    if-nez p0, :cond_4

    .line 93
    .line 94
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result p1

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    check-cast p1, Ljava/util/Map$Entry;

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result v2

    .line 123
    .line 124
    if-nez v2, :cond_3

    .line 125
    .line 126
    new-instance v2, Lcom/android/volley/Header;

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    check-cast v3, Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    check-cast p1, Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-direct {v2, v3, p1}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_2

    .line 146
    :cond_4
    return-object v1
.end method

.method protected static convertHeaders([Lcom/android/volley/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/volley/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    aget-object v2, p0, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    aget-object v3, p0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method private getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v2, "If-None-Match"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    :cond_1
    iget-wide v1, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long p1, v1, v3

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    const-string p1, "If-Modified-Since"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->formatEpochAsRfc1123(J)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_2
    return-object v0
.end method

.method private inputStreamToBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 8
    .line 9
    const-string p2, "Error occurred when closing InputStream"

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 16
    .line 17
    const/16 v4, 0x400

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 25
    move-result v3

    .line 26
    const/4 v4, -0x1

    .line 27
    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v3

    .line 34
    goto :goto_2

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 38
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    :goto_1
    iget-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 56
    return-object v3

    .line 57
    .line 58
    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/volley/ServerError;

    .line 59
    .line 60
    .line 61
    invoke-direct {v3}, Lcom/android/volley/ServerError;-><init>()V

    .line 62
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    :goto_2
    if-eqz p1, :cond_2

    .line 65
    .line 66
    .line 67
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-static {p2, p1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 82
    throw v3
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0xbb8

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-lez v0, :cond_2

    .line 11
    :cond_0
    const/4 v0, 0x5

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    aput-object p3, v0, v1

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    array-length p1, p4

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string/jumbo p1, "null"

    .line 35
    :goto_0
    const/4 p2, 0x2

    .line 36
    .line 37
    aput-object p1, v0, p2

    .line 38
    const/4 p1, 0x3

    .line 39
    .line 40
    .line 41
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    aput-object p2, v0, p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    .line 52
    move-result p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p1

    .line 57
    const/4 p2, 0x4

    .line 58
    .line 59
    aput-object p1, v0, p2

    .line 60
    .line 61
    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x3

    .line 6
    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    aput-object p1, v2, v3

    .line 11
    sub-long/2addr v0, p3

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p1

    .line 16
    const/4 p3, 0x1

    .line 17
    .line 18
    aput-object p1, v2, p3

    .line 19
    const/4 p1, 0x2

    .line 20
    .line 21
    aput-object p2, v2, p1

    .line 22
    .line 23
    const-string p1, "HTTP ERROR(%s) %d ms to fetch %s"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v9

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {v7, v0}, Lcom/android/volley/toolbox/BasicNetwork;->getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v3, v7, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v8, v0}, Lcom/android/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    .line 28
    move-result-object v12
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 32
    move-result v14

    .line 33
    .line 34
    .line 35
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 36
    move-result-object v13
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 37
    .line 38
    const/16 v0, 0x130

    .line 39
    .line 40
    if-ne v14, v0, :cond_1

    .line 41
    .line 42
    .line 43
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    new-instance v0, Lcom/android/volley/NetworkResponse;

    .line 49
    .line 50
    const/16 v16, 0x130

    .line 51
    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    const/16 v18, 0x1

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    move-result-wide v3

    .line 59
    .line 60
    sub-long v19, v3, v9

    .line 61
    move-object v15, v0

    .line 62
    .line 63
    move-object/from16 v21, v13

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v15 .. v21}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 67
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    move-object v15, v2

    .line 70
    move-object v2, v12

    .line 71
    .line 72
    move-object/from16 v19, v13

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .line 77
    goto/16 :goto_8

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-static {v13, v0}, Lcom/android/volley/toolbox/BasicNetwork;->combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    .line 81
    move-result-object v27

    .line 82
    .line 83
    new-instance v1, Lcom/android/volley/NetworkResponse;

    .line 84
    .line 85
    const/16 v22, 0x130

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 88
    .line 89
    const/16 v24, 0x1

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    move-result-wide v3

    .line 94
    .line 95
    sub-long v25, v3, v9

    .line 96
    .line 97
    move-object/from16 v21, v1

    .line 98
    .line 99
    move-object/from16 v23, v0

    .line 100
    .line 101
    .line 102
    invoke-direct/range {v21 .. v27}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    return-object v1

    .line 104
    .line 105
    .line 106
    :cond_1
    :try_start_3
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 107
    move-result-object v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    .line 112
    :try_start_4
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    .line 113
    move-result v1

    .line 114
    .line 115
    .line 116
    invoke-direct {v7, v0, v1}, Lcom/android/volley/toolbox/BasicNetwork;->inputStreamToBytes(Ljava/io/InputStream;I)[B

    .line 117
    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    .line 119
    :goto_1
    move-object/from16 v20, v0

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :cond_2
    :try_start_5
    new-array v0, v11, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 123
    goto :goto_1

    .line 124
    .line 125
    .line 126
    :goto_2
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    move-result-wide v0

    .line 128
    .line 129
    sub-long v2, v0, v9

    .line 130
    .line 131
    move-object/from16 v1, p0

    .line 132
    .line 133
    move-object/from16 v4, p1

    .line 134
    .line 135
    move-object/from16 v5, v20

    .line 136
    move v6, v14

    .line 137
    .line 138
    .line 139
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BI)V

    .line 140
    .line 141
    const/16 v0, 0xc8

    .line 142
    .line 143
    if-lt v14, v0, :cond_3

    .line 144
    .line 145
    const/16 v0, 0x12b

    .line 146
    .line 147
    if-gt v14, v0, :cond_3

    .line 148
    .line 149
    new-instance v0, Lcom/android/volley/NetworkResponse;

    .line 150
    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 155
    move-result-wide v1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 156
    .line 157
    sub-long v17, v1, v9

    .line 158
    move-object v1, v13

    .line 159
    move-object v13, v0

    .line 160
    .line 161
    move-object/from16 v15, v20

    .line 162
    .line 163
    move-object/from16 v19, v1

    .line 164
    .line 165
    .line 166
    :try_start_7
    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 167
    return-object v0

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .line 170
    :goto_3
    move-object/from16 v19, v1

    .line 171
    move-object v2, v12

    .line 172
    .line 173
    move-object/from16 v15, v20

    .line 174
    goto :goto_5

    .line 175
    :catch_3
    move-exception v0

    .line 176
    move-object v1, v13

    .line 177
    goto :goto_3

    .line 178
    :cond_3
    move-object v1, v13

    .line 179
    .line 180
    new-instance v0, Ljava/io/IOException;

    .line 181
    .line 182
    .line 183
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 184
    throw v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 185
    :catch_4
    move-exception v0

    .line 186
    move-object v1, v13

    .line 187
    .line 188
    :goto_4
    move-object/from16 v19, v1

    .line 189
    move-object v15, v2

    .line 190
    move-object v2, v12

    .line 191
    goto :goto_5

    .line 192
    :catch_5
    move-exception v0

    .line 193
    goto :goto_4

    .line 194
    :catch_6
    move-exception v0

    .line 195
    .line 196
    move-object/from16 v19, v1

    .line 197
    move-object v15, v2

    .line 198
    .line 199
    :goto_5
    if-eqz v2, :cond_b

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 203
    move-result v0

    .line 204
    const/4 v1, 0x2

    .line 205
    .line 206
    new-array v1, v1, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    aput-object v2, v1, v11

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    const/4 v3, 0x1

    .line 218
    .line 219
    aput-object v2, v1, v3

    .line 220
    .line 221
    const-string v2, "Unexpected response code %d for %s"

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .line 226
    if-eqz v15, :cond_a

    .line 227
    .line 228
    new-instance v1, Lcom/android/volley/NetworkResponse;

    .line 229
    .line 230
    const/16 v16, 0x0

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 234
    move-result-wide v2

    .line 235
    .line 236
    sub-long v17, v2, v9

    .line 237
    move-object v13, v1

    .line 238
    move v14, v0

    .line 239
    .line 240
    .line 241
    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 242
    .line 243
    const/16 v2, 0x191

    .line 244
    .line 245
    if-eq v0, v2, :cond_9

    .line 246
    .line 247
    const/16 v2, 0x193

    .line 248
    .line 249
    if-ne v0, v2, :cond_4

    .line 250
    goto :goto_7

    .line 251
    .line 252
    :cond_4
    const/16 v2, 0x190

    .line 253
    .line 254
    if-lt v0, v2, :cond_6

    .line 255
    .line 256
    const/16 v2, 0x1f3

    .line 257
    .line 258
    if-le v0, v2, :cond_5

    .line 259
    goto :goto_6

    .line 260
    .line 261
    :cond_5
    new-instance v0, Lcom/android/volley/ClientError;

    .line 262
    .line 263
    .line 264
    invoke-direct {v0, v1}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 265
    throw v0

    .line 266
    .line 267
    :cond_6
    :goto_6
    const/16 v2, 0x1f4

    .line 268
    .line 269
    if-lt v0, v2, :cond_8

    .line 270
    .line 271
    const/16 v2, 0x257

    .line 272
    .line 273
    if-gt v0, v2, :cond_8

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    .line 277
    move-result v0

    .line 278
    .line 279
    if-eqz v0, :cond_7

    .line 280
    .line 281
    new-instance v0, Lcom/android/volley/ServerError;

    .line 282
    .line 283
    .line 284
    invoke-direct {v0, v1}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 285
    .line 286
    .line 287
    const-string/jumbo v1, "server"

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v8, v0}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_7
    new-instance v0, Lcom/android/volley/ServerError;

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v1}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 298
    throw v0

    .line 299
    .line 300
    :cond_8
    new-instance v0, Lcom/android/volley/ServerError;

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v1}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 304
    throw v0

    .line 305
    .line 306
    :cond_9
    :goto_7
    new-instance v0, Lcom/android/volley/AuthFailureError;

    .line 307
    .line 308
    .line 309
    invoke-direct {v0, v1}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 310
    .line 311
    const-string v1, "auth"

    .line 312
    .line 313
    .line 314
    invoke-static {v1, v8, v0}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_a
    new-instance v0, Lcom/android/volley/NetworkError;

    .line 319
    .line 320
    .line 321
    invoke-direct {v0}, Lcom/android/volley/NetworkError;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v1, "network"

    .line 325
    .line 326
    .line 327
    invoke-static {v1, v8, v0}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_b
    new-instance v1, Lcom/android/volley/NoConnectionError;

    .line 332
    .line 333
    .line 334
    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    .line 335
    throw v1

    .line 336
    .line 337
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 338
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    const-string v3, "Bad URL "

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 351
    move-result-object v3

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    .line 361
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    throw v1

    .line 363
    .line 364
    :catch_7
    new-instance v0, Lcom/android/volley/TimeoutError;

    .line 365
    .line 366
    .line 367
    invoke-direct {v0}, Lcom/android/volley/TimeoutError;-><init>()V

    .line 368
    .line 369
    .line 370
    const-string/jumbo v1, "socket"

    .line 371
    .line 372
    .line 373
    invoke-static {v1, v8, v0}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 374
    .line 375
    goto/16 :goto_0
.end method
