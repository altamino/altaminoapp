.class public final Lcom/bumptech/glide/load/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/g;


# instance fields
.field private final values:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/bumptech/glide/load/h<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/util/b;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/util/b;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 11
    return-void
.end method

.method private static f(Lcom/bumptech/glide/load/h;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0
    .param p0    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/h;->g(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 4
    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/bumptech/glide/load/h;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, p1}, Lcom/bumptech/glide/load/i;->f(Lcom/bumptech/glide/load/h;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/h;->c()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method public d(Lcom/bumptech/glide/load/i;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->m(Landroidx/collection/SimpleArrayMap;)V

    .line 8
    return-void
.end method

.method public e(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/i;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/bumptech/glide/load/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/load/i;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Options{values="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->values:Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x7d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
