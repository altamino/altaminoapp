.class public Lcom/bumptech/glide/load/resource/bitmap/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private final downsampler:Lcom/bumptech/glide/load/resource/bitmap/p;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/p;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b0;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/p;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b0;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/b0;->d(Ljava/io/InputStream;Lcom/bumptech/glide/load/i;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/b0;->c(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;
    .locals 9
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/engine/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/z;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/z;

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/z;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/b0;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/z;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    move-object v8, v0

    .line 18
    move v0, p1

    .line 19
    move-object p1, v8

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {p1}, Lcom/bumptech/glide/util/d;->e(Ljava/io/InputStream;)Lcom/bumptech/glide/util/d;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v3, Lcom/bumptech/glide/util/h;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v1}, Lcom/bumptech/glide/util/h;-><init>(Ljava/io/InputStream;)V

    .line 29
    .line 30
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/b0$a;

    .line 31
    .line 32
    .line 33
    invoke-direct {v7, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/b0$a;-><init>(Lcom/bumptech/glide/load/resource/bitmap/z;Lcom/bumptech/glide/util/d;)V

    .line 34
    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/b0;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/p;

    .line 36
    move v4, p2

    .line 37
    move v5, p3

    .line 38
    move-object v6, p4

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/p;->g(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/resource/bitmap/p$b;)Lcom/bumptech/glide/load/engine/v;

    .line 42
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/bumptech/glide/util/d;->release()V

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/z;->release()V

    .line 51
    :cond_1
    return-object p2

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/bumptech/glide/util/d;->release()V

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/z;->release()V

    .line 61
    :cond_2
    throw p2
.end method

.method public d(Ljava/io/InputStream;Lcom/bumptech/glide/load/i;)Z
    .locals 0
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b0;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/p;->p(Ljava/io/InputStream;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
