.class public final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketReader.kt\nokhttp3/internal/ws/WebSocketReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1#2:299\n*E\n"
.end annotation


# instance fields
.field private closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frameLength:J

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maskKey:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final messageFrameBuffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private messageInflater:Lokhttp3/internal/ws/MessageInflater;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final noContextTakeover:Z

.field private opcode:I

.field private final perMessageDeflate:Z

.field private readingCompressedMessage:Z

.field private final source:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V
    .locals 1
    .param p2    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "frameCallback"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 16
    .line 17
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 18
    .line 19
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 20
    .line 21
    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketReader;->perMessageDeflate:Z

    .line 22
    .line 23
    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketReader;->noContextTakeover:Z

    .line 24
    .line 25
    new-instance p2, Lokio/Buffer;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    .line 29
    .line 30
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 31
    .line 32
    new-instance p2, Lokio/Buffer;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    .line 36
    .line 37
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 38
    const/4 p2, 0x0

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    move-object p3, p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p3, 0x4

    .line 44
    .line 45
    new-array p3, p3, [B

    .line 46
    .line 47
    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    new-instance p2, Lokio/Buffer$UnsafeCursor;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 56
    .line 57
    :goto_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 58
    return-void
.end method

.method private final readControlFrame()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-lez v4, :cond_0

    .line 9
    .line 10
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 11
    .line 12
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-interface {v4, v5, v0, v1}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 16
    .line 17
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 22
    .line 23
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 30
    .line 31
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 35
    .line 36
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 37
    .line 38
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 39
    .line 40
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v4}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 47
    .line 48
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 52
    .line 53
    :cond_0
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 54
    .line 55
    .line 56
    packed-switch v0, :pswitch_data_0

    .line 57
    .line 58
    new-instance v0, Ljava/net/ProtocolException;

    .line 59
    .line 60
    iget v1, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const-string v2, "Unknown control opcode: "

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v0

    .line 75
    .line 76
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 77
    .line 78
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :pswitch_1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 89
    .line 90
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :pswitch_2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 104
    move-result-wide v0

    .line 105
    .line 106
    const-wide/16 v4, 0x1

    .line 107
    .line 108
    cmp-long v4, v0, v4

    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    cmp-long v0, v0, v2

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    .line 120
    move-result v0

    .line 121
    .line 122
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    sget-object v2, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    if-nez v2, :cond_1

    .line 135
    goto :goto_0

    .line 136
    .line 137
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 141
    throw v0

    .line 142
    .line 143
    :cond_2
    const/16 v0, 0x3ed

    .line 144
    .line 145
    const-string v1, ""

    .line 146
    .line 147
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 148
    .line 149
    .line 150
    invoke-interface {v2, v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    .line 152
    .line 153
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 154
    :goto_1
    return-void

    .line 155
    .line 156
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    .line 157
    .line 158
    const-string v1, "Malformed close payload length of 1."

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 162
    throw v0

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_14

    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    .line 29
    move-result v2

    .line 30
    .line 31
    const/16 v3, 0xff

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->and(BI)I

    .line 35
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 38
    .line 39
    .line 40
    invoke-interface {v4}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0, v1, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 47
    .line 48
    and-int/lit8 v0, v2, 0xf

    .line 49
    .line 50
    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 51
    .line 52
    and-int/lit16 v1, v2, 0x80

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x1

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    move v1, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v1, v4

    .line 60
    .line 61
    :goto_0
    iput-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 62
    .line 63
    and-int/lit8 v6, v2, 0x8

    .line 64
    .line 65
    if-eqz v6, :cond_1

    .line 66
    move v6, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v6, v4

    .line 69
    .line 70
    :goto_1
    iput-boolean v6, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 71
    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 78
    .line 79
    const-string v1, "Control frames must be final."

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0

    .line 84
    .line 85
    :cond_3
    :goto_2
    and-int/lit8 v1, v2, 0x40

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    move v1, v5

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v1, v4

    .line 91
    .line 92
    :goto_3
    const-string v6, "Unexpected rsv1 flag"

    .line 93
    .line 94
    if-eq v0, v5, :cond_6

    .line 95
    const/4 v7, 0x2

    .line 96
    .line 97
    if-eq v0, v7, :cond_6

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 106
    throw v0

    .line 107
    .line 108
    :cond_6
    if-eqz v1, :cond_8

    .line 109
    .line 110
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->perMessageDeflate:Z

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    move v0, v5

    .line 114
    goto :goto_4

    .line 115
    .line 116
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 120
    throw v0

    .line 121
    :cond_8
    move v0, v4

    .line 122
    .line 123
    :goto_4
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->readingCompressedMessage:Z

    .line 124
    .line 125
    :goto_5
    and-int/lit8 v0, v2, 0x20

    .line 126
    .line 127
    if-nez v0, :cond_13

    .line 128
    .line 129
    and-int/lit8 v0, v2, 0x10

    .line 130
    .line 131
    if-nez v0, :cond_12

    .line 132
    .line 133
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 137
    move-result v0

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v3}, Lokhttp3/internal/Util;->and(BI)I

    .line 141
    move-result v0

    .line 142
    .line 143
    and-int/lit16 v1, v0, 0x80

    .line 144
    .line 145
    if-eqz v1, :cond_9

    .line 146
    move v4, v5

    .line 147
    .line 148
    :cond_9
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 149
    .line 150
    if-ne v4, v1, :cond_b

    .line 151
    .line 152
    new-instance v0, Ljava/net/ProtocolException;

    .line 153
    .line 154
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 155
    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    const-string v1, "Server-sent frames must not be masked."

    .line 159
    goto :goto_6

    .line 160
    .line 161
    :cond_a
    const-string v1, "Client-sent frames must be masked."

    .line 162
    .line 163
    .line 164
    :goto_6
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v0

    .line 166
    .line 167
    :cond_b
    and-int/lit8 v0, v0, 0x7f

    .line 168
    int-to-long v0, v0

    .line 169
    .line 170
    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 171
    .line 172
    const-wide/16 v2, 0x7e

    .line 173
    .line 174
    cmp-long v2, v0, v2

    .line 175
    .line 176
    if-nez v2, :cond_c

    .line 177
    .line 178
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    .line 182
    move-result v0

    .line 183
    .line 184
    .line 185
    const v1, 0xffff

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v1}, Lokhttp3/internal/Util;->and(SI)I

    .line 189
    move-result v0

    .line 190
    int-to-long v0, v0

    .line 191
    .line 192
    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 193
    goto :goto_7

    .line 194
    .line 195
    :cond_c
    const-wide/16 v2, 0x7f

    .line 196
    .line 197
    cmp-long v0, v0, v2

    .line 198
    .line 199
    if-nez v0, :cond_e

    .line 200
    .line 201
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 202
    .line 203
    .line 204
    invoke-interface {v0}, Lokio/BufferedSource;->readLong()J

    .line 205
    move-result-wide v0

    .line 206
    .line 207
    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 208
    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .line 211
    cmp-long v0, v0, v2

    .line 212
    .line 213
    if-ltz v0, :cond_d

    .line 214
    goto :goto_7

    .line 215
    .line 216
    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    const-string v2, "Frame length 0x"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->toHexString(J)Ljava/lang/String;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 248
    throw v0

    .line 249
    .line 250
    :cond_e
    :goto_7
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 251
    .line 252
    if-eqz v0, :cond_10

    .line 253
    .line 254
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 255
    .line 256
    const-wide/16 v2, 0x7d

    .line 257
    .line 258
    cmp-long v0, v0, v2

    .line 259
    .line 260
    if-gtz v0, :cond_f

    .line 261
    goto :goto_8

    .line 262
    .line 263
    :cond_f
    new-instance v0, Ljava/net/ProtocolException;

    .line 264
    .line 265
    const-string v1, "Control frame must be less than 125B."

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 269
    throw v0

    .line 270
    .line 271
    :cond_10
    :goto_8
    if-eqz v4, :cond_11

    .line 272
    .line 273
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 274
    .line 275
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 276
    .line 277
    .line 278
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    .line 282
    :cond_11
    return-void

    .line 283
    .line 284
    :cond_12
    new-instance v0, Ljava/net/ProtocolException;

    .line 285
    .line 286
    const-string v1, "Unexpected rsv3 flag"

    .line 287
    .line 288
    .line 289
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 290
    throw v0

    .line 291
    .line 292
    :cond_13
    new-instance v0, Ljava/net/ProtocolException;

    .line 293
    .line 294
    const-string v1, "Unexpected rsv2 flag"

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 298
    throw v0

    .line 299
    :catchall_0
    move-exception v2

    .line 300
    .line 301
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 302
    .line 303
    .line 304
    invoke-interface {v3}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 305
    move-result-object v3

    .line 306
    .line 307
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v0, v1, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 311
    throw v2

    .line 312
    .line 313
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 314
    .line 315
    const-string v1, "closed"

    .line 316
    .line 317
    .line 318
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 319
    throw v0
