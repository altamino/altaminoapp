.class Lcom/narvii/util/disklrucache/DiskLruCache$2;
.super Ljava/lang/Thread;
.source "DiskLruCache.java"


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

    .line 630
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iput p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$maxSize:I

    iput-wide p4, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$minTime:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 640
    :goto_0
    iget v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$maxSize:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-wide v5, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    iget v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$maxSize:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 641
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v5, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 642
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 646
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 647
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v6, v6, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 648
    :cond_1
    :goto_1
    iget-wide v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$minTime:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 649
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 650
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    iget-wide v8, v8, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    iget-wide v10, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->val$minTime:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    .line 651
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 655
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 656
    iget-object v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v7, v6}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 661
    :cond_3
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 662
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 663
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iput v3, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 666
    :cond_4
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$2;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v3, v3, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lru cache clean "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " files in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 669
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "lru cache clean fail"

    .line 671
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
