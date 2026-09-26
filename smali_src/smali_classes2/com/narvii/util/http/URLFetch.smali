.class public Lcom/narvii/util/http/URLFetch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canceled:Z

.field private conn:Ljava/net/HttpURLConnection;

.field private error:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getQueryKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/http/URLFetch;->getQueryPart(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    new-instance v1, Ljava/util/StringTokenizer;

    .line 12
    .line 13
    const-string v2, "&"

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const/16 v2, 0x3d

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-lez v2, :cond_0

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result p0

    .line 48
    .line 49
    new-array p0, p0, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    check-cast p0, [Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method private static getQueryPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x3f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    return-object p0

    .line 19
    .line 20
    :cond_0
    if-ne v0, v2, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static getQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/http/URLFetch;->getQueryPart(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    new-instance v0, Ljava/util/StringTokenizer;

    .line 7
    .line 8
    const-string v1, "&"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 15
    move-result p0

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const/16 v1, 0x3d

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-lez v1, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/http/URLFetch;->canceled:Z

    return-void
.end method

.method public getError()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/URLFetch;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getJsonNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/http/URLFetch;->getRaw(Ljava/lang/String;I)[B

    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree([B)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p1

    .line 17
    :catch_0
    return-object v0
.end method

.method public getRaw(Ljava/lang/String;I)[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Ljava/net/URLConnection;

    .line 17
    .line 18
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/narvii/util/http/URLFetch;->onConnected(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 30
    .line 31
    if-lez p2, :cond_0

    .line 32
    move v2, p2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    const v2, 0x8000

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 40
    .line 41
    const/16 v2, 0x1000

    .line 42
    .line 43
    new-array v3, v2, [B

    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    .line 47
    :goto_1
    if-lez p2, :cond_1

    .line 48
    .line 49
    if-ge v5, p2, :cond_4

    .line 50
    .line 51
    :cond_1
    if-lez p2, :cond_2

    .line 52
    .line 53
    sub-int v6, p2, v5

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result v6

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_4

    .line 61
    :cond_2
    move v6, v2

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    .line 65
    move-result v6

    .line 66
    const/4 v7, -0x1

    .line 67
    .line 68
    if-eq v6, v7, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/util/http/URLFetch;->isCanceled()Z

    .line 72
    move-result v7

    .line 73
    .line 74
    if-eqz v7, :cond_3

    .line 75
    goto :goto_3

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {v1, v3, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 79
    add-int/2addr v5, v6

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/util/http/URLFetch;->isCanceled()Z

    .line 90
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 95
    return-object v0

    .line 96
    .line 97
    .line 98
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 99
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 102
    return-object p1

    .line 103
    .line 104
    :goto_4
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 105
    throw p1

    .line 106
    .line 107
    :catch_0
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 108
    return-object v0
.end method

.method public getUTF8String(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/URLFetch;->getRaw(Ljava/lang/String;I)[B

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object p2

    .line 9
    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "utf-8"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    return-object p2
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/http/URLFetch;->canceled:Z

    return v0
.end method

.method protected onConnected(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 5
    .line 6
    const/16 p1, 0x2710

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    return-void
.end method
