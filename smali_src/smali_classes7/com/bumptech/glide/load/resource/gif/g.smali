.class Lcom/bumptech/glide/load/resource/gif/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/g$d;,
        Lcom/bumptech/glide/load/resource/gif/g$a;,
        Lcom/bumptech/glide/load/resource/gif/g$c;,
        Lcom/bumptech/glide/load/resource/gif/g$b;
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/gif/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/bumptech/glide/load/resource/gif/g$a;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstFrameSize:I

.field private final gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/bumptech/glide/load/resource/gif/g$a;

.field private onEveryFrameListener:Lcom/bumptech/glide/load/resource/gif/g$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

.field private requestBuilder:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/bumptech/glide/j;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/gifdecoder/a;IILcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/gifdecoder/a;",
            "II",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->f()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v2

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->h()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/load/resource/gif/g;->i(Lcom/bumptech/glide/j;II)Lcom/bumptech/glide/i;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/gif/g;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/j;Lcom/bumptech/glide/gifdecoder/a;Landroid/os/Handler;Lcom/bumptech/glide/i;Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/j;Lcom/bumptech/glide/gifdecoder/a;Landroid/os/Handler;Lcom/bumptech/glide/i;Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/j;",
            "Lcom/bumptech/glide/gifdecoder/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestManager:Lcom/bumptech/glide/j;

    if-nez p4, :cond_0

    .line 7
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/g$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/gif/g$c;-><init>(Lcom/bumptech/glide/load/resource/gif/g;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/g;->handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestBuilder:Lcom/bumptech/glide/i;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 8
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/load/resource/gif/g;->o(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static g()Lcom/bumptech/glide/load/g;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lz0/b;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lz0/b;-><init>(Ljava/lang/Object;)V

    .line 14
    return-object v0
.end method

.method private static i(Lcom/bumptech/glide/j;II)Lcom/bumptech/glide/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j;",
            "II)",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->j()Lcom/bumptech/glide/i;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lcom/bumptech/glide/load/engine/j;->NONE:Lcom/bumptech/glide/load/engine/j;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ly0/f;->c0(Lcom/bumptech/glide/load/engine/j;)Ly0/f;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ly0/a;->a0(Z)Ly0/a;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Ly0/f;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ly0/a;->V(Z)Ly0/a;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Ly0/f;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Ly0/a;->L(II)Ly0/a;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->c0(Ly0/a;)Lcom/bumptech/glide/i;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private l()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isRunning:Z

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isLoadPending:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->startFromFirstFrame:Z

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    .line 24
    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v3}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->b()V

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/bumptech/glide/load/resource/gif/g;->startFromFirstFrame:Z

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/gif/g;->m(Lcom/bumptech/glide/load/resource/gif/g$a;)V

    .line 45
    return-void

    .line 46
    .line 47
    :cond_3
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->isLoadPending:Z

    .line 48
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->h()I

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    move-result-wide v1

    .line 58
    int-to-long v3, v0

    .line 59
    add-long/2addr v1, v3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->f()V

    .line 65
    .line 66
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/g;->handler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 71
    .line 72
    .line 73
    invoke-interface {v4}, Lcom/bumptech/glide/gifdecoder/a;->c()I

    .line 74
    move-result v4

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/gif/g$a;-><init>(Landroid/os/Handler;IJ)V

    .line 78
    .line 79
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->next:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestBuilder:Lcom/bumptech/glide/i;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/bumptech/glide/load/resource/gif/g;->g()Lcom/bumptech/glide/load/g;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ly0/f;->d0(Lcom/bumptech/glide/load/g;)Ly0/f;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->c0(Ly0/a;)Lcom/bumptech/glide/i;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->n0(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->next:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->j0(Lcom/bumptech/glide/request/target/e;)Lcom/bumptech/glide/request/target/e;

    .line 105
    :cond_4
    :goto_1
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrame:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->c(Landroid/graphics/Bitmap;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrame:Landroid/graphics/Bitmap;

    .line 13
    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isRunning:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isRunning:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isCleared:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->l()V

    .line 15
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isRunning:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->n()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->q()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->current:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestManager:Lcom/bumptech/glide/j;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 22
    .line 23
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->current:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->next:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestManager:Lcom/bumptech/glide/j;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->next:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestManager:Lcom/bumptech/glide/j;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 44
    .line 45
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->clear()V

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isCleared:Z

    .line 54
    return-void
.end method

.method b()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->getData()Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->current:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g$a;->i()Landroid/graphics/Bitmap;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrame:Landroid/graphics/Bitmap;

    .line 12
    :goto_0
    return-object v0
.end method

.method d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->current:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/bumptech/glide/load/resource/gif/g$a;->index:I

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    return v0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->g()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->height:I

    return v0
.end method

.method j()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->gifDecoder:Lcom/bumptech/glide/gifdecoder/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/a;->d()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrameSize:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->width:I

    return v0
.end method

.method m(Lcom/bumptech/glide/load/resource/gif/g$a;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isLoadPending:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isCleared:Z

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isRunning:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/g$a;->i()Landroid/graphics/Bitmap;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->n()V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->current:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->current:Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    move-result p1

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    :goto_0
    if-ltz p1, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Lcom/bumptech/glide/load/resource/gif/g$b;

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/gif/g$b;->a()V

    .line 60
    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->handler:Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->l()V

    .line 77
    return-void
.end method

.method o(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/bumptech/glide/load/m;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->transformation:Lcom/bumptech/glide/load/m;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrame:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestBuilder:Lcom/bumptech/glide/i;

    .line 19
    .line 20
    new-instance v1, Ly0/f;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ly0/f;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ly0/a;->W(Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->c0(Ly0/a;)Lcom/bumptech/glide/i;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->requestBuilder:Lcom/bumptech/glide/i;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/bumptech/glide/util/k;->g(Landroid/graphics/Bitmap;)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->firstFrameSize:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    move-result p1

    .line 44
    .line 45
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->width:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 49
    move-result p1

    .line 50
    .line 51
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->height:I

    .line 52
    return-void
.end method

.method r(Lcom/bumptech/glide/load/resource/gif/g$b;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->isCleared:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->p()V

    .line 29
    :cond_0
    return-void

    .line 30
    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "Cannot subscribe twice in a row"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1

    .line 38
    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "Cannot subscribe to a cleared frame loader"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method

.method s(Lcom/bumptech/glide/load/resource/gif/g$b;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->callbacks:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/g;->q()V

    .line 17
    :cond_0
    return-void
.end method
