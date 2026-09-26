.class public Lcom/bumptech/glide/load/engine/cache/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/d$c;
    }
.end annotation


# instance fields
.field private final cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/d$c;

.field private final diskCacheSize:J


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/d$c;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/d;->diskCacheSize:J

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/d;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/d$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/d$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/engine/cache/d;-><init>(Lcom/bumptech/glide/load/engine/cache/d$c;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/d$b;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/cache/d;-><init>(Lcom/bumptech/glide/load/engine/cache/d$c;J)V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/a;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/d;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/d$c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/d$c;->a()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    :cond_1
    return-object v1

    .line 30
    .line 31
    :cond_2
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/d;->diskCacheSize:J

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/e;->c(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/a;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
