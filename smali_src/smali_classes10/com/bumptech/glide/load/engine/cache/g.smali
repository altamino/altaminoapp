.class public Lcom/bumptech/glide/load/engine/cache/g;
.super Lcom/bumptech/glide/util/g;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/g<",
        "Lcom/bumptech/glide/load/g;",
        "Lcom/bumptech/glide/load/engine/v<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/cache/h;"
    }
.end annotation


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/g;-><init>(J)V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x28

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/util/g;->b()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 v0, 0x14

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0xf

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/util/g;->d()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    const-wide/16 v2, 0x2

    .line 23
    div-long/2addr v0, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/g;->m(J)V

    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic c(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/util/g;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    .line 7
    return-object p1
.end method

.method public bridge synthetic e(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/engine/v;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    .line 7
    return-object p1
.end method

.method public f(Lcom/bumptech/glide/load/engine/cache/h$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/g;->listener:Lcom/bumptech/glide/load/engine/cache/h$a;

    return-void
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/g;->n(Lcom/bumptech/glide/load/engine/v;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/bumptech/glide/load/g;

    .line 3
    .line 4
    check-cast p2, Lcom/bumptech/glide/load/engine/v;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/g;->o(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/v;)V

    .line 8
    return-void
.end method

.method protected n(Lcom/bumptech/glide/load/engine/v;)I
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/g;->i(Ljava/lang/Object;)I

    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->getSize()I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected o(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/v;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/g;->listener:Lcom/bumptech/glide/load/engine/cache/h$a;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/cache/h$a;->d(Lcom/bumptech/glide/load/engine/v;)V

    .line 10
    :cond_0
    return-void
.end method
