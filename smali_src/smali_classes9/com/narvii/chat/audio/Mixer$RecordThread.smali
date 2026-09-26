.class Lcom/narvii/chat/audio/Mixer$RecordThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/Mixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordThread"
.end annotation


# instance fields
.field final record:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/narvii/chat/audio/Mixer;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/audio/Mixer;Landroid/media/AudioRecord;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 3
    .line 4
    const-string p1, "audio-record"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->record:Landroid/media/AudioRecord;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    .line 5
    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    new-array v1, v0, [S

    .line 9
    .line 10
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    .line 13
    .line 14
    if-ne v2, p0, :cond_12

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->record:Landroid/media/AudioRecord;

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([SII)I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-gez v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_b

    .line 26
    .line 27
    :cond_1
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 28
    .line 29
    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 30
    const/4 v6, 0x0

    .line 31
    .line 32
    cmpl-float v5, v5, v6

    .line 33
    .line 34
    if-nez v5, :cond_5

    .line 35
    move v4, v3

    .line 36
    .line 37
    :goto_1
    if-ge v3, v2, :cond_4

    .line 38
    .line 39
    aget-short v5, v1, v3

    .line 40
    .line 41
    iget-object v6, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 42
    .line 43
    iget v7, v6, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 44
    .line 45
    if-le v5, v7, :cond_2

    .line 46
    .line 47
    iput v5, v6, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    if-ge v5, v4, :cond_3

    .line 51
    move v4, v5

    .line 52
    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move v3, v4

    .line 56
    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :cond_5
    if-lez v2, :cond_f

    .line 60
    .line 61
    iget-object v4, v4, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    .line 62
    monitor-enter v4

    .line 63
    move v5, v3

    .line 64
    move v6, v5

    .line 65
    .line 66
    :goto_3
    if-ge v5, v2, :cond_b

    .line 67
    .line 68
    :try_start_0
    aget-short v7, v1, v5

    .line 69
    .line 70
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 71
    .line 72
    iget v9, v8, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 73
    .line 74
    if-le v7, v9, :cond_6

    .line 75
    .line 76
    iput v7, v8, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 77
    goto :goto_4

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_8

    .line 80
    .line 81
    :cond_6
    if-ge v7, v6, :cond_7

    .line 82
    move v6, v7

    .line 83
    .line 84
    :cond_7
    :goto_4
    iget v9, v8, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 85
    .line 86
    if-ge v5, v9, :cond_8

    .line 87
    .line 88
    iget-object v9, v8, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 89
    .line 90
    aget-short v9, v9, v5

    .line 91
    goto :goto_5

    .line 92
    :cond_8
    move v9, v3

    .line 93
    :goto_5
    int-to-float v7, v7

    .line 94
    .line 95
    iget v10, v8, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 96
    mul-float/2addr v7, v10

    .line 97
    float-to-int v7, v7

    .line 98
    int-to-float v9, v9

    .line 99
    .line 100
    iget v8, v8, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 101
    mul-float/2addr v9, v8

    .line 102
    float-to-int v8, v9

    .line 103
    add-int/2addr v7, v8

    .line 104
    .line 105
    const/16 v8, -0x8000

    .line 106
    .line 107
    if-ge v7, v8, :cond_9

    .line 108
    :goto_6
    move v7, v8

    .line 109
    goto :goto_7

    .line 110
    .line 111
    :cond_9
    const/16 v8, 0x7fff

    .line 112
    .line 113
    if-le v7, v8, :cond_a

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    :goto_7
    int-to-short v7, v7

    .line 116
    .line 117
    aput-short v7, v1, v5

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_b
    iget-object v5, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 123
    .line 124
    iget v5, v5, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 128
    move-result v5

    .line 129
    .line 130
    if-lez v5, :cond_e

    .line 131
    .line 132
    iget-object v7, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 133
    .line 134
    iget-object v8, v7, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 135
    .line 136
    if-eqz v8, :cond_c

    .line 137
    array-length v9, v8

    .line 138
    .line 139
    iget-object v10, v7, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 140
    array-length v10, v10

    .line 141
    .line 142
    if-eq v9, v10, :cond_d

    .line 143
    .line 144
    :cond_c
    iget-object v8, v7, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 145
    array-length v8, v8

    .line 146
    .line 147
    new-array v8, v8, [S

    .line 148
    .line 149
    :cond_d
    iget-object v9, v7, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 150
    .line 151
    iget v7, v7, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 152
    sub-int/2addr v7, v5

    .line 153
    .line 154
    .line 155
    invoke-static {v9, v5, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .line 157
    iget-object v7, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 158
    .line 159
    iget-object v9, v7, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 160
    .line 161
    iput-object v9, v7, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 162
    .line 163
    iput-object v8, v7, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 164
    .line 165
    iget v8, v7, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 166
    sub-int/2addr v8, v5

    .line 167
    .line 168
    iput v8, v7, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 169
    :cond_e
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v1, v3, v2}, Lcom/narvii/chat/audio/Mixer;->onMixedBuffer([SII)V

    .line 175
    move v3, v6

    .line 176
    goto :goto_9

    .line 177
    :goto_8
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw v0

    .line 179
    :cond_f
    :goto_9
    neg-int v2, v3

    .line 180
    .line 181
    iget-object v3, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 182
    .line 183
    iget v4, v3, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 184
    .line 185
    if-le v2, v4, :cond_10

    .line 186
    .line 187
    iput v2, v3, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 188
    .line 189
    .line 190
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 191
    move-result-wide v2

    .line 192
    .line 193
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 194
    .line 195
    iget-wide v5, v4, Lcom/narvii/chat/audio/Mixer;->levelTime:J

    .line 196
    .line 197
    const-wide/16 v7, 0xc8

    .line 198
    add-long/2addr v5, v7

    .line 199
    .line 200
    cmp-long v5, v2, v5

    .line 201
    .line 202
    if-lez v5, :cond_0

    .line 203
    .line 204
    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 205
    .line 206
    div-int/lit16 v5, v5, 0x3e8

    .line 207
    .line 208
    sget-object v6, Lcom/narvii/chat/audio/Mixer;->PERM:[F

    .line 209
    array-length v7, v6

    .line 210
    .line 211
    if-ge v5, v7, :cond_11

    .line 212
    .line 213
    aget v5, v6, v5

    .line 214
    .line 215
    iput v5, v4, Lcom/narvii/chat/audio/Mixer;->level:F

    .line 216
    goto :goto_a

    .line 217
    :cond_11
    array-length v5, v6

    .line 218
    .line 219
    add-int/lit8 v5, v5, -0x1

    .line 220
    .line 221
    aget v5, v6, v5

    .line 222
    .line 223
    iput v5, v4, Lcom/narvii/chat/audio/Mixer;->level:F

    .line 224
    .line 225
    :goto_a
    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->level:F

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v5}, Lcom/narvii/chat/audio/Mixer;->onLevelIndicator(F)V

    .line 229
    .line 230
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    .line 231
    .line 232
    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 233
    .line 234
    div-int/lit8 v5, v5, 0x2

    .line 235
    .line 236
    iput v5, v4, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 237
    .line 238
    iput-wide v2, v4, Lcom/narvii/chat/audio/Mixer;->levelTime:J

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    :cond_12
    :goto_b
    return-void
.end method
