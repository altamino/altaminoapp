.class public Lcom/bumptech/glide/load/resource/transcode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/e<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final quality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/transcode/a;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/a;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput p2, p0, Lcom/bumptech/glide/load/resource/transcode/a;->quality:I

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;
    .locals 3
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/engine/v<",
            "[B>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/transcode/a;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 14
    .line 15
    iget v2, p0, Lcom/bumptech/glide/load/resource/transcode/a;->quality:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->a()V

    .line 22
    .line 23
    new-instance p1, Lv0/b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Lv0/b;-><init>([B)V

    .line 31
    return-object p1
.end method
