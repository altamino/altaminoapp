.class public Lcom/bytedance/tea/common/utility/NetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;,
        Lcom/bytedance/tea/common/utility/NetworkUtils$CompressType;,
        Lcom/bytedance/tea/common/utility/NetworkUtils$a;
    }
.end annotation


# static fields
.field private static a:Lcom/bytedance/tea/common/utility/NetworkUtils$a;


# direct methods
.method public static a(Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 7
    :try_start_0
    sget-object v1, Lcom/bytedance/tea/common/utility/NetworkUtils$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mobile"

    goto :goto_0

    :cond_1
    const-string v0, "4g"

    goto :goto_0

    :cond_2
    const-string v0, "3g"

    goto :goto_0

    :cond_3
    const-string v0, "2g"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "ISO-8859-1"

    .line 19
    :goto_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 10
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v1, p1}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 13
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/bytedance/tea/common/utility/NetworkUtils;->a:Lcom/bytedance/tea/common/utility/NetworkUtils$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Lcom/bytedance/tea/common/utility/NetworkUtils$a;->a()Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    if-eq v1, v3, :cond_2

    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils;->a:Lcom/bytedance/tea/common/utility/NetworkUtils$a;

    .line 5
    invoke-interface {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils$a;->a()Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sget-object v1, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_3

    move v0, v2

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 51
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "GET"

    const/4 v2, 0x0

    .line 22
    invoke-static {p0, v1, p1, v0, v2}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "gzip"

    .line 23
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_1

    .line 25
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :goto_1
    const-string p2, "Accept-Encoding"

    .line 31
    invoke-virtual {p0, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 32
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 33
    array-length p2, p1

    if-lez p2, :cond_3

    .line 34
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 35
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 36
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 37
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_6

    .line 39
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 42
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 44
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    goto :goto_2

    .line 45
    :cond_4
    invoke-static {p1}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    :goto_2
    if-eqz p1, :cond_5

    .line 46
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    return-object p2

    .line 47
    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    .line 48
    new-instance p2, Lcom/bytedance/tea/common/utility/HttpResponseException;

    invoke-direct {p2, p1, p0}, Lcom/bytedance/tea/common/utility/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 49
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "request method is not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "connectivity"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 19
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    :catch_0
    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string/jumbo v0, "wifi"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/bytedance/tea/common/utility/NetworkUtils;->a:Lcom/bytedance/tea/common/utility/NetworkUtils$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils$a;->a()Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils;->a:Lcom/bytedance/tea/common/utility/NetworkUtils$a;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils$a;->a()Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    if-ne v1, v0, :cond_2

    .line 48
    .line 49
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 50
    return-object p0

    .line 51
    .line 52
    :cond_2
    if-nez v0, :cond_3

    .line 53
    .line 54
    .line 55
    const-string/jumbo v0, "phone"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 65
    move-result p0

    .line 66
    .line 67
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 69
    .line 70
    :pswitch_0
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 71
    return-object p0

    .line 72
    .line 73
    :pswitch_1
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 74
    return-object p0

    .line 75
    .line 76
    :pswitch_2
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 77
    return-object p0

    .line 78
    .line 79
    :cond_3
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 80
    return-object p0

    .line 81
    .line 82
    :cond_4
    :goto_0
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    return-object p0

    .line 84
    .line 85
    :catchall_0
    sget-object p0, Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 86
    return-object p0

    .line 87
    .line 88
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->d(Landroid/content/Context;)Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Lcom/bytedance/tea/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 p0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Ljava/net/NetworkInterface;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    array-length v3, v2

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    array-length v4, v2

    .line 34
    const/4 v5, 0x0

    .line 35
    move v6, v5

    .line 36
    :goto_1
    const/4 v7, 0x1

    .line 37
    .line 38
    if-ge v6, v4, :cond_2

    .line 39
    .line 40
    aget-byte v8, v2, v6

    .line 41
    .line 42
    const-string v9, "%02X:"

    .line 43
    .line 44
    new-array v7, v7, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 48
    move-result-object v8

    .line 49
    .line 50
    aput-object v8, v7, v5

    .line 51
    .line 52
    .line 53
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v7

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 64
    move-result v2

    .line 65
    .line 66
    if-lez v2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 70
    move-result v2

    .line 71
    sub-int/2addr v2, v7

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    const-string/jumbo v3, "wlan0"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    if-eqz v1, :cond_0

    .line 92
    return-object v2

    .line 93
    :catch_0
    :cond_4
    return-object p0
.end method
