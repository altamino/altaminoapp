.class Lcom/bumptech/glide/load/resource/gif/g$a;
.super Lcom/bumptech/glide/request/target/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field final index:I

.field private resource:Landroid/graphics/Bitmap;

.field private final targetTime:J


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/a;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->index:I

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->targetTime:J

    .line 10
    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->resource:Landroid/graphics/Bitmap;

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/b;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/g$a;->j(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/b;)V

    .line 6
    return-void
.end method

.method i()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->resource:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public j(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/b;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/b<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->resource:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->handler:Landroid/os/Handler;

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/bumptech/glide/load/resource/gif/g$a;->targetTime:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 17
    return-void
.end method
