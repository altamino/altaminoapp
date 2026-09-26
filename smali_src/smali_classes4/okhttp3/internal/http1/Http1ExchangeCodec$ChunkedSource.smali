.class final Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,497:1\n1#2:498\n*E\n"
.end annotation


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

.field private final url:Lokhttp3/HttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V
    .locals 1
    .param p1    # Lokhttp3/internal/http1/Http1ExchangeCodec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "url"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 16
    .line 17
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->url:Lokhttp3/HttpUrl;

    .line 18
    .line 19
    const-wide/16 p1, -0x1

    .line 20
    .line 21
    iput-wide p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 25
    return-void
.end method

.method private final readChunkSize()V
    .locals 7

    .line 1
    .line 2
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getSource$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getSource$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 30
    .line 31
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getSource$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 50
    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    cmp-long v1, v1, v3

    .line 54
    .line 55
    if-ltz v1, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    .line 62
    if-lez v1, :cond_1

    .line 63
    .line 64
    const-string v1, ";"

    .line 65
    const/4 v5, 0x2

    .line 66
    const/4 v6, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1, v2, v5, v6}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 70
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_1
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 78
    .line 79
    cmp-long v0, v0, v3

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iput-boolean v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 84
    .line 85
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getHeadersReader$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/http1/HeadersReader;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$setTrailers$p(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/Headers;)V

    .line 97
    .line 98
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getClient$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/OkHttpClient;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->url:Lokhttp3/HttpUrl;

    .line 112
    .line 113
    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getTrailers$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete()V

    .line 127
    :cond_2
    return-void

    .line 128
    .line 129
    :cond_3
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    const-string v3, "expected chunk size and optional extensions but was \""

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    iget-wide v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const/16 v0, 0x22

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 160
    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .line 162
    :goto_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 170
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->getClosed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete()V

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->setClosed(Z)V

    .line 38
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sink"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v2, p2, v0

    .line 10
    .line 11
    if-ltz v2, :cond_5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->getClosed()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 22
    .line 23
    const-wide/16 v3, -0x1

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    return-wide v3

    .line 27
    .line 28
    :cond_0
    iget-wide v5, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 29
    .line 30
    cmp-long v0, v5, v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    cmp-long v0, v5, v3

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->readChunkSize()V

    .line 40
    .line 41
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    return-wide v3

    .line 45
    .line 46
    :cond_2
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 50
    move-result-wide p2

    .line 51
    .line 52
    .line 53
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->read(Lokio/Buffer;J)J

    .line 54
    move-result-wide p1

    .line 55
    .line 56
    cmp-long p3, p1, v3

    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    .line 60
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 61
    sub-long/2addr v0, p1

    .line 62
    .line 63
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 64
    return-wide p1

    .line 65
    .line 66
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    .line 74
    .line 75
    new-instance p1, Ljava/net/ProtocolException;

    .line 76
    .line 77
    const-string p2, "unexpected end of stream"

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete()V

    .line 84
    throw p1

    .line 85
    .line 86
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p2, "closed"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_5
    const-string p1, "byteCount < 0: "

    .line 99
    .line 100
    .line 101
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p2
.end method
