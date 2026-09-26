.class Lcom/bumptech/glide/load/resource/bitmap/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final bufferedStream:Lcom/bumptech/glide/load/resource/bitmap/z;

.field private final exceptionStream:Lcom/bumptech/glide/util/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/z;Lcom/bumptech/glide/util/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b0$a;->bufferedStream:Lcom/bumptech/glide/load/resource/bitmap/z;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b0$a;->exceptionStream:Lcom/bumptech/glide/util/d;

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b0$a;->bufferedStream:Lcom/bumptech/glide/load/resource/bitmap/z;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/z;->d()V

    .line 6
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b0$a;->exceptionStream:Lcom/bumptech/glide/util/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/util/d;->d()Ljava/io/IOException;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->c(Landroid/graphics/Bitmap;)V

    .line 14
    :cond_0
    throw v0

    .line 15
    :cond_1
    return-void
.end method
