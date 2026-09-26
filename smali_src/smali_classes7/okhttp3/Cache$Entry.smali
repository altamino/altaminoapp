.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$Entry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/Cache$Entry$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RECEIVED_MILLIS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SENT_MILLIS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final code:I

.field private final handshake:Lokhttp3/Handshake;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final protocol:Lokhttp3/Protocol;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final responseHeaders:Lokhttp3/Headers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sentRequestMillis:J

.field private final url:Lokhttp3/HttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final varyHeaders:Lokhttp3/Headers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lokhttp3/Cache$Entry$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokhttp3/Cache$Entry$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lokhttp3/Cache$Entry;->Companion:Lokhttp3/Cache$Entry$Companion;

    .line 9
    .line 10
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "-Sent-Millis"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    sput-object v1, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "-Received-Millis"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 44
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$Companion;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 47
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$Entry;->code:I

    .line 48
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 50
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 51
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 8
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rawSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v2, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_7

    iput-object v2, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 5
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 6
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 7
    sget-object v2, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v2, v0}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 8
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 9
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 10
    sget-object v1, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 11
    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    iput-object v2, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 12
    iget v2, v1, Lokhttp3/internal/http/StatusLine;->code:I

    iput v2, p0, Lokhttp3/Cache$Entry;->code:I

    .line 13
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 14
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 15
    sget-object v2, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v2, v0}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 16
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    :cond_1
    sget-object v2, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 20
    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-wide/16 v6, 0x0

    if-nez v3, :cond_2

    move-wide v2, v6

    goto :goto_2

    .line 21
    :cond_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    if-nez v5, :cond_3

    goto :goto_3

    .line 22
    :cond_3
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_3
    iput-wide v6, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 23
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 24
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 25
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_5

    .line 27
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 28
    sget-object v3, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v3, v1}, Lokhttp3/CipherSuite$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    .line 29
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 30
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v4

    .line 31
    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 32
    sget-object v5, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lokhttp3/TlsVersion$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_4

    .line 33
    :cond_4
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 34
    :goto_4
    sget-object v5, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    invoke-virtual {v5, v0, v1, v3, v4}, Lokhttp3/Handshake$Companion;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    goto :goto_5

    .line 35
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object v2, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 36
    :goto_5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {p1, v2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 38
    :cond_7
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cache corruption for "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const-string v2, "cache corruption"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 40
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_6
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final isHttps()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "https"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    :goto_0
    if-ge v3, v0, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    new-instance v5, Lokio/Buffer;

    .line 37
    .line 38
    .line 39
    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 40
    .line 41
    sget-object v6, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v4}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    return-object v2

    .line 67
    .line 68
    :goto_1
    new-instance v0, Ljava/io/IOException;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0
.end method

.method private final writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
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
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Ljava/security/cert/Certificate;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 34
    move-result-object v3

    .line 35
    .line 36
    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 37
    .line 38
    const-string v0, "bytes"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x3

    .line 45
    const/4 v7, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static/range {v2 .. v7}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    return-void

    .line 65
    .line 66
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p2
.end method


# virtual methods
.method public final matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 2
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "response"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    .line 37
    .line 38
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2, v1, p1}, Lokhttp3/Cache$Companion;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    return p1
.end method

.method public final response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .locals 5
    .param p1    # Lokhttp3/internal/cache/DiskLruCache$Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "snapshot"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 8
    .line 9
    const-string v1, "Content-Type"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 16
    .line 17
    const-string v2, "Content-Length"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Lokhttp3/Request$Builder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 27
    .line 28
    iget-object v3, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget-object v3, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    new-instance v3, Lokhttp3/Response$Builder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    iget v3, p0, Lokhttp3/Cache$Entry;->code:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    iget-object v3, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    new-instance v3, Lokhttp3/Cache$CacheResponseBody;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, p1, v0, v1}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iget-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 113
    move-result-object p1

    .line 114
    return-object p1
.end method

.method public final writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7
    .param p1    # Lokhttp3/internal/cache/DiskLruCache$Editor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "editor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 30
    .line 31
    iget-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 39
    .line 40
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 44
    move-result v1

    .line 45
    int-to-long v3, v1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 53
    .line 54
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 58
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    move v3, v0

    .line 60
    .line 61
    :goto_0
    const-string v4, ": "

    .line 62
    .line 63
    if-ge v3, v1, :cond_0

    .line 64
    .line 65
    add-int/lit8 v5, v3, 0x1

    .line 66
    .line 67
    :try_start_1
    iget-object v6, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-interface {v6, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    iget-object v6, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 93
    move v3, v5

    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_0
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    .line 100
    .line 101
    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 102
    .line 103
    iget v5, p0, Lokhttp3/Cache$Entry;->code:I

    .line 104
    .line 105
    iget-object v6, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v3, v5, v6}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 120
    .line 121
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 125
    move-result v1

    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x2

    .line 128
    int-to-long v5, v1

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v5, v6}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 136
    .line 137
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 141
    move-result v1

    .line 142
    .line 143
    :goto_1
    if-ge v0, v1, :cond_1

    .line 144
    .line 145
    add-int/lit8 v3, v0, 0x1

    .line 146
    .line 147
    iget-object v5, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 155
    move-result-object v5

    .line 156
    .line 157
    .line 158
    invoke-interface {v5, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    iget-object v6, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-interface {v5, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 173
    move v0, v3

    .line 174
    goto :goto_1

    .line 175
    .line 176
    :cond_1
    sget-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    iget-wide v5, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 187
    .line 188
    .line 189
    invoke-interface {v0, v5, v6}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 194
    .line 195
    sget-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    iget-wide v3, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 213
    .line 214
    .line 215
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_2

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 222
    .line 223
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 242
    .line 243
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 251
    .line 252
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    .line 259
    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 260
    .line 261
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    .line 276
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 277
    .line 278
    :cond_2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v0, 0x0

    .line 280
    .line 281
    .line 282
    invoke-static {p1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 283
    return-void

    .line 284
    :goto_2
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    :catchall_1
    move-exception v1

    .line 286
    .line 287
    .line 288
    invoke-static {p1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 289
    throw v1
.end method
