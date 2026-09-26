.class public final Lokhttp3/internal/http1/Http1ExchangeCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,497:1\n1#2:498\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_CHUNK_YET:J = -0x1L

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final client:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final connection:Lokhttp3/internal/connection/RealConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headersReader:Lokhttp3/internal/http1/HeadersReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sink:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final source:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:I

.field private trailers:Lokhttp3/Headers;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->Companion:Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/internal/connection/RealConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "connection"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "sink"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 23
    .line 24
    iput-object p3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    .line 25
    .line 26
    iput-object p4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 27
    .line 28
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p3}, Lokhttp3/internal/http1/HeadersReader;-><init>(Lokio/BufferedSource;)V

    .line 32
    .line 33
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headersReader:Lokhttp3/internal/http1/HeadersReader;

    .line 34
    return-void
.end method

.method public static final synthetic access$detachTimeout(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokio/ForwardingTimeout;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->detachTimeout(Lokio/ForwardingTimeout;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getClient$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHeadersReader$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/http1/HeadersReader;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headersReader:Lokhttp3/internal/http1/HeadersReader;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSink$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSink;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getState$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getTrailers$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setState$p(Lokhttp3/internal/http1/Http1ExchangeCodec;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setTrailers$p(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/Headers;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    .line 3
    return-void
.end method

.method private final detachTimeout(Lokio/ForwardingTimeout;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 16
    return-void
.end method

.method private final isChunked(Lokhttp3/Request;)Z
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 2
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final isChunked(Lokhttp3/Response;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 1
    invoke-static {p1, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final newChunkedSink()Lokio/Sink;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 9
    .line 10
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    const-string v1, "state: "

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v1
.end method

.method private final newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    const/4 v0, 0x5

    .line 7
    .line 8
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 9
    .line 10
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    const-string p1, "state: "

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0
.end method

.method private final newFixedLengthSource(J)Lokio/Source;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    const/4 v0, 0x5

    .line 7
    .line 8
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 9
    .line 10
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    const-string p1, "state: "

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p2
.end method

.method private final newKnownLengthSink()Lokio/Sink;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 9
    .line 10
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    const-string v1, "state: "

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v1
.end method

.method private final newUnknownLengthSource()Lokio/Source;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    const/4 v0, 0x5

    .line 7
    .line 8
    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges$okhttp()V

    .line 16
    .line 17
    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_0
    const-string v1, "state: "

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 8
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 2
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 25
    .line 26
    const-string p2, "Duplex connections are not supported for HTTP/1"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->isChunked(Lokhttp3/Request;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSink()Lokio/Sink;

    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    cmp-long p1, p2, v0

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newKnownLengthSink()Lokio/Sink;

    .line 51
    move-result-object p1

    .line 52
    :goto_1
    return-object p1

    .line 53
    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1
.end method

.method public finishRequest()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 6
    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 6
    return-void
.end method

.method public getConnection()Lokhttp3/internal/connection/RealConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openResponseBodySource(Lokhttp3/Response;)Lokio/Source;
    .locals 4
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "response"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->isChunked(Lokhttp3/Response;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;

    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    const-wide/16 v2, -0x1

    .line 44
    .line 45
    cmp-long p1, v0, v2

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newUnknownLengthSource()Lokio/Source;

    .line 56
    move-result-object p1

    .line 57
    :goto_0
    return-object p1
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-string p1, "state: "

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    .line 31
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headersReader:Lokhttp3/internal/http1/HeadersReader;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lokhttp3/internal/http1/HeadersReader;->readLine()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    new-instance v1, Lokhttp3/Response$Builder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 47
    .line 48
    iget-object v3, v0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iget v3, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iget-object v3, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iget-object v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headersReader:Lokhttp3/internal/http1/HeadersReader;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    const/16 v3, 0x64

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 81
    .line 82
    if-ne p1, v3, :cond_2

    .line 83
    const/4 v1, 0x0

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_2
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 89
    .line 90
    if-ne p1, v3, :cond_3

    .line 91
    .line 92
    iput v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 p1, 0x4

    .line 95
    .line 96
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    return-object v1

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    new-instance v1, Ljava/io/IOException;

    .line 120
    .line 121
    const-string v2, "unexpected end of stream on "

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    throw v1
.end method

.method public reportedContentLength(Lokhttp3/Response;)J
    .locals 2
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "response"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->isChunked(Lokhttp3/Response;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0
.end method

.method public final skipConnectBody(Lokhttp3/Response;)V
    .locals 4
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "response"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    const-wide/16 v2, -0x1

    .line 12
    .line 13
    cmp-long p1, v0, v2

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    const v0, 0x7fffffff

    .line 24
    .line 25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lokio/Source;->close()V

    .line 32
    return-void
.end method

.method public trailers()Lokhttp3/Headers;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    .line 12
    :cond_0
    return-object v0

    .line 13
    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "too early; can\'t read the trailers yet"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public final writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "headers"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "requestLine"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const-string v0, "\r\n"

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 29
    move-result p2

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    :goto_0
    if-ge v1, p2, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    iget-object v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    const-string v4, ": "

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-interface {v3, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 62
    move v1, v2

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 69
    const/4 p1, 0x1

    .line 70
    .line 71
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 72
    return-void

    .line 73
    .line 74
    :cond_1
    const-string p1, "state: "

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p2
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 3
    .param p1    # Lokhttp3/Request;
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
    sget-object v0, Lokhttp3/internal/http/RequestLine;->INSTANCE:Lokhttp3/internal/http/RequestLine;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "connection.route().proxy.type()"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 40
    return-void
.end method
