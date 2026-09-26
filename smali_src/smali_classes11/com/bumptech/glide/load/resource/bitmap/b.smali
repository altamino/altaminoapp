.class public Lcom/bumptech/glide/load/resource/bitmap/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final encoder:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/l<",
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
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->encoder:Lcom/bumptech/glide/load/l;

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/b;->c(Lcom/bumptech/glide/load/engine/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->encoder:Lcom/bumptech/glide/load/l;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/l;->b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/i;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->encoder:Lcom/bumptech/glide/load/l;

    .line 3
    .line 4
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method
