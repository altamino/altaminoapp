.class abstract Lorg/jsoup/helper/HttpConnection$Base;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$Base;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/jsoup/Connection$Base;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jsoup/Connection$Base<",
        "TT;>;"
    }
.end annotation


# instance fields
.field cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field method:Lorg/jsoup/Connection$Method;

.field url:Ljava/net/URL;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/HttpConnection$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>()V

    return-void
.end method

.method private static fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Base;->looksLikeUtf8([B)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "UTF-8"

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v1

    .line 22
    :catch_0
    return-object p0
.end method

.method private getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Ljava/util/List;

    .line 44
    return-object p1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method private static looksLikeUtf8([B)Z
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    .line 6
    if-lt v0, v3, :cond_2

    .line 7
    .line 8
    aget-byte v0, p0, v2

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    const/16 v4, 0xef

    .line 13
    .line 14
    if-ne v0, v4, :cond_2

    .line 15
    .line 16
    aget-byte v0, p0, v1

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    const/16 v4, 0xbb

    .line 21
    .line 22
    if-ne v0, v4, :cond_0

    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    const/4 v4, 0x2

    .line 27
    .line 28
    aget-byte v4, p0, v4

    .line 29
    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    const/16 v5, 0xbf

    .line 33
    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    move v4, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_1
    and-int/2addr v0, v4

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v3, v2

    .line 43
    :goto_2
    array-length v0, p0

    .line 44
    .line 45
    :goto_3
    if-ge v3, v0, :cond_9

    .line 46
    .line 47
    aget-byte v4, p0, v3

    .line 48
    .line 49
    and-int/lit16 v5, v4, 0x80

    .line 50
    .line 51
    if-nez v5, :cond_3

    .line 52
    goto :goto_5

    .line 53
    .line 54
    :cond_3
    and-int/lit16 v5, v4, 0xe0

    .line 55
    .line 56
    const/16 v6, 0xc0

    .line 57
    .line 58
    if-ne v5, v6, :cond_4

    .line 59
    .line 60
    add-int/lit8 v4, v3, 0x1

    .line 61
    goto :goto_4

    .line 62
    .line 63
    :cond_4
    and-int/lit16 v5, v4, 0xf0

    .line 64
    .line 65
    const/16 v7, 0xe0

    .line 66
    .line 67
    if-ne v5, v7, :cond_5

    .line 68
    .line 69
    add-int/lit8 v4, v3, 0x2

    .line 70
    goto :goto_4

    .line 71
    .line 72
    :cond_5
    and-int/lit16 v4, v4, 0xf8

    .line 73
    .line 74
    const/16 v5, 0xf0

    .line 75
    .line 76
    if-ne v4, v5, :cond_8

    .line 77
    .line 78
    add-int/lit8 v4, v3, 0x3

    .line 79
    .line 80
    :cond_6
    :goto_4
    if-ge v3, v4, :cond_7

    .line 81
    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    aget-byte v5, p0, v3

    .line 85
    and-int/2addr v5, v6

    .line 86
    .line 87
    const/16 v7, 0x80

    .line 88
    .line 89
    if-eq v5, v7, :cond_6

    .line 90
    return v2

    .line 91
    :cond_7
    :goto_5
    add-int/2addr v3, v1

    .line 92
    goto :goto_3

    .line 93
    :cond_8
    return v2

    .line 94
    :cond_9
    return v1
.end method

.method private scanHeaders(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    return-object v1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p2}, Lorg/jsoup/helper/HttpConnection$Base;->fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-object p0
.end method

.method public cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Cookie name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Cookie name must not be empty"

    .line 3
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cookie value must not be null"

    .line 4
    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public cookies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    return-object v0
.end method

.method public hasCookie(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "Cookie name must not be empty"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "Header name must not be empty"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method public hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Header name must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 4
    invoke-static {p1, v0}, Lorg/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Header name must not be empty"

    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public headers()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/Connection$Method;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Method must not be null"

    .line 2
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    return-object p0
.end method

.method public method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public multiHeaders()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Cookie name must not be empty"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Header name must not be empty"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->scanHeaders(Ljava/lang/String;)Ljava/util/Map$Entry;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    const-string v0, "URL must not be null"

    .line 2
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    return-object p0
.end method
