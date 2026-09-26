.class Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/GifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerLoad"
.end annotation


# instance fields
.field session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

.field stoped:Z

.field final synthetic this$0:Lcom/narvii/util/drawables/gif/GifLoader;


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 3
    .line 4
    const-string p1, "gif-load"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->stoped:Z

    .line 3
    .line 4
    if-nez v0, :cond_e

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v3, 0x1f4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-object v1, v0

    .line 22
    .line 23
    :goto_1
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 28
    monitor-enter v2

    .line 29
    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v2

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0

    .line 41
    .line 42
    :cond_0
    iget-boolean v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const-string v0, "gif load canceled in queue"

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    iput-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    :try_start_2
    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v3, v2

    .line 70
    .line 71
    :goto_2
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 75
    move-result-wide v4

    .line 76
    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    cmp-long v4, v4, v6

    .line 80
    .line 81
    if-lez v4, :cond_6

    .line 82
    .line 83
    if-eqz v3, :cond_4

    .line 84
    const/4 v4, 0x2

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    const/4 v4, 0x3

    .line 87
    .line 88
    :goto_3
    iput v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 92
    .line 93
    iget-boolean v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 94
    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    if-nez v3, :cond_6

    .line 98
    .line 99
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 100
    .line 101
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->touch(Ljava/io/File;)V

    .line 105
    .line 106
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 107
    .line 108
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->touch(Ljava/io/File;)V

    .line 112
    goto :goto_4

    .line 113
    :catchall_1
    move-exception v2

    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_5
    iput v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    .line 119
    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 120
    .line 121
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 122
    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 126
    .line 127
    if-nez v0, :cond_7

    .line 128
    .line 129
    :goto_5
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerDownload()V

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_7
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 144
    .line 145
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 146
    monitor-enter v2

    .line 147
    .line 148
    :try_start_3
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 151
    .line 152
    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    if-ne v0, v1, :cond_8

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    goto :goto_6

    .line 169
    :catchall_2
    move-exception v0

    .line 170
    goto :goto_7

    .line 171
    :cond_8
    :goto_6
    monitor-exit v2

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    :goto_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    throw v0

    .line 176
    .line 177
    :catch_1
    :try_start_4
    iput v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    .line 179
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 180
    .line 181
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 182
    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 186
    .line 187
    if-nez v0, :cond_9

    .line 188
    goto :goto_5

    .line 189
    .line 190
    :cond_9
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 191
    .line 192
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 193
    monitor-enter v2

    .line 194
    .line 195
    :try_start_5
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 198
    .line 199
    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    if-ne v0, v1, :cond_a

    .line 206
    .line 207
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    goto :goto_8

    .line 216
    :catchall_3
    move-exception v0

    .line 217
    goto :goto_9

    .line 218
    :cond_a
    :goto_8
    monitor-exit v2

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    :goto_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 222
    throw v0

    .line 223
    .line 224
    :goto_a
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 225
    .line 226
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 227
    .line 228
    if-nez v0, :cond_c

    .line 229
    .line 230
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 231
    .line 232
    if-eqz v0, :cond_b

    .line 233
    goto :goto_b

    .line 234
    .line 235
    :cond_b
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 236
    .line 237
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerDownload()V

    .line 246
    goto :goto_d

    .line 247
    .line 248
    :cond_c
    :goto_b
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 251
    monitor-enter v0

    .line 252
    .line 253
    :try_start_6
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 254
    .line 255
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 256
    .line 257
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-result-object v3

    .line 262
    .line 263
    if-ne v3, v1, :cond_d

    .line 264
    .line 265
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 266
    .line 267
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 268
    .line 269
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    goto :goto_c

    .line 274
    :catchall_4
    move-exception v1

    .line 275
    goto :goto_e

    .line 276
    :cond_d
    :goto_c
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 277
    :goto_d
    throw v2

    .line 278
    :goto_e
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 279
    throw v1

    .line 280
    :cond_e
    return-void
.end method
