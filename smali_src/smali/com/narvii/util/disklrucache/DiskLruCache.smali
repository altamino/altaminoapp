.class public final Lcom/narvii/util/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    const-string v0, "[a-z0-9_-]{1,120}"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/util/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache$3;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$3;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/util/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 16
    return-void
.end method

.method constructor <init>(Ljava/io/File;II)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 8
    .line 9
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    const/high16 v3, 0x3f400000    # 0.75f

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 17
    .line 18
    iput-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 23
    .line 24
    iput p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->appVersion:I

    .line 25
    .line 26
    new-instance p2, Ljava/io/File;

    .line 27
    .line 28
    const-string v0, "journal"

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 34
    .line 35
    new-instance p2, Ljava/io/File;

    .line 36
    .line 37
    const-string v0, "journal.tmp"

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 43
    .line 44
    new-instance p2, Ljava/io/File;

    .line 45
    .line 46
    const-string v0, "journal.bkp"

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 52
    .line 53
    iput p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 54
    return-void
.end method

.method static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 19
    throw p0

    .line 20
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

    .line 1
    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-lez p2, :cond_3

    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    const-string v1, "journal.bkp"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string v2, "journal"

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 37
    .line 38
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/disklrucache/DiskLruCache;-><init>(Ljava/io/File;II)V

    .line 42
    .line 43
    iget-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->readJournal()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string v3, "DiskLruCache "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, " is corrupt, removing"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->delete()V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 89
    .line 90
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/disklrucache/DiskLruCache;-><init>(Ljava/io/File;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 97
    return-object v0

    .line 98
    .line 99
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    .line 102
    const-string/jumbo p1, "valueCount <= 0"

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0
.end method

.method static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9
    move-result p0

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 18
    throw p0
.end method


# virtual methods
.method public declared-synchronized checkMaxCount(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache$1;

    .line 7
    .line 8
    const-string v1, "lru-count-flush"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$1;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method checkNotClosed()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "cache is closed"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw v0
.end method

.method declared-synchronized completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 6
    .line 7
    if-ne v1, p1, :cond_8

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    iget-boolean v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    move v2, v1

    .line 16
    .line 17
    :goto_0
    iget v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 18
    .line 19
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    iget-object v3, p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 22
    .line 23
    aget-boolean v3, v3, v2

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V

    .line 50
    .line 51
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v0, "Newly created entry didn\'t create value for index "

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    .line 74
    :cond_2
    :goto_1
    iget p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 75
    .line 76
    if-ge v1, p1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 96
    .line 97
    iget-object p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 98
    .line 99
    aget-wide v3, p1, v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 103
    move-result-wide v5

    .line 104
    .line 105
    iget-object p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 106
    .line 107
    aput-wide v5, p1, v1

    .line 108
    .line 109
    iget-wide v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 110
    sub-long/2addr v7, v3

    .line 111
    add-long/2addr v7, v5

    .line 112
    .line 113
    iput-wide v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 114
    goto :goto_2

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 118
    .line 119
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    .line 124
    move-result-wide v1

    .line 125
    .line 126
    iput-wide v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 127
    .line 128
    iget p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 129
    const/4 v3, 0x1

    .line 130
    add-int/2addr p1, v3

    .line 131
    .line 132
    iput p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 133
    const/4 p1, 0x0

    .line 134
    .line 135
    iput-object p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 136
    .line 137
    iget-boolean p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 138
    or-int/2addr p1, p2

    .line 139
    .line 140
    const/16 v4, 0xa

    .line 141
    .line 142
    const/16 v5, 0x20

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    iput-boolean v3, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 147
    .line 148
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    const-string v6, "CLEAN "

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    iget-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    .line 188
    if-eqz p2, :cond_7

    .line 189
    .line 190
    iget-wide p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 191
    .line 192
    const-wide/16 v1, 0x1

    .line 193
    add-long/2addr v1, p1

    .line 194
    .line 195
    iput-wide v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 196
    .line 197
    iput-wide p1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    .line 198
    goto :goto_3

    .line 199
    .line 200
    :cond_6
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    iget-object p2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 208
    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    const-string v3, "REMOVE "

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p2

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 239
    .line 240
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    .line 245
    return-void

    .line 246
    .line 247
    :cond_8
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    .line 250
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 251
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    :goto_4
    monitor-exit p0

    .line 253
    throw p1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->close()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 9
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

    .line 1
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

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    iget-wide v3, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    .line 7
    :try_start_1
    new-instance v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 10
    monitor-exit p0

    return-object v2

    .line 11
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    move-result-wide p2

    .line 12
    iput-wide p2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 13
    new-instance v1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Lcom/narvii/util/disklrucache/DiskLruCache$Entry;)V

    .line 14
    iput-object v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 15
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

    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 16
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public entryCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    monitor-exit p0

    .line 20
    return-object v1

    .line 21
    .line 22
    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    monitor-exit p0

    .line 26
    return-object v1

    .line 27
    .line 28
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 29
    .line 30
    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    .line 34
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 35
    .line 36
    if-ge v3, v4, :cond_2

    .line 37
    .line 38
    new-instance v4, Ljava/io/FileInputStream;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    .line 56
    move-result-wide v1

    .line 57
    .line 58
    iput-wide v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 59
    .line 60
    iget v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    iput v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v5, "READ "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const/16 v1, 0x20

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const/16 v1, 0xa

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 100
    .line 101
    new-instance v1, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    .line 102
    .line 103
    iget-wide v6, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    .line 104
    .line 105
    iget-object v9, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 106
    move-object v3, v1

    .line 107
    move-object v4, p0

    .line 108
    move-object v5, p1

    .line 109
    .line 110
    .line 111
    invoke-direct/range {v3 .. v9}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    monitor-exit p0

    .line 113
    return-object v1

    .line 114
    .line 115
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 116
    .line 117
    if-ge v2, p1, :cond_3

    .line 118
    .line 119
    aget-object p1, v8, v2

    .line 120
    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    monitor-exit p0

    .line 129
    return-object v1

    .line 130
    :goto_2
    monitor-exit p0

    .line 131
    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method journalRebuildRequired()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method now()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    :goto_1
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 35
    .line 36
    if-ge v3, v2, :cond_0

    .line 37
    .line 38
    iget-wide v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 39
    .line 40
    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 41
    .line 42
    aget-wide v6, v2, v3

    .line 43
    add-long/2addr v4, v6

    .line 44
    .line 45
    iput-wide v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    .line 51
    iput-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 52
    .line 53
    :goto_2
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 54
    .line 55
    if-ge v3, v2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_2

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 76
    goto :goto_0

    .line 77
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

    .line 1
    .line 2
    const-string v0, ", "

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/util/disklrucache/StrictLineReader;

    .line 5
    .line 6
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    sget-object v3, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lcom/narvii/util/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    const-string v7, "libcore.io.DiskLruCache"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v7

    .line 43
    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    const-string v7, "com.github.mmin18.lru_time"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v7

    .line 51
    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    iget v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->appVersion:I

    .line 55
    .line 56
    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    iget v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    const-string v4, ""

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    if-eqz v4, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 86
    .line 87
    .line 88
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 103
    move-result v2

    .line 104
    sub-int/2addr v0, v2

    .line 105
    .line 106
    iput v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 119
    .line 120
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 121
    .line 122
    new-instance v3, Ljava/io/FileOutputStream;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 125
    const/4 v5, 0x1

    .line 126
    .line 127
    .line 128
    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 129
    .line 130
    sget-object v4, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 137
    .line 138
    iput-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    return-void

    .line 143
    .line 144
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 145
    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v8, "unexpected journal header: ["

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v0, "]"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    .line 191
    .line 192
    :goto_2
    invoke-static {v1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    throw v0
.end method

.method readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "unexpected journal line: "

    .line 10
    const/4 v3, -0x1

    .line 11
    .line 12
    if-eq v1, v3, :cond_7

    .line 13
    .line 14
    add-int/lit8 v4, v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 18
    move-result v5

    .line 19
    .line 20
    if-eq v5, v3, :cond_6

    .line 21
    .line 22
    add-int/lit8 v6, v5, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ne v0, v3, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v6

    .line 33
    const/4 v7, 0x6

    .line 34
    .line 35
    if-ne v1, v7, :cond_1

    .line 36
    .line 37
    const-string v7, "REMOVE"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v7

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    :cond_1
    iget-object v7, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v7

    .line 60
    .line 61
    check-cast v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 62
    .line 63
    if-nez v7, :cond_2

    .line 64
    .line 65
    new-instance v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 66
    .line 67
    .line 68
    invoke-direct {v7, p0, v6}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;)V

    .line 69
    .line 70
    iget-object v8, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    iput-wide v4, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 84
    const/4 v4, 0x5

    .line 85
    .line 86
    if-eq v0, v3, :cond_3

    .line 87
    .line 88
    if-ne v1, v4, :cond_3

    .line 89
    .line 90
    const-string v5, "CLEAN"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    move-result v5

    .line 95
    .line 96
    if-eqz v5, :cond_3

    .line 97
    const/4 v1, 0x1

    .line 98
    add-int/2addr v0, v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-string v0, " "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iput-boolean v1, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 111
    const/4 v0, 0x0

    .line 112
    .line 113
    iput-object v0, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_3
    if-ne v0, v3, :cond_4

    .line 120
    .line 121
    if-ne v1, v4, :cond_4

    .line 122
    .line 123
    const-string v4, "DIRTY"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 127
    move-result v4

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    new-instance p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p0, v7}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Lcom/narvii/util/disklrucache/DiskLruCache$Entry;)V

    .line 135
    .line 136
    iput-object p1, v7, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_4
    if-ne v0, v3, :cond_5

    .line 140
    const/4 v0, 0x4

    .line 141
    .line 142
    if-ne v1, v0, :cond_5

    .line 143
    .line 144
    const-string v0, "READ"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    move-result v0

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    :goto_0
    return-void

    .line 152
    .line 153
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    throw v0

    .line 173
    .line 174
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    throw v0

    .line 194
    .line 195
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 214
    throw v0
