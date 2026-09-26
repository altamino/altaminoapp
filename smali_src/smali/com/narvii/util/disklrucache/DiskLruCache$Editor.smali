.class public final Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field committed:Z

.field final entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

.field hasErrors:Z

.field final synthetic this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lcom/narvii/util/disklrucache/DiskLruCache;Lcom/narvii/util/disklrucache/DiskLruCache$Entry;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 8
    .line 9
    iget-boolean p2, p2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget p1, p1, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 16
    .line 17
    new-array p1, p1, [Z

    .line 18
    .line 19
    :goto_0
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 20
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V

    .line 7
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V

    .line 27
    .line 28
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 29
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 8
    .line 9
    if-ne v2, p0, :cond_1

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    return-object v2

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :catch_0
    monitor-exit v0

    .line 33
    return-object v2

    .line 34
    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 39
    throw p1

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 7
    .line 8
    if-ge p1, v1, :cond_2

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 14
    .line 15
    if-ne v2, p0, :cond_1

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    aput-boolean v3, v2, p1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    .line 51
    :goto_1
    :try_start_4
    new-instance p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    .line 55
    monitor-exit v0

    .line 56
    return-object p1

    .line 57
    .line 58
    :catch_1
    sget-object p1, Lcom/narvii/util/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 59
    monitor-exit v0

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 66
    throw p1

    .line 67
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    throw p1

    .line 69
    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v2, "Expected index "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p1, " to be greater than 0 and less than the maximum value count of "

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 91
    .line 92
    iget p1, p1, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget-object v2, Lcom/narvii/util/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    move-object v0, v1

    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    throw p1
.end method