.end method

.method private final readMessage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 15
    .line 16
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v3, v0, v1}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 20
    .line 21
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 26
    .line 27
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 34
    .line 35
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 36
    .line 37
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    .line 41
    move-result-wide v1

    .line 42
    .line 43
    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 44
    sub-long/2addr v1, v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 48
    .line 49
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 50
    .line 51
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 52
    .line 53
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 60
    .line 61
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 65
    .line 66
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    return-void

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 73
    .line 74
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 75
    .line 76
    if-nez v0, :cond_2

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 80
    .line 81
    iget v1, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    const-string v2, "Expected continuation opcode. Got: "

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    .line 97
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 98
    .line 99
    const-string v1, "closed"

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0
.end method

.method private final readMessageFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    .line 12
    .line 13
    const-string v2, "Unknown opcode: "

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v1

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V

    .line 29
    .line 30
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->readingCompressedMessage:Z

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageInflater:Lokhttp3/internal/ws/MessageInflater;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    new-instance v2, Lokhttp3/internal/ws/MessageInflater;

    .line 39
    .line 40
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->noContextTakeover:Z

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lokhttp3/internal/ws/MessageInflater;-><init>(Z)V

    .line 44
    .line 45
    iput-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageInflater:Lokhttp3/internal/ws/MessageInflater;

    .line 46
    .line 47
    :cond_2
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lokhttp3/internal/ws/MessageInflater;->inflate(Lokio/Buffer;)V

    .line 51
    .line 52
    :cond_3
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 55
    .line 56
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 67
    .line 68
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    .line 76
    :goto_1
    return-void
.end method

.method private final readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 8
    .line 9
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageInflater:Lokhttp3/internal/ws/MessageInflater;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/ws/MessageInflater;->close()V

    .line 9
    :goto_0
    return-void
.end method

.method public final getSource()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public final processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    .line 15
    :goto_0
    return-void
.end method
