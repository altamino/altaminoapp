.class Lcom/bumptech/glide/load/engine/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field final engineJobListener:Lcom/bumptech/glide/load/engine/m;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field final resourceListener:Lcom/bumptech/glide/load/engine/p$a;

.field final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/k$b$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/k$b$a;-><init>(Lcom/bumptech/glide/load/engine/k$b;)V

    .line 9
    .line 10
    const/16 v1, 0x96

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, La1/a;->d(ILa1/a$d;)Landroidx/core/util/Pools$Pool;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k$b;->pool:Landroidx/core/util/Pools$Pool;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$b;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k$b;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k$b;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/k$b;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/k$b;->engineJobListener:Lcom/bumptech/glide/load/engine/m;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/k$b;->resourceListener:Lcom/bumptech/glide/load/engine/p$a;

    .line 29
    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/engine/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/l<",
            "TR;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k$b;->pool:Landroidx/core/util/Pools$Pool;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->a()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/engine/l;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    check-cast v1, Lcom/bumptech/glide/load/engine/l;

    .line 16
    move-object v2, p1

    .line 17
    move v3, p2

    .line 18
    move v4, p3

    .line 19
    move v5, p4

    .line 20
    move v6, p5

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/l;->l(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/engine/l;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
