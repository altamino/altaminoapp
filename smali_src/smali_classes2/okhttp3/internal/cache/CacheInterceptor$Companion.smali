.class public final Lokhttp3/internal/cache/CacheInterceptor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$combine(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    .line 13
    :goto_0
    if-ge v3, v1, :cond_3

    .line 14
    .line 15
    add-int/lit8 v4, v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    const-string v6, "Warning"

    .line 26
    const/4 v7, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {v6, v5, v7}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 30
    move-result v6

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    const/4 v6, 0x2

    .line 34
    const/4 v7, 0x0

    .line 35
    .line 36
    const-string v8, "1"

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v8, v2, v6, v7}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 40
    move-result v6

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-direct {p0, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isContentSpecificHeader(Ljava/lang/String;)Z

    .line 47
    move-result v6

    .line 48
    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    .line 53
    move-result v6

    .line 54
    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0, v5, v3}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 65
    :cond_2
    :goto_1
    move v3, v4

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    .line 70
    move-result p1

    .line 71
    .line 72
    :goto_2
    if-ge v2, p1, :cond_5

    .line 73
    .line 74
    add-int/lit8 v1, v2, 0x1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v3}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isContentSpecificHeader(Ljava/lang/String;)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v3}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    .line 88
    move-result v4

    .line 89
    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3, v2}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 98
    :cond_4
    move v2, v1

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method private final isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "Content-Length"

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Content-Encoding"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "Content-Type"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :cond_1
    :goto_0
    return v1
.end method

.method private final isEndToEnd(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "Connection"

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Keep-Alive"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "Proxy-Authenticate"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "Proxy-Authorization"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v0, "TE"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const-string v0, "Trailers"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    const-string v0, "Transfer-Encoding"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    const-string v0, "Upgrade"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1, v1}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1
.end method

.method private final stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 23
    move-result-object p1

    .line 24
    :cond_1
    return-object p1
.end method
