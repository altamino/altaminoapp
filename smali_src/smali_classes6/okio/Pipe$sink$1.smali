.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Pipe.kt\nokio/Pipe\n+ 5 Timeout.kt\nokio/Timeout\n*L\n1#1,250:1\n27#2:251\n27#2:281\n27#2:310\n1#3:252\n210#4:253\n211#4:280\n210#4:282\n211#4:309\n210#4:311\n211#4:338\n186#5,26:254\n186#5,26:283\n186#5,26:312\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n54#1:251\n85#1:281\n104#1:310\n80#1:253\n80#1:280\n99#1:282\n99#1:309\n117#1:311\n117#1:338\n80#1:254,26\n99#1:283,26\n117#1:312,26\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lokio/Timeout;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-gtz v2, :cond_2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 48
    .line 49
    const-string v2, "source is closed"

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v1

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    const/4 v2, 0x0

    .line 69
    .line 70
    :goto_1
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit v0

    .line 72
    .line 73
    if-eqz v2, :cond_9

    .line 74
    .line 75
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 76
    .line 77
    .line 78
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 91
    move-result-wide v3

    .line 92
    .line 93
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 97
    move-result-wide v6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 101
    move-result-wide v8

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 105
    move-result-wide v5

    .line 106
    .line 107
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    .line 114
    move-result v5

    .line 115
    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 120
    move-result-wide v5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 124
    move-result v8

    .line 125
    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 130
    move-result-wide v8

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 134
    move-result-wide v10

    .line 135
    .line 136
    .line 137
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 138
    move-result-wide v8

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 142
    .line 143
    .line 144
    :cond_4
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 151
    move-result v0

    .line 152
    .line 153
    if-eqz v0, :cond_9

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 157
    goto :goto_2

    .line 158
    :catchall_1
    move-exception v2

    .line 159
    .line 160
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 167
    move-result v0

    .line 168
    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 173
    :cond_5
    throw v2

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 177
    move-result v5

    .line 178
    .line 179
    if-eqz v5, :cond_7

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 183
    move-result-wide v5

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 187
    .line 188
    .line 189
    :cond_7
    :try_start_3
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 196
    move-result v0

    .line 197
    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 202
    goto :goto_2

    .line 203
    :catchall_2
    move-exception v2

    .line 204
    .line 205
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 212
    move-result v0

    .line 213
    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 218
    :cond_8
    throw v2

    .line 219
    :cond_9
    :goto_2
    return-void

    .line 220
    :goto_3
    monitor-exit v0

    .line 221
    throw v1
.end method

