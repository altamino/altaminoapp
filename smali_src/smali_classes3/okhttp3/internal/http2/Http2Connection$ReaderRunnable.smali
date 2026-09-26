.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReaderRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n90#2,13:1007\n90#2,13:1020\n90#2,13:1037\n90#2,13:1051\n37#3:1033\n36#3,3:1034\n37#3:1064\n36#3,3:1065\n563#4:1050\n563#4:1068\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n687#1:1007,13\n715#1:1020,13\n758#1:1037,13\n806#1:1051,13\n753#1:1033\n753#1:1034,3\n824#1:1064\n824#1:1065,3\n797#1:1050\n841#1:1068\n*E\n"
.end annotation


# instance fields
.field private final reader:Lokhttp3/internal/http2/Http2Reader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 1
    .param p1    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Reader;",
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
    const-string v0, "reader"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 18
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "origin"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "protocol"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "host"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final applyAndAckSettings(ZLokhttp3/internal/http2/Settings;)V
    .locals 11
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "settings"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 11
    .line 12
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance p1, Lokhttp3/internal/http2/Settings;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 39
    move-object p2, p1

    .line 40
    .line 41
    :goto_0
    iput-object p2, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 50
    move-result v3

    .line 51
    int-to-long v3, v3

    .line 52
    sub-long/2addr p1, v3

    .line 53
    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    cmp-long v5, p1, v3

    .line 57
    const/4 v6, 0x0

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 67
    move-result v5

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    new-array v7, v6, [Lokhttp3/internal/http2/Http2Stream;

    .line 81
    .line 82
    .line 83
    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    move-result-object v5

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    check-cast v5, [Lokhttp3/internal/http2/Http2Stream;

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1

    .line 100
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 101
    .line 102
    :goto_2
    iget-object v7, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v7, Lokhttp3/internal/http2/Settings;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v7}, Lokhttp3/internal/http2/Http2Connection;->setPeerSettings(Lokhttp3/internal/http2/Settings;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Lokhttp3/internal/http2/Http2Connection;->access$getSettingsListenerQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    .line 111
    move-result-object v7

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    .line 115
    move-result-object v8

    .line 116
    .line 117
    const-string v9, " onSettings"

    .line 118
    .line 119
    .line 120
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    .line 123
    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1;

    .line 124
    const/4 v10, 0x1

    .line 125
    .line 126
    .line 127
    invoke-direct {v9, v8, v10, v2, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;Lkotlin/jvm/internal/p0;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v9, v3, v4}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 131
    .line 132
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .line 135
    .line 136
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    iget-object v0, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lokhttp3/internal/http2/Settings;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v0}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    goto :goto_3

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    goto :goto_6

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .line 150
    .line 151
    :try_start_4
    invoke-static {v2, v0}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 152
    .line 153
    :goto_3
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    monitor-exit v1

    .line 155
    .line 156
    if-eqz v5, :cond_4

    .line 157
    array-length v0, v5

    .line 158
    .line 159
    :goto_4
    if-ge v6, v0, :cond_4

    .line 160
    .line 161
    aget-object v1, v5, v6

    .line 162
    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 164
    monitor-enter v1

    .line 165
    .line 166
    .line 167
    :try_start_5
    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 168
    .line 169
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 170
    monitor-exit v1

    .line 171
    goto :goto_4

    .line 172
    :catchall_2
    move-exception p1

    .line 173
    monitor-exit v1

    .line 174
    throw p1

    .line 175
    :cond_4
    return-void

    .line 176
    :goto_5
    :try_start_6
    monitor-exit v2

    .line 177
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    :goto_6
    monitor-exit v1

    .line 179
    throw p1
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 2
    .param p3    # Lokio/BufferedSource;
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
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater$okhttp(ILokio/BufferedSource;IZ)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 30
    .line 31
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 35
    .line 36
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 37
    int-to-long v0, p4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    sget-object p1, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    .line 52
    const/4 p2, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    .line 56
    :cond_2
    return-void
.end method

.method public final getReader$okhttp()Lokhttp3/internal/http2/Http2Reader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    return-object v0
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 3
    .param p2    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "errorCode"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "debugData"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 14
    .line 15
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    monitor-enter p2

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 24
    move-result-object p3

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    new-array v1, v0, [Lokhttp3/internal/http2/Http2Stream;

    .line 28
    .line 29
    .line 30
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v1}, Lokhttp3/internal/http2/Http2Connection;->access$setShutdown$p(Lokhttp3/internal/http2/Http2Connection;Z)V

    .line 38
    .line 39
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p2

    .line 41
    .line 42
    check-cast p3, [Lokhttp3/internal/http2/Http2Stream;

    .line 43
    array-length p2, p3

    .line 44
    .line 45
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 46
    .line 47
    aget-object v1, p3, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    .line 53
    move-result v2

    .line 54
    .line 55
    if-le v2, p1, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 67
    .line 68
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_1
    monitor-exit p2

    .line 89
    throw p1
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 6
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "headerBlock"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    .line 11
    move-result p3

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater$okhttp(ILjava/util/List;Z)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 22
    monitor-enter p3

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lokhttp3/internal/http2/Http2Connection;->access$isShutdown$p(Lokhttp3/internal/http2/Http2Connection;)Z

    .line 32
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    monitor-exit p3

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->getLastGoodStreamId$okhttp()I

    .line 40
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    if-gt p2, v0, :cond_2

    .line 43
    monitor-exit p3

    .line 44
    return-void

    .line 45
    .line 46
    :cond_2
    :try_start_2
    rem-int/lit8 v0, p2, 0x2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->getNextStreamId$okhttp()I

    .line 50
    move-result v1

    .line 51
    .line 52
    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    if-ne v0, v1, :cond_3

    .line 55
    monitor-exit p3

    .line 56
    return-void

    .line 57
    .line 58
    .line 59
    :cond_3
    :try_start_3
    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    new-instance p4, Lokhttp3/internal/http2/Http2Stream;

    .line 63
    const/4 v3, 0x0

    .line 64
    move-object v0, p4

    .line 65
    move v1, p2

    .line 66
    move-object v2, p3

    .line 67
    move v4, p1

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->setLastGoodStreamId$okhttp(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-static {p3}, Lokhttp3/internal/http2/Http2Connection;->access$getTaskRunner$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskRunner;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const/16 v1, 0x5b

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p2, "] onStream"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$lambda-2$$inlined$execute$default$1;

    .line 124
    const/4 v1, 0x1

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, p2, v1, p3, p4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$lambda-2$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Stream;)V

    .line 128
    .line 129
    const-wide/16 v1, 0x0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    monitor-exit p3

    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_4
    :try_start_4
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    monitor-exit p3

    .line 140
    .line 141
    .line 142
    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    .line 147
    return-void

    .line 148
    :goto_0
    monitor-exit p3

    .line 149
    throw p1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public invoke()V
    .locals 5

    .line 2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 3
    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 7
    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 8
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v2, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 9
    :goto_2
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    invoke-virtual {v2, v0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 11
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public ping(ZII)V
    .locals 8

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    monitor-enter p1

    .line 6
    const/4 p3, 0x1

    .line 7
    .line 8
    const-wide/16 v0, 0x1

    .line 9
    .line 10
    if-eq p2, p3, :cond_2

    .line 11
    const/4 p3, 0x2

    .line 12
    .line 13
    if-eq p2, p3, :cond_1

    .line 14
    const/4 p3, 0x3

    .line 15
    .line 16
    if-eq p2, p3, :cond_0

    .line 17
    .line 18
    :goto_0
    :try_start_0
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    goto :goto_2

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getAwaitPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    .line 25
    move-result-wide p2

    .line 26
    add-long/2addr p2, v0

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->access$setAwaitPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getDegradedPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    .line 37
    move-result-wide p2

    .line 38
    add-long/2addr p2, v0

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->access$setDegradedPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    .line 46
    move-result-wide p2

    .line 47
    add-long/2addr p2, v0

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->access$setIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_1
    monitor-exit p1

    .line 52
    goto :goto_3

    .line 53
    :goto_2
    monitor-exit p1

    .line 54
    throw p2

    .line 55
    .line 56
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v1, " ping"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 75
    const/4 v4, 0x1

    .line 76
    .line 77
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;

    .line 78
    move-object v2, v0

    .line 79
    move v6, p2

    .line 80
    move v7, p3

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;II)V

    .line 84
    .line 85
    const-wide/16 p2, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 89
    :goto_3
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p1, "requestHeaders"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater$okhttp(ILjava/util/List;)V

    .line 11
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p2    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "errorCode"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 32
    :goto_0
    return-void
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .locals 9
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "settings"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, " applyAndAckSettings"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x1

    .line 25
    .line 26
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;

    .line 27
    move-object v3, v1

    .line 28
    move-object v6, p0

    .line 29
    move v7, p1

    .line 30
    move-object v8, p2

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLokhttp3/internal/http2/Settings;)V

    .line 34
    .line 35
    const-wide/16 p1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 39
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    monitor-enter p1

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->getWriteBytesMaximum()J

    .line 9
    move-result-wide v0

    .line 10
    add-long/2addr v0, p2

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->access$setWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    .line 18
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p2

    .line 22
    monitor-exit p1

    .line 23
    throw p2

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    monitor-enter p1

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 36
    .line 37
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    monitor-exit p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception p2

    .line 41
    monitor-exit p1

    .line 42
    throw p2

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
