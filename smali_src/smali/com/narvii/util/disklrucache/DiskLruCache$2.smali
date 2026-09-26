.class Lcom/narvii/util/disklrucache/DiskLruCache$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/disklrucache/DiskLruCache;->trimAndFlush(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

.field final synthetic val$maxSize:I

.field final synthetic val$minTime:J


# direct methods
.method constructor <init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$maxSize:I

    .line 5
    .line 6
    iput-wide p4, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$minTime:J

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    .line 16
    :goto_0
    iget v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$maxSize:I

    .line 17
    .line 18
    if-lez v5, :cond_0

    .line 19
    .line 20
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 21
    .line 22
    iget-wide v7, v6, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 23
    int-to-long v9, v5

    .line 24
    .line 25
    cmp-long v5, v7, v9

    .line 26
    .line 27
    if-lez v5, :cond_0

    .line 28
    .line 29
    iget-object v5, v6, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    check-cast v5, Ljava/util/Map$Entry;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 46
    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 68
    .line 69
    iget-object v6, v6, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v6

    .line 78
    .line 79
    :cond_1
    :goto_1
    iget-wide v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$minTime:J

    .line 80
    .line 81
    const-wide/16 v9, 0x0

    .line 82
    .line 83
    cmp-long v7, v7, v9

    .line 84
    .line 85
    if-lez v7, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    check-cast v7, Ljava/util/Map$Entry;

    .line 98
    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    move-result-object v8

    .line 102
    .line 103
    check-cast v8, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 104
    .line 105
    iget-wide v8, v8, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 106
    .line 107
    iget-wide v10, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$minTime:J

    .line 108
    .line 109
    cmp-long v8, v8, v10

    .line 110
    .line 111
    if-gez v8, :cond_1

    .line 112
    .line 113
    .line 114
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    check-cast v7, Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_1

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 125
    move-result v6

    .line 126
    .line 127
    if-nez v6, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v5

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v6

    .line 136
    .line 137
    if-eqz v6, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    check-cast v6, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v6}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    goto :goto_2

    .line 152
    .line 153
    :cond_3
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 157
    move-result v5

    .line 158
    .line 159
    if-eqz v5, :cond_4

    .line 160
    .line 161
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 165
    .line 166
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 167
    .line 168
    iput v3, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 169
    .line 170
    :cond_4
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 176
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    const-string v5, "lru cache clean "

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v4, " files in "

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 197
    move-result-wide v4

    .line 198
    sub-long/2addr v4, v1

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v1, "ms"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 214
    monitor-exit v0

    .line 215
    goto :goto_4

    .line 216
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .line 220
    const-string v1, "lru cache clean fail"

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    :goto_4
    return-void
.end method
