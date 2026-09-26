.class Lcom/bumptech/glide/load/engine/k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La1/a$d<",
        "Lcom/bumptech/glide/load/engine/l<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/k$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/k$b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$b$a;->this$0:Lcom/bumptech/glide/load/engine/k$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k$b$a;->b()Lcom/bumptech/glide/load/engine/l;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/engine/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v8, Lcom/bumptech/glide/load/engine/l;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k$b$a;->this$0:Lcom/bumptech/glide/load/engine/k$b;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/k$b;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/k$b;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/k$b;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/k$b;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/k$b;->engineJobListener:Lcom/bumptech/glide/load/engine/m;

    .line 15
    .line 16
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/k$b;->resourceListener:Lcom/bumptech/glide/load/engine/p$a;

    .line 17
    .line 18
    iget-object v7, v0, Lcom/bumptech/glide/load/engine/k$b;->pool:Landroidx/core/util/Pools$Pool;

    .line 19
    move-object v0, v8

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/l;-><init>(Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/util/Pools$Pool;)V

    .line 23
    return-object v8
.end method
