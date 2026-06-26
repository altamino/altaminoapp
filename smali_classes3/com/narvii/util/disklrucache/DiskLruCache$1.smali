.class Lcom/narvii/util/disklrucache/DiskLruCache$1;
.super Ljava/lang/Thread;
.source "DiskLruCache.java"


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

    .line 595
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iput p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->val$maxCount:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 605
    :goto_0
    iget v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->val$maxCount:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v5, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    iget v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->val$maxCount:I

    if-le v5, v6, :cond_0

    .line 606
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v5, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 607
    iget-object v6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    :cond_0
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 612
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v5}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 613
    iget-object v5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iput v3, v5, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 616
    :cond_1
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$1;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v3, v3, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 618
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

    .line 619
    monitor-exit v0

    goto :goto_1

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

    const-string v1, "lru cache count clean fail"

    .line 621
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
