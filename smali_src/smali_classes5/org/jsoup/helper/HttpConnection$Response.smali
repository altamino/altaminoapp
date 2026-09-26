.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base<",
        "Lorg/jsoup/Connection$Response;",
        ">;",
        "Lorg/jsoup/Connection$Response;"
    }
.end annotation


# static fields
.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MAX_REDIRECTS:I = 0x14

.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static final xmlContentTypeRxp:Ljava/util/regex/Pattern;


# instance fields
.field private bodyStream:Ljava/io/InputStream;

.field private byteData:Ljava/nio/ByteBuffer;

.field private charset:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private executed:Z

.field private inputStreamRead:Z

.field private numRedirects:I

.field private req:Lorg/jsoup/Connection$Request;

.field private statusCode:I

.field private statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "(application|text)/\\w*\\+?xml.*"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/HttpConnection$Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    if-eqz p1, :cond_1

    .line 3
    iget v1, p1, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jsoup/helper/HttpConnection$Response;->url()Ljava/net/URL;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Too many redirects occurred trying to load URL %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private static createConnection(Lorg/jsoup/Connection$Request;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->proxy()Ljava/net/Proxy;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/net/URLConnection;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->proxy()Ljava/net/Proxy;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Ljava/net/URLConnection;

    .line 40
    .line 41
    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->method()Lorg/jsoup/Connection$Method;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->timeout()I

    .line 60
    move-result v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->timeout()I

    .line 67
    move-result v1

    .line 68
    .line 69
    div-int/lit8 v1, v1, 0x2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 73
    .line 74
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    move-object v2, v0

    .line 84
    .line 85
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->validateTLSCertificates()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lorg/jsoup/helper/HttpConnection$Response;->initUnSecureTSL()V

    .line 99
    move-object v1, v0

    .line 100
    .line 101
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 102
    .line 103
    sget-object v2, Lorg/jsoup/helper/HttpConnection$Response;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lorg/jsoup/helper/HttpConnection$Response;->getInsecureVerifier()Ljavax/net/ssl/HostnameVerifier;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->method()Lorg/jsoup/Connection$Method;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_3

    .line 124
    const/4 v1, 0x1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->cookies()Ljava/util/Map;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 135
    move-result v1

    .line 136
    .line 137
    if-lez v1, :cond_4

    .line 138
    .line 139
    const-string v1, "Cookie"

    .line 140
    .line 141
    .line 142
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->getRequestCookieString(Lorg/jsoup/Connection$Request;)Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->multiHeaders()Ljava/util/Map;

    .line 150
    move-result-object p0

    .line 151
    .line 152
    .line 153
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 154
    move-result-object p0

    .line 155
    .line 156
    .line 157
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object p0

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v1

    .line 163
    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    .line 167
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .line 172
    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    check-cast v2, Ljava/util/List;

    .line 177
    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    .line 183
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    move-result v3

    .line 185
    .line 186
    if-eqz v3, :cond_5

    .line 187
    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    check-cast v3, Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 196
    move-result-object v4

    .line 197
    .line 198
    check-cast v4, Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    return-object v0
.end method

.method private static createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    goto :goto_0
.end method

.method static execute(Lorg/jsoup/Connection$Request;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/Connection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p0

    return-object p0
.end method

.method static execute(Lorg/jsoup/Connection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Encoding"

    const-string v1, "Location"

    const-string v2, "Request must not be null"

    .line 2
    invoke-static {p0, v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "Only http & https protocols supported"

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v2

    .line 7
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot set a request body for HTTP method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 9
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_5

    if-eqz v2, :cond_4

    if-eqz v3, :cond_5

    .line 10
    :cond_4
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 11
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    move-object v2, v6

    .line 12
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 13
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->createConnection(Lorg/jsoup/Connection$Request;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 14
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 15
    invoke-virtual {v3}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {p0, v5, v2}, Lorg/jsoup/helper/HttpConnection$Response;->writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_a

    .line 17
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 18
    new-instance v5, Lorg/jsoup/helper/HttpConnection$Response;

    invoke-direct {v5, p1}, Lorg/jsoup/helper/HttpConnection$Response;-><init>(Lorg/jsoup/helper/HttpConnection$Response;)V

    .line 19
    invoke-direct {v5, v3, p1}, Lorg/jsoup/helper/HttpConnection$Response;->setupFromConnection(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$Response;)V

    iput-object p0, v5, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/Connection$Request;

    .line 20
    invoke-virtual {v5, v1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeader(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->followRedirects()Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x133

    if-eq v2, p1, :cond_8

    .line 21
    sget-object p1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 22
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 23
    invoke-interface {p0, v6}, Lorg/jsoup/Connection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    const-string p1, "Content-Type"

    .line 24
    invoke-interface {p0, p1}, Lorg/jsoup/Connection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 25
    :cond_8
    invoke-virtual {v5, v1}, Lorg/jsoup/helper/HttpConnection$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "http:/"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_9
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/helper/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    iget-object p1, v5, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    .line 30
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/jsoup/Connection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_5

    .line 32
    :cond_a
    invoke-static {p0, v5}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/Connection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p1, 0xc8

    if-lt v2, p1, :cond_c

    const/16 p1, 0x190

    if-lt v2, p1, :cond_d

    .line 33
    :cond_c
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->ignoreHttpErrors()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 34
    :cond_d
    invoke-virtual {v5}, Lorg/jsoup/helper/HttpConnection$Response;->contentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 35
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->ignoreContentType()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "text/"

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    .line 37
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    .line 38
    :cond_e
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v1, "Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml"

    .line 39
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    .line 40
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 41
    instance-of p1, p0, Lorg/jsoup/helper/HttpConnection$Request;

    if-eqz p1, :cond_10

    move-object p1, p0

    check-cast p1, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection$Request;->access$100(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 42
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection$Request;

    :cond_10
    iget-object p1, v5, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 44
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object p1

    sget-object v1, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    if-eq p1, v1, :cond_14

    iput-object v6, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 45
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_7
    iput-object p1, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    const-string p1, "gzip"

    .line 46
    invoke-virtual {v5, v0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 47
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    iget-object v0, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_8

    :cond_12
    const-string p1, "deflate"

    .line 48
    invoke-virtual {v5, v0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 49
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    iget-object v0, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p1, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    :cond_13
    :goto_8
    iget-object p1, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 50
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->maxBodySize()I

    move-result v0

    const v1, 0x8000

    invoke-static {p1, v1, v0}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p1

    .line 51
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->timeout()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v7, v8, v0, v1}, Lorg/jsoup/internal/ConstrainableInputStream;->timeout(JJ)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    iput-object p0, v5, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_9

    .line 52
    :cond_14
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->emptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v5, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    iput-boolean v4, v5, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    return-object v5

    .line 53
    :cond_15
    :try_start_1
    new-instance p1, Lorg/jsoup/HttpStatusException;

    const-string v0, "HTTP error fetching URL"

    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v2, p0}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :goto_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 55
    throw p0
.end method

.method private static getInsecureVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/jsoup/helper/HttpConnection$Response$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection$Response$1;-><init>()V

    .line 6
    return-object v0
.end method

.method private static getRequestCookieString(Lorg/jsoup/Connection$Request;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/helper/StringUtil;->stringBuilder()Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->cookies()Ljava/util/Map;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    const-string v3, "; "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const/16 v3, 0x3d

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method private static declared-synchronized initUnSecureTSL()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lorg/jsoup/helper/HttpConnection$Response;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 11
    .line 12
    new-instance v2, Lorg/jsoup/helper/HttpConnection$Response$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Lorg/jsoup/helper/HttpConnection$Response$2;-><init>()V

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput-object v2, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :try_start_1
    const-string v2, "SSL"

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    new-instance v3, Ljava/security/SecureRandom;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    sput-object v1, Lorg/jsoup/helper/HttpConnection$Response;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v2, "Can\'t create unsecure trust manager"

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0

    .line 54
    throw v1
.end method

.method private prepareByteData()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 3
    .line 4
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 14
    .line 15
    const-string v1, "Request has already been read (with .parse())"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/Connection$Request;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Lorg/jsoup/Connection$Request;->maxBodySize()I

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .line 44
    :try_start_1
    new-instance v2, Lorg/jsoup/UncheckedIOException;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 48
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    :goto_0
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 54
    throw v1

    .line 55
    :cond_0
    :goto_1
    return-void
.end method

.method private safeClose()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :catch_0
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    .line 14
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method private static serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/jsoup/helper/StringUtil;->stringBuilder()Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "://"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "?"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move v0, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x1

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v4

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    check-cast v4, Lorg/jsoup/Connection$KeyVal;

    .line 77
    .line 78
    .line 79
    invoke-interface {v4}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    .line 80
    move-result v5

    .line 81
    .line 82
    const-string v6, "InputStream data not supported in URL query string."

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const/16 v5, 0x26

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    move v0, v3

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-interface {v4}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    const-string v6, "UTF-8"

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const/16 v5, 0x3d

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-interface {v4}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_2
    new-instance v0, Ljava/net/URL;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 137
    .line 138
    .line 139
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 140
    move-result-object p0

    .line 141
    .line 142
    .line 143
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 144
    return-void
.end method

.method private static setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const-string v0, "Content-Type"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Base;->hasHeader(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->access$200(Lorg/jsoup/Connection$Request;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v3, "multipart/form-data; boundary="

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v2, "application/x-www-form-urlencoded; charset="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v0, v1}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 65
    :goto_0
    const/4 v1, 0x0

    .line 66
    :goto_1
    return-object v1
.end method

.method private setupFromConnection(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection$Response;->createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->processResponseHeaders(Ljava/util/Map;)V

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Lorg/jsoup/Connection$Base;->cookies()Ljava/util/Map;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    check-cast p2, Ljava/util/Map$Entry;

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->hasCookie(Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-nez v0, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    check-cast p2, Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private static writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    const-string v2, "--"

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    .line 46
    const-string v2, "\r\n"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    .line 51
    const-string v3, "Content-Disposition: form-data; name=\""

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lorg/jsoup/helper/HttpConnection;->access$300(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    .line 67
    const-string v3, "\""

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    .line 74
    move-result v3

    .line 75
    .line 76
    const-string v4, "\r\n\r\n"

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    const-string v3, "; filename=\""

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lorg/jsoup/helper/HttpConnection;->access$300(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    .line 96
    const-string v3, "\"\r\nContent-Type: "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    if-eqz v3, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_0
    const-string v3, "application/octet-stream"

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->inputStream()Ljava/io/InputStream;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-static {v0, p1}, Lorg/jsoup/helper/DataUtil;->crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 132
    goto :goto_2

    .line 133
    .line 134
    .line 135
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 156
    goto :goto_5

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    .line 165
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 170
    goto :goto_5

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object p1

    .line 175
    const/4 p2, 0x1

    .line 176
    .line 177
    .line 178
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 188
    .line 189
    if-nez p2, :cond_5

    .line 190
    .line 191
    const/16 v2, 0x26

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 195
    goto :goto_4

    .line 196
    :cond_5
    const/4 p2, 0x0

    .line 197
    .line 198
    .line 199
    :goto_4
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    .line 207
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    .line 213
    const/16 v2, 0x3d

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    .line 224
    move-result-object v2

    .line 225
    .line 226
    .line 227
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 232
    goto :goto_3

    .line 233
    .line 234
    .line 235
    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 236
    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "UTF-8"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 44
    return-object v0
.end method

.method public bodyAsBytes()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public bodyStream()Ljava/io/BufferedInputStream;
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 3
    .line 4
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 10
    .line 11
    const-string v1, "Request has already been read"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 18
    .line 19
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/Connection$Request;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lorg/jsoup/Connection$Request;->maxBodySize()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    const v2, 0x8000

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public bufferUp()Lorg/jsoup/Connection$Response;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 4
    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic charset(Ljava/lang/String;)Lorg/jsoup/Connection$Response;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1

    return-object p1
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->cookies()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->method()Lorg/jsoup/Connection$Method;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->multiHeaders()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public parse()Lorg/jsoup/nodes/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 3
    .line 4
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    .line 24
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 28
    .line 29
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 30
    .line 31
    const-string v1, "Input stream already read and parsed, cannot re-read."

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 35
    .line 36
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/Connection$Request;

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Lorg/jsoup/Connection$Request;->parser()Lorg/jsoup/parser/Parser;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 69
    const/4 v1, 0x1

    .line 70
    .line 71
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 75
    return-object v0
.end method

.method processResponseHeaders(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/util/List;

    .line 36
    .line 37
    const-string v2, "Set-Cookie"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    if-nez v3, :cond_3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_3
    new-instance v4, Lorg/jsoup/parser/TokenQueue;

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v3}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    const-string v3, "="

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    const-string v5, ";"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 91
    move-result v5

    .line 92
    .line 93
    if-lez v5, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v2

    .line 106
    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    return-void
.end method

.method public statusCode()I
    .locals 1

    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    return v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
