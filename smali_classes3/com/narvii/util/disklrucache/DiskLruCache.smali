.class public final Lcom/narvii/util/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/disklrucache/DiskLruCache$Entry;,
        Lcom/narvii/util/disklrucache/DiskLruCache$Editor;,
        Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field static final CLEAN:Ljava/lang/String; = "CLEAN"

.field static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field static final READ:Ljava/lang/String; = "READ"

.field static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final STRING_KEY_PATTERN:Ljava/lang/String; = "[a-z0-9_-]{1,120}"

.field static final VERSION_ME:Ljava/lang/String; = "com.github.mmin18.lru_time"


# instance fields
.field final appVersion:I

.field final directory:Ljava/io/File;

.field final journalFile:Ljava/io/File;

.field final journalFileBackup:Ljava/io/File;

.field final journalFileTmp:Ljava/io/File;

.field journalWriter:Ljava/io/Writer;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSequenceNumber:J

.field redundantOpCount:I

.field size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 758
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache$3;

    invoke-direct {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$3;-><init>()V

    sput-object v0, Lcom/narvii/util/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method constructor <init>(Ljava/io/File;II)V
    .locals 6

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 152
    iput-wide v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 154
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 163
    iput-wide v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 166
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 167
    iput p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->appVersion:I

    .line 168
    new-instance p2, Ljava/io/File;

    const-string v0, "journal"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 169
    new-instance p2, Ljava/io/File;

    const-string v0, "journal.tmp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 170
    new-instance p2, Ljava/io/File;

    const-string v0, "journal.bkp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 171
    iput p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    return-void
.end method

.method static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/narvii/util/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/narvii/util/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_3

    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 200
    invoke-static {v0, v1, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 205
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/disklrucache/DiskLruCache;-><init>(Ljava/io/File;II)V

    .line 206
    iget-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->readJournal()V

    .line 209
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt, removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->delete()V

    .line 218
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 219
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/disklrucache/DiskLruCache;-><init>(Ljava/io/File;II)V

    .line 220
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    return-object v0

    .line 189
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 382
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 385
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized checkMaxCount(I)V
    .locals 2

    monitor-enter p0

    .line 594
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 595
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache$1;

    const-string v1, "lru-count-flush"

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$1;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;I)V

    .line 624
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method checkNotClosed()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 680
    monitor-exit p0

    return-void

    .line 682
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 683
    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    if-eqz v2, :cond_1

    .line 684
    iget-object v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V

    goto :goto_0

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 486
    iget-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    if-ne v1, p1, :cond_8

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 491
    iget-boolean v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 492
    :goto_0
    iget v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 493
    iget-object v3, p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->written:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 497
    invoke-virtual {v0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 498
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V

    .line 495
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 504
    :cond_2
    :goto_1
    iget p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_5

    .line 505
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 507
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 509
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 510
    iget-object p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    aget-wide v3, p1, v1

    .line 511
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 512
    iget-object p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    aput-wide v5, p1, v1

    .line 513
    iget-wide v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    goto :goto_2

    .line 516
    :cond_3
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 520
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    move-result-wide v1

    .line 521
    iput-wide v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 523
    iget p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v3, 0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 524
    iput-object p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 525
    iget-boolean p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    or-int/2addr p1, p2

    const/16 v4, 0xa

    const/16 v5, 0x20

    if-eqz p1, :cond_6

    .line 526
    iput-boolean v3, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 527
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 529
    iget-wide p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->nextSequenceNumber:J

    iput-wide p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    goto :goto_3

    .line 532
    :cond_6
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 535
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 487
    :cond_8
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->close()V

    .line 698
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 440
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 445
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 447
    iget-wide v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 449
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 452
    :try_start_1
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;)V

    .line 453
    iget-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_2
    iget-object p2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 455
    monitor-exit p0

    return-object v3

    .line 458
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    move-result-wide p2

    .line 459
    iput-wide p2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 461
    new-instance v1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Lcom/narvii/util/disklrucache/DiskLruCache$Entry;)V

    .line 462
    iput-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 465
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public entryCount()I
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 396
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 399
    monitor-exit p0

    return-object v1

    .line 402
    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 403
    monitor-exit p0

    return-object v1

    .line 409
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 411
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_2

    .line 412
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    move-result-wide v1

    .line 427
    iput-wide v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 429
    iget v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 430
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 432
    new-instance v1, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    iget-wide v6, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    iget-object v9, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 416
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, p1, :cond_3

    .line 417
    aget-object p1, v8, v2

    if-eqz p1, :cond_3

    .line 418
    aget-object p1, v8, v2

    invoke-static {p1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 423
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method journalRebuildRequired()Z
    .locals 2

    .line 544
    iget v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 545
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method now()J
    .locals 2

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 314
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 316
    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 317
    :goto_1
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 318
    iget-wide v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 321
    iput-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 322
    :goto_2
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 323
    invoke-virtual {v1, v3}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 324
    invoke-virtual {v1, v3}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 326
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 225
    new-instance v1, Lcom/narvii/util/disklrucache/StrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/narvii/util/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 227
    :try_start_0
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 232
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "com.github.mmin18.lru_time"

    .line 233
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->appVersion:I

    .line 234
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 235
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 236
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 244
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 253
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 256
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 237
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 260
    invoke-static {v1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    add-int/lit8 v4, v1, 0x1

    .line 269
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v3, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 273
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 276
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    if-ne v1, v7, :cond_1

    const-string v7, "REMOVE"

    .line 277
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 282
    :cond_0
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 285
    :cond_1
    iget-object v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    if-nez v7, :cond_2

    .line 287
    new-instance v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    invoke-direct {v7, p0, v6}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;)V

    .line 288
    iget-object v8, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_2
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 292
    iput-wide v4, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v5, "CLEAN"

    .line 294
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 296
    iput-boolean v1, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    const/4 v0, 0x0

    .line 297
    iput-object v0, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 298
    invoke-virtual {v7, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    .line 299
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 300
    new-instance p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v7}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Lcom/narvii/util/disklrucache/DiskLruCache$Entry;)V

    iput-object p1, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 304
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 340
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 343
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 344
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "com.github.mmin18.lru_time"

    .line 345
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 346
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 347
    iget v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 348
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 349
    iget v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 350
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 351
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 354
    iget-object v3, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    const/16 v4, 0xa

    const/16 v5, 0x20

    if-eqz v3, :cond_1

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 364
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/narvii/util/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 368
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 370
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 361
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 362
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 556
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 558
    iget-object v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    if-eqz v2, :cond_0

    goto :goto_2

    .line 562
    :cond_0
    :goto_0
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 563
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 565
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 567
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    iget-object v4, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 568
    iget-object v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_3
    iget v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 572
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 573
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return v1

    .line 559
    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 481
    :try_start_0
    iget-wide v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimAndFlush(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 630
    new-instance v6, Lcom/narvii/util/disklrucache/DiskLruCache$2;

    const-string v2, "lru-flush"

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/util/disklrucache/DiskLruCache$2;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;IJ)V

    .line 674
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method validateKey(Ljava/lang/String;)V
    .locals 3

    .line 702
    sget-object v0, Lcom/narvii/util/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