.end method

.method declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 15
    .line 16
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 17
    .line 18
    new-instance v2, Ljava/io/FileOutputStream;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    sget-object v3, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 37
    .line 38
    const-string v1, "\n"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    .line 43
    const-string v1, "com.github.mmin18.lru_time"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 47
    .line 48
    const-string v1, "\n"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->appVersion:I

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    .line 62
    const-string v1, "\n"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    .line 67
    iget v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    .line 76
    const-string v1, "\n"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    .line 81
    const-string v1, "\n"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v2

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    check-cast v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 107
    .line 108
    iget-object v3, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 109
    .line 110
    const/16 v4, 0xa

    .line 111
    .line 112
    const/16 v5, 0x20

    .line 113
    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    const-string v6, "DIRTY "

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    iget-wide v6, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    goto :goto_1

    .line 149
    :catchall_1
    move-exception v1

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    const-string v6, "CLEAN "

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget-wide v6, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->time:J

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    iget-object v5, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    goto :goto_1

    .line 192
    .line 193
    .line 194
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 195
    .line 196
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 200
    move-result v0

    .line 201
    const/4 v1, 0x1

    .line 202
    .line 203
    if-eqz v0, :cond_3

    .line 204
    .line 205
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 206
    .line 207
    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v2, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 211
    .line 212
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 213
    .line 214
    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 215
    const/4 v3, 0x0

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v2, v3}, Lcom/narvii/util/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 219
    .line 220
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 224
    .line 225
    new-instance v0, Ljava/io/BufferedWriter;

    .line 226
    .line 227
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 228
    .line 229
    new-instance v3, Ljava/io/FileOutputStream;

    .line 230
    .line 231
    iget-object v4, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 232
    .line 233
    .line 234
    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 235
    .line 236
    sget-object v1, Lcom/narvii/util/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 237
    .line 238
    .line 239
    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 243
    .line 244
    iput-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    monitor-exit p0

    .line 246
    return-void

    .line 247
    .line 248
    .line 249
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 250
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :goto_3
    monitor-exit p0

    .line 252
    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object v2, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 26
    .line 27
    if-ge v1, v2, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v1, "failed to delete "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 72
    .line 73
    iget-object v4, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 74
    .line 75
    aget-wide v5, v4, v1

    .line 76
    sub-long/2addr v2, v5

    .line 77
    .line 78
    iput-wide v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J

    .line 79
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .line 82
    aput-wide v2, v4, v1

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_3
    iget v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 88
    const/4 v1, 0x1

    .line 89
    add-int/2addr v0, v1

    .line 90
    .line 91
    iput v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v3, "REMOVE "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->now()J

    .line 107
    move-result-wide v3

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const/16 v3, 0x20

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const/16 v3, 0xa

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    .line 137
    return v1

    .line 138
    :cond_4
    :goto_2
    monitor-exit p0

    .line 139
    return v1

    .line 140
    :goto_3
    monitor-exit p0

    .line 141
    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized trimAndFlush(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 5
    .line 6
    new-instance v6, Lcom/narvii/util/disklrucache/DiskLruCache$2;

    .line 7
    .line 8
    const-string v2, "lru-flush"

    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    move v3, p1

    .line 12
    move-wide v4, p2

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/narvii/util/disklrucache/DiskLruCache$2;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;IJ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method

.method validateKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p1, "\""

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method
