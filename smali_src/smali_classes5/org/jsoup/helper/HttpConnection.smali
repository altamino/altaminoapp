.class public Lorg/jsoup/helper/HttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/HttpConnection$KeyVal;,
        Lorg/jsoup/helper/HttpConnection$Response;,
        Lorg/jsoup/helper/HttpConnection$Request;,
        Lorg/jsoup/helper/HttpConnection$Base;
    }
.end annotation


# static fields
.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DEFAULT_UA:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36"

.field private static final DefaultUploadType:Ljava/lang/String; = "application/octet-stream"

.field private static final FORM_URL_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final HTTP_TEMP_REDIR:I = 0x133

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private req:Lorg/jsoup/Connection$Request;

.field private res:Lorg/jsoup/Connection$Response;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lorg/jsoup/helper/HttpConnection$Request;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 11
    .line 12
    new-instance v0, Lorg/jsoup/helper/HttpConnection$Response;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection$Response;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 18
    return-void
.end method

.method static synthetic access$200(Lorg/jsoup/Connection$Request;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->needsMultipart(Lorg/jsoup/Connection$Request;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->encodeMimeName(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static connect(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/HttpConnection;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->url(Ljava/lang/String;)Lorg/jsoup/Connection;

    return-object v0
.end method

.method public static connect(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1

    .line 3
    new-instance v0, Lorg/jsoup/helper/HttpConnection;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection;-><init>()V

    .line 4
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->url(Ljava/net/URL;)Lorg/jsoup/Connection;

    return-object v0
.end method

.method private static encodeMimeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "\""

    .line 7
    .line 8
    const-string v1, "%22"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method static encodeUrl(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method private static needsMultipart(Lorg/jsoup/Connection$Request;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method


# virtual methods
.method public cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lorg/jsoup/Connection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 6
    return-object p0
.end method

.method public cookies(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Cookie map must not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2, v0}, Lorg/jsoup/Connection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object p0
.end method

.method public data(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;
    .locals 3

    const-string v0, "Data key must not be empty"

    .line 18
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection;->request()Lorg/jsoup/Connection$Request;

    move-result-object v0

    invoke-interface {v0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/Connection$KeyVal;

    .line 20
    invoke-interface {v1}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 1
    invoke-static {p1, p2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;

    return-object p0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 2
    invoke-static {p1, p2, p3}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;

    return-object p0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    invoke-static {p1, p2, p3}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/jsoup/helper/HttpConnection$KeyVal;->contentType(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;

    return-object p0
.end method

.method public data(Ljava/util/Collection;)Lorg/jsoup/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    const-string v0, "Data collection must not be null"

    .line 15
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 17
    invoke-interface {v1, v0}, Lorg/jsoup/Connection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public data(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    const-string v0, "Data map must not be null"

    .line 4
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jsoup/Connection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs data([Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 4

    const-string v0, "Data key value pairs must not be null"

    .line 7
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Must supply an even number of key value pairs"

    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 9
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 10
    aget-object v0, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 11
    aget-object v2, p1, v2

    const-string v3, "Data key must not be empty"

    .line 12
    invoke-static {v0, v3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Data value must not be null"

    .line 13
    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 14
    invoke-static {v0, v2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/jsoup/Connection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public execute()Lorg/jsoup/Connection$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/Connection$Request;)Lorg/jsoup/helper/HttpConnection$Response;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 9
    return-object v0
.end method

.method public followRedirects(Z)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->followRedirects(Z)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public get()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lorg/jsoup/Connection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection;->execute()Lorg/jsoup/Connection$Response;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lorg/jsoup/Connection$Response;->parse()Lorg/jsoup/nodes/Document;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 6
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lorg/jsoup/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Header map must not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2, v0}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object p0
.end method

.method public ignoreContentType(Z)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->ignoreContentType(Z)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public ignoreHttpErrors(Z)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->ignoreHttpErrors(Z)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public maxBodySize(I)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->maxBodySize(I)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 6
    return-object p0
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public post()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lorg/jsoup/Connection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection;->execute()Lorg/jsoup/Connection$Response;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lorg/jsoup/Connection$Response;->parse()Lorg/jsoup/nodes/Document;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public proxy(Ljava/lang/String;I)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 2
    invoke-interface {v0, p1, p2}, Lorg/jsoup/Connection$Request;->proxy(Ljava/lang/String;I)Lorg/jsoup/Connection$Request;

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 1
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->proxy(Ljava/net/Proxy;)Lorg/jsoup/Connection$Request;

    return-object p0
.end method

.method public referrer(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2

    .line 1
    .line 2
    const-string v0, "Referrer must not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 8
    .line 9
    const-string v1, "Referer"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 13
    return-object p0
.end method

.method public request()Lorg/jsoup/Connection$Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    return-object v0
.end method

.method public request(Lorg/jsoup/Connection$Request;)Lorg/jsoup/Connection;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    return-object p0
.end method

.method public requestBody(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public response()Lorg/jsoup/Connection$Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    return-object v0
.end method

.method public response(Lorg/jsoup/Connection$Response;)Lorg/jsoup/Connection;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 6
    return-object p0
.end method

.method public timeout(I)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->timeout(I)Lorg/jsoup/Connection$Request;

    .line 6
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 4

    const-string v0, "Must supply a valid URL"

    .line 2
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/jsoup/Connection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public url(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 1
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 2

    .line 1
    .line 2
    const-string v0, "User agent must not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 8
    .line 9
    const-string v1, "User-Agent"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 13
    return-object p0
.end method

.method public validateTLSCertificates(Z)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/Connection$Request;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$Request;->validateTLSCertificates(Z)V

    .line 6
    return-object p0
.end method
