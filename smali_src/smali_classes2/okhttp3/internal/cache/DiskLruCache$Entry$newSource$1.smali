.class public final Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache$Entry;->newSource(I)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fileSource:Lokio/Source;

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final synthetic this$1:Lokhttp3/internal/cache/DiskLruCache$Entry;


# direct methods
.method constructor <init>(Lokio/Source;Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->$fileSource:Lokio/Source;

    .line 3
    .line 4
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->closed:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->closed:Z

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    .line 13
    .line 14
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 15
    monitor-enter v0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    .line 19
    move-result v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setLockingSourceCount$okhttp(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    monitor-exit v0

    .line 48
    throw v1

    .line 49
    :cond_1
    :goto_2
    return-void
.end method
