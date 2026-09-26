.class final Lcom/bumptech/glide/load/engine/a$d;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/bumptech/glide/load/engine/p<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final isCacheable:Z

.field final key:Lcom/bumptech/glide/load/g;

.field resource:Lcom/bumptech/glide/load/engine/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/p;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/bumptech/glide/load/g;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a$d;->key:Lcom/bumptech/glide/load/g;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/p;->e()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/p;->d()Lcom/bumptech/glide/load/engine/v;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a$d;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/p;->e()Z

    .line 37
    move-result p1

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/a$d;->isCacheable:Z

    .line 40
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a$d;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    .line 7
    return-void
.end method
