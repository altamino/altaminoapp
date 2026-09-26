.class public final Lcom/bumptech/glide/load/engine/prefill/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private current:Lcom/bumptech/glide/load/engine/prefill/a;

.field private final defaultFormat:Lcom/bumptech/glide/load/b;

.field private final handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/h;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/b;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/b;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/b;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/b;->defaultFormat:Lcom/bumptech/glide/load/b;

    .line 21
    return-void
.end method
