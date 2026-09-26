.class Lcom/narvii/media/MediaLoader$LoadWorker;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/io/FileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/MediaLoader$OnMediaLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/narvii/media/MediaLoader;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/narvii/media/MediaLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/media/MediaLoader;Lcom/narvii/media/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaLoader$LoadWorker;-><init>(Lcom/narvii/media/MediaLoader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 8

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 3
    invoke-static {v1, p1}, Lcom/narvii/media/MediaLoader;->a(Lcom/narvii/media/MediaLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 4
    iget-object v1, v1, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :catch_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 5
    iget-boolean v3, v2, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 6
    :try_start_1
    iget-object v2, v2, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    .line 7
    :cond_0
    :try_start_2
    iget-object v2, v2, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 9
    iget-object v2, v2, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v2, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-object v2, v3

    .line 10
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_8

    :try_start_5
    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 11
    iget-object v1, v1, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_2

    return-object v3

    .line 12
    :cond_2
    :try_start_6
    invoke-virtual {v1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 13
    invoke-virtual {v4}, Lcom/narvii/media/MediaLoader;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v4

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 14
    invoke-static {v4}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v5, 0x1

    :try_start_7
    new-array v5, v5, [Ljava/lang/Integer;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p0, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 16
    :goto_3
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v7, :cond_4

    iget-object p1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 17
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 18
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object p1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    .line 19
    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_3
    return-object v3

    :cond_4
    :try_start_9
    iget-object v7, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 20
    invoke-virtual {v7, v5, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 21
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    iput-object v3, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 22
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 23
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v3, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 24
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 25
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 26
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_7

    .line 27
    :goto_4
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_4
    move-object v4, v3

    .line 28
    :catch_5
    :try_start_c
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :goto_5
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 29
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 30
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_6

    .line 31
    :try_start_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 32
    :catch_6
    :cond_6
    throw p1

    :catch_7
    :goto_6
    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->os:Ljava/io/OutputStream;

    .line 33
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 34
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_7

    goto :goto_4

    :catch_8
    :cond_7
    :goto_7
    :try_start_e
    iget-object v1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 35
    iget-object v1, v1, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :catch_9
    :cond_8
    if-eqz v2, :cond_9

    .line 36
    invoke-virtual {v2, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/FileInputStream;

    .line 37
    :try_start_f
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_8

    :catch_a
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_8
    return-object v3

    .line 39
    :goto_9
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaLoader$LoadWorker;->doInBackground([Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/FileDescriptor;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->listeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->url:Ljava/lang/String;

    .line 3
    invoke-interface {v1, v2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->url:Ljava/lang/String;

    .line 4
    invoke-interface {v1, v2}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->this$0:Lcom/narvii/media/MediaLoader;

    .line 5
    iget-object p1, p1, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/narvii/media/MediaLoader$LoadWorker;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaLoader$LoadWorker;->onPostExecute(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaLoader$LoadWorker;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
