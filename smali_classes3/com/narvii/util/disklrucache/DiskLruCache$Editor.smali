.class public final Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


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

    .line 772
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    .line 774
    iget-boolean p2, p2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->written:[Z

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

    .line 874
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 880
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 860
    iget-boolean v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V

    .line 862
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    iget-object v2, v2, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v0, p0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->completeEdit(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Z)V

    .line 866
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->committed:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 803
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    .line 782
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_1

    .line 786
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 790
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 792
    :catch_0
    monitor-exit v0

    return-object v2

    .line 784
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 794
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 814
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    if-ge p1, v1, :cond_2

    .line 819
    monitor-enter v0

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_1

    .line 823
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->readable:Z

    if-nez v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->entry:Lcom/narvii/util/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 832
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v1, v1, Lcom/narvii/util/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 840
    :goto_0
    :try_start_4
    new-instance p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    invoke-direct {p1, p0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    monitor-exit v0

    return-object p1

    .line 837
    :catch_1
    sget-object p1, Lcom/narvii/util/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    monitor-exit v0

    return-object p1

    .line 821
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 841
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 815
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget p1, p1, Lcom/narvii/util/disklrucache/DiskLruCache;->valueCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 848
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v2, Lcom/narvii/util/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 849
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    invoke-static {v1}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 852
    throw p1
.end method
