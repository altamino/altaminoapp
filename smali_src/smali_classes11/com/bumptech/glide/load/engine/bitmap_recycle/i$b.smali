.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/i$b;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/c<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lcom/bumptech/glide/load/engine/bitmap_recycle/l;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i$b;->d()Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected d()Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/i$b;)V

    .line 6
    return-object v0
.end method

.method e(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i$a;->b(ILjava/lang/Class;)V

    .line 10
    return-object v0
.end method
