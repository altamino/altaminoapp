.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$PartSource;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final afterBoundaryOptions:Lokio/Options;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final boundary:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private final crlfDashDashBoundary:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentPart:Lokhttp3/MultipartReader$PartSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dashDashBoundary:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private noMoreParts:Z

.field private partCount:I

.field private final source:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lokhttp3/MultipartReader$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lokhttp3/MultipartReader;->Companion:Lokhttp3/MultipartReader$Companion;

    .line 9
    .line 10
    sget-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    new-array v1, v1, [Lokio/ByteString;

    .line 14
    .line 15
    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 16
    .line 17
    const-string v3, "\r\n"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    aput-object v3, v1, v4

    .line 25
    .line 26
    const-string v3, "--"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x1

    .line 32
    .line 33
    aput-object v3, v1, v4

    .line 34
    .line 35
    const-string v3, " "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x2

    .line 41
    .line 42
    aput-object v3, v1, v4

    .line 43
    .line 44
    const-string v3, "\t"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x3

    .line 50
    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->of([Lokio/ByteString;)Lokio/Options;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    sput-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lokio/Options;

    .line 58
    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 2
    .param p1    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/safedk/android/internal/partials/OkHttpNetworkBridge;->retrofitExceptionCatchingRequestBody_source(Lokhttp3/ResponseBody;)Lokio/BufferedSource;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lokhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    invoke-direct {p0, v0, p1}, Lokhttp3/MultipartReader;-><init>(Lokio/BufferedSource;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lokio/BufferedSource;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    iput-object p2, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 2
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    const-string v0, "--"

    .line 3
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lokio/ByteString;

    .line 6
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    const-string v0, "\r\n--"

    .line 7
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    return-void
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()Lokio/Options;
    .locals 1

    sget-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lokio/Options;

    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 3
    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 3
    .line 4
    iget-object v1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 13
    .line 14
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;)J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    const-wide/16 v2, -0x1

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    iget-object v2, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    .line 46
    move-result v2

    .line 47
    int-to-long v2, v2

    .line 48
    sub-long/2addr v0, v2

    .line 49
    .line 50
    const-wide/16 v2, 0x1

    .line 51
    add-long/2addr v0, v2

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 55
    move-result-wide p1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 60
    move-result-wide p1

    .line 61
    :goto_0
    return-wide p1
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 12
    .line 13
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 17
    return-void
.end method

.method public final nextPart()Lokhttp3/MultipartReader$Part;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-object v2

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 21
    .line 22
    iget-object v5, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lokio/ByteString;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v3, v4, v5}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 31
    .line 32
    iget-object v3, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lokio/ByteString;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 36
    move-result v3

    .line 37
    int-to-long v3, v3

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    :goto_0
    const-wide/16 v5, 0x2000

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v5, v6}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 47
    move-result-wide v5

    .line 48
    .line 49
    cmp-long v0, v5, v3

    .line 50
    .line 51
    if-nez v0, :cond_8

    .line 52
    .line 53
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 54
    .line 55
    iget-object v3, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lokio/ByteString;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 59
    move-result v3

    .line 60
    int-to-long v3, v3

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 64
    :goto_1
    const/4 v0, 0x0

    .line 65
    .line 66
    :goto_2
    iget-object v3, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 67
    .line 68
    sget-object v4, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lokio/Options;

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v4}, Lokio/BufferedSource;->select(Lokio/Options;)I

    .line 72
    move-result v3

    .line 73
    const/4 v4, -0x1

    .line 74
    .line 75
    const-string v5, "unexpected characters after boundary"

    .line 76
    .line 77
    if-eq v3, v4, :cond_7

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    if-eq v3, v1, :cond_3

    .line 82
    const/4 v4, 0x2

    .line 83
    .line 84
    if-eq v3, v4, :cond_2

    .line 85
    const/4 v4, 0x3

    .line 86
    .line 87
    if-eq v3, v4, :cond_2

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v0, v1

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_3
    if-nez v0, :cond_5

    .line 93
    .line 94
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iput-boolean v1, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    .line 99
    return-object v2

    .line 100
    .line 101
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    .line 102
    .line 103
    const-string v1, "expected at least 1 part"

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0

    .line 108
    .line 109
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0

    .line 114
    .line 115
    :cond_6
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 116
    add-int/2addr v0, v1

    .line 117
    .line 118
    iput v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 119
    .line 120
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    .line 121
    .line 122
    iget-object v1, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(Lokio/BufferedSource;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    new-instance v1, Lokhttp3/MultipartReader$PartSource;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, p0}, Lokhttp3/MultipartReader$PartSource;-><init>(Lokhttp3/MultipartReader;)V

    .line 135
    .line 136
    iput-object v1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 137
    .line 138
    new-instance v2, Lokhttp3/MultipartReader$Part;

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v0, v1}, Lokhttp3/MultipartReader$Part;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    .line 146
    return-object v2

    .line 147
    .line 148
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v0

    .line 153
    .line 154
    :cond_8
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lokio/BufferedSource;

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v5, v6}, Lokio/BufferedSource;->skip(J)V

    .line 158
    goto :goto_0

    .line 159
    .line 160
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v1, "closed"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 170
    throw v0
.end method
