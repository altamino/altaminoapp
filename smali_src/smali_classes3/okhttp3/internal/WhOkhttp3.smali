.class public Lokhttp3/internal/WhOkhttp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lokhttp3/internal/WhOkhttp3;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    const-string v0, "http.agent"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    .line 19
    :goto_0
    if-ge v4, v2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v5

    .line 24
    .line 25
    const/16 v6, 0x1f

    .line 26
    .line 27
    if-le v5, v6, :cond_1

    .line 28
    .line 29
    const/16 v6, 0x7f

    .line 30
    .line 31
    if-lt v5, v6, :cond_0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 38
    .line 39
    new-array v6, v6, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    aput-object v5, v6, v3

    .line 46
    .line 47
    const-string v5, "\\u%04x"

    .line 48
    .line 49
    .line 50
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method


# virtual methods
.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/internal/WhOkhttp3;->create(Lcom/narvii/app/NVContext;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/narvii/app/NVContext;)Lokhttp3/OkHttpClient;
    .locals 7

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "-----BEGIN CERTIFICATE-----\nMIIB6DCCAVGgAwIBAgIJAL9pI39w8YJeMA0GCSqGSIb3DQEBCwUAMA0xCzAJBgNV\nBAYTAlVTMB4XDTE3MDQxMjA5MjQ0OVoXDTQ0MDgyODA5MjQ0OVowDTELMAkGA1UE\nBhMCVVMwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMcAbjmnOEnffXYFzqjV\n3Fo1OJa01JL2fvMYlD3MRePa7PA1QYVNnExs0Kh2KiWz+IvllwSyUETu0HYwIV4D\n8YTeuv4683KsZA/yvmPp00Rp27t7NJjOpCciQCFBdCsSwa7dOxxDYLQz+Uf1jyKQ\nkeA9ljEOZG9q2u0yOugCVEX/AgMBAAGjUDBOMB0GA1UdDgQWBBROUCykxXUZzWTM\n4t6n1raxMvGDVjAfBgNVHSMEGDAWgBROUCykxXUZzWTM4t6n1raxMvGDVjAMBgNV\nHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4GBAMIAOdi+eNYkRkKBgkCWO0pdER+O\nmwbGJt3F3LZYDdWIYchHEosaEJMtcpQNZsjuk2VLdvKKFeu3F5RWgTmKJMWBZ6l3\nvj65Ez5tb56DsjgqNiM0fBzVbzr8mCjkcLXTj9oDo7lRQlQqxH3HqkHET54GFhA/\n103oh9zHRixwlcmI\n-----END CERTIFICATE-----"

    const-string v1, "X.509"

    .line 2
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "US-ASCII"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "ca"

    .line 6
    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 7
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    .line 9
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 11
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 13
    new-instance v2, Lokhttp3/internal/WhOkhttp3$1;

    invoke-direct {v2, p0}, Lokhttp3/internal/WhOkhttp3$1;-><init>(Lokhttp3/internal/WhOkhttp3;)V

    .line 14
    new-instance v3, Lokhttp3/internal/WhOkhttp3$2;

    invoke-direct {v3, p0}, Lokhttp3/internal/WhOkhttp3$2;-><init>(Lokhttp3/internal/WhOkhttp3;)V

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v5, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v5, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v5, Lokhttp3/internal/WhOkhttp3$3;

    invoke-direct {v5, p0}, Lokhttp3/internal/WhOkhttp3$3;-><init>(Lokhttp3/internal/WhOkhttp3;)V

    .line 19
    new-instance v6, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v6}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 20
    invoke-virtual {v6, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 24
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhOkhttp3;->destroy(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhOkhttp3;->pause(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhOkhttp3;->resume(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhOkhttp3;->start(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/WhOkhttp3;->stop(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    return-void
.end method
