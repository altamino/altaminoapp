.class public Lcom/google/android/exoplayer2/source/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/h0$a$a;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/h0$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaTimeOffsetMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/h0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/b0$b;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/b0$b;J)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/h0$a$a;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaTimeOffsetMs:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/h0$a;->m(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->l(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h0$a;->j(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->n(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->k(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method private g(J)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    cmp-long v2, p1, v0

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaTimeOffsetMs:J

    .line 17
    add-long/2addr v0, p1

    .line 18
    :goto_0
    return-wide v0
.end method

.method private synthetic j(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/x;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/h0;->G(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/x;)V

    .line 8
    return-void
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->j(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 8
    return-void
.end method

.method private synthetic l(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->S(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 8
    return-void
.end method

.method private synthetic m(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    move-object v0, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/h0;->s(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 13
    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->I(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 8
    return-void
.end method


# virtual methods
.method public f(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/h0$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public h(ILcom/google/android/exoplayer2/a2;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    new-instance v11, Lcom/google/android/exoplayer2/source/x;

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    move-wide/from16 v3, p5

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 10
    move-result-wide v7

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    move-object v1, v11

    .line 17
    move v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move v5, p3

    .line 20
    .line 21
    move-object/from16 v6, p4

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/h0$a;->i(Lcom/google/android/exoplayer2/source/x;)V

    .line 28
    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/x;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->listener:Lcom/google/android/exoplayer2/source/h0;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/source/d0;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/source/d0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/x;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    new-instance v11, Lcom/google/android/exoplayer2/source/x;

    .line 4
    .line 5
    move-wide/from16 v1, p7

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 9
    move-result-wide v7

    .line 10
    .line 11
    move-wide/from16 v1, p9

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 28
    move-object v1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/h0$a;->p(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 32
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->listener:Lcom/google/android/exoplayer2/source/h0;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/source/g0;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/g0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    new-instance v11, Lcom/google/android/exoplayer2/source/x;

    .line 4
    .line 5
    move-wide/from16 v1, p7

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 9
    move-result-wide v7

    .line 10
    .line 11
    move-wide/from16 v1, p9

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 28
    move-object v1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/h0$a;->r(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 32
    return-void
.end method

.method public r(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->listener:Lcom/google/android/exoplayer2/source/h0;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/source/f0;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/f0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    new-instance v11, Lcom/google/android/exoplayer2/source/x;

    .line 4
    .line 5
    move-wide/from16 v1, p7

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 9
    move-result-wide v7

    .line 10
    .line 11
    move-wide/from16 v1, p9

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 28
    move-object v1, p1

    .line 29
    .line 30
    move-object/from16 v2, p11

    .line 31
    .line 32
    move/from16 v3, p12

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplayer2/source/h0$a;->t(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 36
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 19
    .line 20
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->listener:Lcom/google/android/exoplayer2/source/h0;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v9, Lcom/google/android/exoplayer2/source/e0;

    .line 25
    move-object v2, v9

    .line 26
    move-object v3, p0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p2

    .line 29
    move-object v7, p3

    .line 30
    move v8, p4

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/e0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    new-instance v11, Lcom/google/android/exoplayer2/source/x;

    .line 4
    .line 5
    move-wide/from16 v1, p7

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 9
    move-result-wide v7

    .line 10
    .line 11
    move-wide/from16 v1, p9

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->g(J)J

    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 28
    move-object v1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/h0$a;->v(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 32
    return-void
.end method

.method public v(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->listener:Lcom/google/android/exoplayer2/source/h0;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/source/c0;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/c0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public w(Lcom/google/android/exoplayer2/source/h0;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->listener:Lcom/google/android/exoplayer2/source/h0;

    .line 21
    .line 22
    if-ne v2, p1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public x(ILcom/google/android/exoplayer2/source/b0$b;J)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    move-object v0, v6

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/h0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/b0$b;J)V

    .line 12
    return-object v6
.end method
