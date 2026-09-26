.class final Lokhttp3/Cache$RealCacheRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RealCacheRequest"
.end annotation


# instance fields
.field private final body:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cacheOut:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .param p1    # Lokhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$Editor;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "editor"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    .line 25
    .line 26
    new-instance v0, Lokhttp3/Cache$RealCacheRequest$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, p0, p2}, Lokhttp3/Cache$RealCacheRequest$1;-><init>(Lokhttp3/Cache;Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V

    .line 30
    .line 31
    iput-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->body:Lokio/Sink;

    .line 32
    return-void
.end method

.method public static final synthetic access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 3
    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Cache$RealCacheRequest;->getDone()Z

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p0, v1}, Lokhttp3/Cache$RealCacheRequest;->setDone(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lokhttp3/Cache;->getWriteAbortCount$okhttp()I

    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lokhttp3/Cache;->setWriteAbortCount$okhttp(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    .line 26
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 30
    .line 31
    :try_start_2
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    :catch_0
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    .line 38
    throw v1
.end method

.method public body()Lokio/Sink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->body:Lokio/Sink;

    return-object v0
.end method

.method public final getDone()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    return v0
.end method

.method public final setDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    return-void
.end method
