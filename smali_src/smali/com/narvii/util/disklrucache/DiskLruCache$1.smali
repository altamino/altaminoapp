.class Lcom/narvii/util/disklrucache/DiskLruCache$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/disklrucache/DiskLruCache;->checkMaxCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

.field final synthetic val$maxCount:I


# direct methods
.method constructor <init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->val$maxCount:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

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
    iget v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->val$maxCount:I

    .line 17
    .line 18
    if-lez v5, :cond_0

    .line 19
    .line 20
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/util/AbstractMap;->size()I

    .line 26
    move-result v5

    .line 27
    .line 28
    iget v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->val$maxCount:I

    .line 29
    .line 30
    if-le v5, v6, :cond_0

    .line 31
    .line 32
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 33
    .line 34
    iget-object v5, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    check-cast v5, Ljava/util/Map$Entry;

    .line 49
    .line 50
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 51
    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_0
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 70
    move-result v5

    .line 71
    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 78
    .line 79
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 80
    .line 81
    iput v3, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 82
    .line 83
    :cond_1
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v5, "lru cache clean "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, " files in "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    move-result-wide v4

    .line 111
    sub-long/2addr v4, v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, "ms"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 127
    monitor-exit v0

    .line 128
    goto :goto_2

    .line 129
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .line 133
    const-string v1, "lru cache count clean fail"

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :goto_2
    return-void
.end method
