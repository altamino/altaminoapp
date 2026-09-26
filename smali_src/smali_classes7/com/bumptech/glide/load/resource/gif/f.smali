.class public Lcom/bumptech/glide/load/resource/gif/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m<",
        "Lcom/bumptech/glide/load/resource/gif/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final wrapped:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/bumptech/glide/load/m;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/v<",
            "Lcom/bumptech/glide/load/resource/gif/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/v<",
            "Lcom/bumptech/glide/load/resource/gif/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/bumptech/glide/load/resource/gif/c;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bumptech/glide/b;->f()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/c;->e()Landroid/graphics/Bitmap;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/f;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/m;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p3

    .line 34
    .line 35
    if-nez p3, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/v;->a()V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3, p1}, Lcom/bumptech/glide/load/resource/gif/c;->m(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    .line 50
    return-object p2
.end method

.method public b(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/g;->b(Ljava/security/MessageDigest;)V

    .line 6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/f;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f;->wrapped:Lcom/bumptech/glide/load/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
