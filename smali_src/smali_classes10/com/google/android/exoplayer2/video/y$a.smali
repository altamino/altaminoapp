.class public final Lcom/google/android/exoplayer2/video/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listener:Lcom/google/android/exoplayer2/video/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/y;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/video/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroid/os/Handler;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/y$a;->s(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/y$a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/y$a;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/y$a;->u(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/y$a;->w(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/video/y$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/y$a;->t(IJ)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/y$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/video/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/y$a;->z(Lcom/google/android/exoplayer2/video/a0;)V

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/video/y$a;->v(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/video/y$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/y$a;->x(JI)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/exoplayer2/video/y;

    .line 10
    move-object v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    .line 14
    .line 15
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/y;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 16
    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/y;->b(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method private synthetic s(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/e;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/y;->u(Lcom/google/android/exoplayer2/decoder/e;)V

    .line 15
    return-void
.end method

.method private synthetic t(IJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/y;->onDroppedFrames(IJ)V

    .line 12
    return-void
.end method

.method private synthetic u(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/y;->A(Lcom/google/android/exoplayer2/decoder/e;)V

    .line 12
    return-void
.end method

.method private synthetic v(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/y;->B(Lcom/google/android/exoplayer2/a2;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/video/y;->t(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 23
    return-void
.end method

.method private synthetic w(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/y;->h(Ljava/lang/Object;J)V

    .line 12
    return-void
.end method

.method private synthetic x(JI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/y;->e(JI)V

    .line 12
    return-void
.end method

.method private synthetic y(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/y;->g(Ljava/lang/Exception;)V

    .line 12
    return-void
.end method

.method private synthetic z(Lcom/google/android/exoplayer2/video/a0;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->listener:Lcom/google/android/exoplayer2/video/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/video/y;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/y;->k(Lcom/google/android/exoplayer2/video/a0;)V

    .line 12
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v3, Lcom/google/android/exoplayer2/video/v;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/exoplayer2/video/v;-><init>(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/Object;J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/s;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/s;-><init>(Lcom/google/android/exoplayer2/video/y$a;JI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/u;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/u;-><init>(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public D(Lcom/google/android/exoplayer2/video/a0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/r;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/r;-><init>(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/video/a0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v8, Lcom/google/android/exoplayer2/video/x;

    .line 7
    move-object v1, v8

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-wide v4, p2

    .line 11
    move-wide v6, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/x;-><init>(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/String;JJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/q;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/q;-><init>(Lcom/google/android/exoplayer2/video/y$a;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/e;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/video/o;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/o;-><init>(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/w;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w;-><init>(Lcom/google/android/exoplayer2/video/y$a;IJ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/p;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/p;-><init>(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/decoder/e;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/decoder/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y$a;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/video/t;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/video/t;-><init>(Lcom/google/android/exoplayer2/video/y$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method
