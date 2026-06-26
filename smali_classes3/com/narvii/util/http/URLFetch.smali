.class public Lcom/narvii/util/http/URLFetch;
.super Ljava/lang/Object;
.source "URLFetch.java"


# instance fields
.field private canceled:Z

.field private conn:Ljava/net/HttpURLConnection;

.field private error:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQueryKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 103
    invoke-static {p0}, Lcom/narvii/util/http/URLFetch;->getQueryPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3d

    .line 108
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getQueryPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3f

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x23

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 118
    invoke-static {p0}, Lcom/narvii/util/http/URLFetch;->getQueryPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3d

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 125
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/narvii/util/http/URLFetch;->canceled:Z

    return-void
.end method

.method public getError()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/util/http/URLFetch;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getJsonNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/http/URLFetch;->getRaw(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 84
    :cond_0
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree([B)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getRaw(Ljava/lang/String;I)[B
    .locals 7

    const/4 v0, 0x0

    .line 40
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 42
    iput-object v1, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/narvii/util/http/URLFetch;->onConnected(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 44
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 45
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    if-lez p2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    const v2, 0x8000

    :goto_0
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-lez p2, :cond_1

    if-ge v4, p2, :cond_4

    :cond_1
    if-lez p2, :cond_2

    .line 49
    array-length v5, v2

    sub-int v6, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_2

    :cond_2
    array-length v5, v2

    .line 50
    :goto_2
    invoke-virtual {p1, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/narvii/util/http/URLFetch;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 53
    :cond_3
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v5

    goto :goto_1

    .line 56
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/util/http/URLFetch;->isCanceled()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 63
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    return-object v0

    .line 60
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    .line 64
    throw p1

    .line 63
    :catch_0
    iput-object v0, p0, Lcom/narvii/util/http/URLFetch;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getUTF8String(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/URLFetch;->getRaw(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 73
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p2
.end method

.method public isCanceled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/narvii/util/http/URLFetch;->canceled:Z

    return v0
.end method

.method protected onConnected(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 0

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 p1, 0x2710

    .line 136
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method
