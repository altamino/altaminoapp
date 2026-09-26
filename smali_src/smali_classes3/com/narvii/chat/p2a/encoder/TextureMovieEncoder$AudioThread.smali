.class Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    const/16 v0, -0x13

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 8
    .line 9
    .line 10
    const v0, 0xac44

    .line 11
    .line 12
    iget-object v2, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->d(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    monitor-enter v2

    .line 18
    .line 19
    :catch_0
    :goto_0
    :try_start_0
    iget-object v3, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->e(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z

    .line 23
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    :try_start_1
    iget-object v3, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->d(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .line 38
    goto/16 :goto_a

    .line 39
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    iget-object v2, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 42
    const/4 v8, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v8}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->k(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V

    .line 46
    .line 47
    const/16 v2, 0x10

    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v9, 0x1

    .line 50
    .line 51
    .line 52
    :try_start_3
    invoke-static {v0, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 53
    move-result v2

    .line 54
    .line 55
    const/16 v10, 0x800

    .line 56
    .line 57
    .line 58
    const v3, 0xc000

    .line 59
    .line 60
    if-ge v3, v2, :cond_1

    .line 61
    div-int/2addr v2, v10

    .line 62
    add-int/2addr v2, v9

    .line 63
    .line 64
    mul-int/lit16 v3, v2, 0x1000

    .line 65
    :cond_1
    move v11, v3

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-static {}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->r()[I

    .line 73
    move-result-object v12

    .line 74
    array-length v13, v12

    .line 75
    const/4 v14, 0x0

    .line 76
    move v15, v8

    .line 77
    move-object v2, v14

    .line 78
    .line 79
    :goto_2
    if-ge v15, v13, :cond_4

    .line 80
    .line 81
    aget v3, v12, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 82
    .line 83
    :try_start_4
    new-instance v16, Landroid/media/AudioRecord;

    .line 84
    .line 85
    const/16 v5, 0x10

    .line 86
    const/4 v6, 0x2

    .line 87
    .line 88
    move-object/from16 v2, v16

    .line 89
    move v4, v0

    .line 90
    move v7, v11

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioRecord;->getState()I

    .line 97
    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 98
    .line 99
    if-eq v2, v9, :cond_2

    .line 100
    .line 101
    move-object/from16 v16, v14

    .line 102
    .line 103
    :cond_2
    move-object/from16 v2, v16

    .line 104
    goto :goto_3

    .line 105
    :catch_2
    move-object v2, v14

    .line 106
    .line 107
    :goto_3
    if-eqz v2, :cond_3

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :cond_4
    :goto_4
    if-eqz v2, :cond_7

    .line 114
    .line 115
    .line 116
    :try_start_5
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 121
    .line 122
    iget-object v3, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v9}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->i(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 126
    .line 127
    :cond_5
    :goto_5
    :try_start_6
    iget-object v3, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 128
    .line 129
    .line 130
    invoke-static {v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->c(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z

    .line 131
    move-result v3

    .line 132
    .line 133
    if-nez v3, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0, v10}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 140
    move-result v3

    .line 141
    .line 142
    if-lez v3, :cond_5

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    .line 150
    iget-object v4, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 151
    .line 152
    .line 153
    invoke-static {v4}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->a(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 154
    move-result-object v4

    .line 155
    .line 156
    iget-object v5, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->getPTSUs()J

    .line 160
    move-result-wide v5

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 164
    .line 165
    iget-object v3, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 166
    .line 167
    .line 168
    invoke-static {v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->a(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 169
    move-result-object v3

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->drainEncoder()V

    .line 173
    goto :goto_5

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    goto :goto_6

    .line 176
    .line 177
    :cond_6
    iget-object v0, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->a(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    iget-object v3, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->getPTSUs()J

    .line 187
    move-result-wide v3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v14, v8, v3, v4}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->encode(Ljava/nio/ByteBuffer;IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 191
    .line 192
    .line 193
    :try_start_7
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 194
    .line 195
    .line 196
    :try_start_8
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 197
    .line 198
    iget-object v0, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->a(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 206
    goto :goto_9

    .line 207
    :catchall_2
    move-exception v0

    .line 208
    goto :goto_7

    .line 209
    .line 210
    .line 211
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 212
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 213
    .line 214
    .line 215
    :goto_7
    :try_start_a
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 216
    .line 217
    iget-object v2, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 218
    .line 219
    .line 220
    invoke-static {v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->a(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->release()V

    .line 225
    throw v0

    .line 226
    .line 227
    :cond_7
    const-string v0, "TextureMovieEncoder"

    .line 228
    .line 229
    const-string v2, "failed to initialize AudioRecord"

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 233
    goto :goto_9

    .line 234
    .line 235
    :goto_8
    const-string v2, "TextureMovieEncoder"

    .line 236
    .line 237
    const-string v3, "AudioThread#run"

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    :goto_9
    iget-object v0, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->f(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 246
    move-result-object v3

    .line 247
    monitor-enter v3

    .line 248
    .line 249
    :try_start_b
    iget-object v0, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v9}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->l(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V

    .line 253
    .line 254
    iget-object v0, v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;->this$0:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->f(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v3

    .line 263
    return-void

    .line 264
    :catchall_3
    move-exception v0

    .line 265
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 266
    throw v0

    .line 267
    :goto_a
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 268
    throw v0
.end method