.method public flush()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    xor-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    if-eqz v2, :cond_a

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-nez v2, :cond_9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    .line 44
    move-result-wide v1

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long v1, v1, v3

    .line 49
    .line 50
    if-gtz v1, :cond_1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string v2, "source is closed"

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v1

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 64
    .line 65
    :goto_1
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    .line 67
    .line 68
    if-eqz v2, :cond_8

    .line 69
    .line 70
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 71
    .line 72
    .line 73
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 86
    move-result-wide v3

    .line 87
    .line 88
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 92
    move-result-wide v6

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 96
    move-result-wide v8

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 100
    move-result-wide v5

    .line 101
    .line 102
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    .line 109
    move-result v5

    .line 110
    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 115
    move-result-wide v5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 119
    move-result v8

    .line 120
    .line 121
    if-eqz v8, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 125
    move-result-wide v8

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 129
    move-result-wide v10

    .line 130
    .line 131
    .line 132
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 133
    move-result-wide v8

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 137
    .line 138
    .line 139
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 146
    move-result v0

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 152
    goto :goto_2

    .line 153
    :catchall_1
    move-exception v2

    .line 154
    .line 155
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 162
    move-result v0

    .line 163
    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 168
    :cond_4
    throw v2

    .line 169
    .line 170
    .line 171
    :cond_5
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 172
    move-result v5

    .line 173
    .line 174
    if-eqz v5, :cond_6

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 178
    move-result-wide v5

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 182
    .line 183
    .line 184
    :cond_6
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 191
    move-result v0

    .line 192
    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 197
    goto :goto_2

    .line 198
    :catchall_2
    move-exception v2

    .line 199
    .line 200
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 207
    move-result v0

    .line 208
    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 213
    :cond_7
    throw v2

    .line 214
    :cond_8
    :goto_2
    return-void

    .line 215
    .line 216
    :cond_9
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    .line 217
    .line 218
    const-string v2, "canceled"

    .line 219
    .line 220
    .line 221
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    throw v1

    .line 223
    .line 224
    :cond_a
    const-string v1, "closed"

    .line 225
    .line 226
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    .line 233
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    :goto_3
    monitor-exit v0

    .line 236
    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 14
    monitor-enter v0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    xor-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    if-eqz v2, :cond_c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_b

    .line 29
    .line 30
    :goto_0
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v4, p2, v2

    .line 33
    .line 34
    if-lez v4, :cond_4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lokio/Pipe;->getMaxBufferSize$okio()J

    .line 51
    move-result-wide v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    .line 59
    move-result-wide v6

    .line 60
    sub-long/2addr v4, v6

    .line 61
    .line 62
    cmp-long v2, v4, v2

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 83
    .line 84
    const-string p2, "canceled"

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 95
    move-result-wide v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, p1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 103
    sub-long/2addr p2, v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 114
    .line 115
    const-string p2, "source is closed"

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p1

    .line 120
    :cond_4
    const/4 v4, 0x0

    .line 121
    .line 122
    :goto_1
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v0

    .line 124
    .line 125
    if-eqz v4, :cond_a

    .line 126
    .line 127
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 128
    .line 129
    .line 130
    invoke-interface {v4}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 143
    move-result-wide v2

    .line 144
    .line 145
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 149
    move-result-wide v6

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 153
    move-result-wide v8

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 157
    move-result-wide v5

    .line 158
    .line 159
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    .line 166
    move-result v5

    .line 167
    .line 168
    if-eqz v5, :cond_7

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 172
    move-result-wide v5

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 176
    move-result v8

    .line 177
    .line 178
    if-eqz v8, :cond_5

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 182
    move-result-wide v8

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 186
    move-result-wide v10

    .line 187
    .line 188
    .line 189
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 190
    move-result-wide v8

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 194
    .line 195
    .line 196
    :cond_5
    :try_start_1
    invoke-interface {v4, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2, v3, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 203
    move-result p1

    .line 204
    .line 205
    if-eqz p1, :cond_a

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 209
    goto :goto_2

    .line 210
    :catchall_1
    move-exception p1

    .line 211
    .line 212
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 219
    move-result p2

    .line 220
    .line 221
    if-eqz p2, :cond_6

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 225
    :cond_6
    throw p1

    .line 226
    .line 227
    .line 228
    :cond_7
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 229
    move-result v5

    .line 230
    .line 231
    if-eqz v5, :cond_8

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 235
    move-result-wide v5

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 239
    .line 240
    .line 241
    :cond_8
    :try_start_2
    invoke-interface {v4, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2, v3, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 248
    move-result p1

    .line 249
    .line 250
    if-eqz p1, :cond_a

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 254
    goto :goto_2

    .line 255
    :catchall_2
    move-exception p1

    .line 256
    .line 257
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 264
    move-result p2

    .line 265
    .line 266
    if-eqz p2, :cond_9

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 270
    :cond_9
    throw p1

    .line 271
    :cond_a
    :goto_2
    return-void

    .line 272
    .line 273
    :cond_b
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 274
    .line 275
    const-string p2, "canceled"

    .line 276
    .line 277
    .line 278
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 279
    throw p1

    .line 280
    .line 281
    :cond_c
    const-string p1, "closed"

    .line 282
    .line 283
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 288
    .line 289
    .line 290
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 291
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    :goto_3
    monitor-exit v0

    .line 293
    throw p1
.end method
