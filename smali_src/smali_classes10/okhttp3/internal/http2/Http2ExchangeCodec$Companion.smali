.class public final Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2ExchangeCodec;
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
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final http2HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 7
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 15
    move-result v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x4

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 23
    .line 24
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 37
    .line 38
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    .line 39
    .line 40
    sget-object v4, Lokhttp3/internal/http/RequestLine;->INSTANCE:Lokhttp3/internal/http/RequestLine;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    const-string v2, "Host"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    new-instance v3, Lokhttp3/internal/http2/Header;

    .line 65
    .line 66
    sget-object v4, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v4, v2}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 75
    .line 76
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3, p1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 94
    move-result p1

    .line 95
    const/4 v2, 0x0

    .line 96
    .line 97
    :goto_0
    if-ge v2, p1, :cond_3

    .line 98
    .line 99
    add-int/lit8 v3, v2, 0x1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    .line 107
    const-string v6, "US"

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lokhttp3/internal/http2/Http2ExchangeCodec;->access$getHTTP_2_SKIPPED_REQUEST_HEADERS$cp()Ljava/util/List;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    .line 126
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 127
    move-result v5

    .line 128
    .line 129
    if-eqz v5, :cond_1

    .line 130
    .line 131
    const-string v5, "te"

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    move-result v5

    .line 136
    .line 137
    if-eqz v5, :cond_2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    const-string v6, "trailers"

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    move-result v5

    .line 148
    .line 149
    if-eqz v5, :cond_2

    .line 150
    .line 151
    :cond_1
    new-instance v5, Lokhttp3/internal/http2/Header;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-direct {v5, v4, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    move v2, v3

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    return-object v1
.end method

.method public final readHttp2HeadersList(Lokhttp3/Headers;Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .locals 7
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "headerBlock"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "protocol"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v3, v1, :cond_2

    .line 24
    .line 25
    add-int/lit8 v4, v3, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    const-string v6, ":status"

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    sget-object v2, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    .line 44
    .line 45
    const-string v5, "HTTP/1.1 "

    .line 46
    .line 47
    .line 48
    invoke-static {v5, v3}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    .line 53
    move-result-object v2

    .line 54
    :cond_0
    :goto_1
    move v3, v4

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {}, Lokhttp3/internal/http2/Http2ExchangeCodec;->access$getHTTP_2_SKIPPED_RESPONSE_HEADERS$cp()Ljava/util/List;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    .line 62
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result v6

    .line 64
    .line 65
    if-nez v6, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5, v3}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    if-eqz v2, :cond_3

    .line 72
    .line 73
    new-instance p1, Lokhttp3/Response$Builder;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1}, Lokhttp3/Response$Builder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iget p2, v2, Lokhttp3/internal/http/StatusLine;->code:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iget-object p2, v2, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    .line 103
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    .line 104
    .line 105
    const-string p2, "Expected \':status\' header not present"

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1
.end method
