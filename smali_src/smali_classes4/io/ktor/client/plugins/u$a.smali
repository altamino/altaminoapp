.class public final Lio/ktor/client/plugins/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private delay:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public delayMillis:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "-",
            "Lio/ktor/client/plugins/u$b;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private maxRetries:I

.field private modifyRequest:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "-",
            "Lio/ktor/client/plugins/u$c;",
            "-",
            "Li7/d;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public shouldRetry:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/c;",
            "-",
            "Lio/ktor/client/statement/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public shouldRetryOnException:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/d;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lio/ktor/client/plugins/u$a$d;->INSTANCE:Lio/ktor/client/plugins/u$a$d;

    .line 6
    .line 7
    iput-object v0, p0, Lio/ktor/client/plugins/u$a;->modifyRequest:Le8/p;

    .line 8
    .line 9
    new-instance v0, Lio/ktor/client/plugins/u$a$a;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/u$a$a;-><init>(Lkotlin/coroutines/d;)V

    .line 14
    .line 15
    iput-object v0, p0, Lio/ktor/client/plugins/u$a;->delay:Le8/p;

    .line 16
    const/4 v0, 0x3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/u$a;->r(I)V

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    const-wide/16 v6, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    .line 28
    const/16 v9, 0xf

    .line 29
    const/4 v10, 0x0

    .line 30
    move-object v1, p0

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v10}, Lio/ktor/client/plugins/u$a;->e(Lio/ktor/client/plugins/u$a;DJJZILjava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/u$a;J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/u$a;->m(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic c(Lio/ktor/client/plugins/u$a;ZLe8/p;ILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    move p1, p4

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/u$a;->b(ZLe8/p;)V

    .line 9
    return-void
.end method

.method public static synthetic e(Lio/ktor/client/plugins/u$a;DJJZILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-wide v0, p1

    .line 9
    .line 10
    :goto_0
    and-int/lit8 v2, p8, 0x2

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    .line 15
    const-wide/32 v2, 0xea60

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-wide v2, p3

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v4, p8, 0x4

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    const-wide/16 v4, 0x3e8

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v4, p5

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v6, p8, 0x8

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    const/4 v6, 0x1

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v6, p7

    .line 33
    :goto_3
    move-wide p1, v0

    .line 34
    move-wide p3, v2

    .line 35
    move-wide p5, v4

    .line 36
    move p7, v6

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p7}, Lio/ktor/client/plugins/u$a;->d(DJJZ)V

    .line 40
    return-void
.end method

.method private final m(J)J
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lh8/d;->Default:Lh8/d$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lh8/d$a;->h(J)J

    .line 13
    move-result-wide v0

    .line 14
    :goto_0
    return-wide v0
.end method

.method public static synthetic p(Lio/ktor/client/plugins/u$a;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/u$a;->o(IZ)V

    .line 14
    return-void
.end method


# virtual methods
.method public final b(ZLe8/p;)V
    .locals 1
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/p<",
            "-",
            "Lio/ktor/client/plugins/u$b;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/plugins/u$a$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lio/ktor/client/plugins/u$a$b;-><init>(ZLe8/p;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/u$a;->t(Le8/p;)V

    .line 14
    return-void
.end method

.method public final d(DJJZ)V
    .locals 10

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmpl-double v0, p1, v0

    .line 5
    .line 6
    const-string v1, "Check failed."

    .line 7
    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v0, p3, v2

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    cmp-long v0, p5, v2

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lio/ktor/client/plugins/u$a$c;

    .line 21
    move-object v2, v0

    .line 22
    move-wide v3, p1

    .line 23
    move-wide v5, p3

    .line 24
    move-object v7, p0

    .line 25
    move-wide v8, p5

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v2 .. v9}, Lio/ktor/client/plugins/u$a$c;-><init>(DJLio/ktor/client/plugins/u$a;J)V

    .line 29
    move-object v2, p0

    .line 30
    .line 31
    move/from16 v1, p7

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0}, Lio/ktor/client/plugins/u$a;->b(ZLe8/p;)V

    .line 35
    return-void

    .line 36
    :cond_0
    move-object v2, p0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    :cond_1
    move-object v2, p0

    .line 48
    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0

    .line 58
    :cond_2
    move-object v2, p0

    .line 59
    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
.end method

.method public final f()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/u$a;->delay:Le8/p;

    return-object v0
.end method

.method public final g()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Lio/ktor/client/plugins/u$b;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/u$a;->delayMillis:Le8/p;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "delayMillis"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/plugins/u$a;->maxRetries:I

    return v0
.end method

.method public final i()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Lio/ktor/client/plugins/u$c;",
            "Li7/d;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/u$a;->modifyRequest:Le8/p;

    return-object v0
.end method

.method public final j()Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/q<",
            "Lio/ktor/client/plugins/u$f;",
            "Li7/c;",
            "Lio/ktor/client/statement/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/u$a;->shouldRetry:Le8/q;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "shouldRetry"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final k()Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/q<",
            "Lio/ktor/client/plugins/u$f;",
            "Li7/d;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/u$a;->shouldRetryOnException:Le8/q;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "shouldRetryOnException"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final l(Le8/p;)V
    .locals 1
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Lio/ktor/client/plugins/u$c;",
            "-",
            "Li7/d;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/plugins/u$a;->modifyRequest:Le8/p;

    return-void
.end method

.method public final n(ILe8/q;)V
    .locals 1
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/c;",
            "-",
            "Lio/ktor/client/statement/c;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lio/ktor/client/plugins/u$a;->maxRetries:I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/u$a;->v(Le8/q;)V

    .line 14
    return-void
.end method

.method public final o(IZ)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/u$a$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Lio/ktor/client/plugins/u$a$e;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/u$a;->q(ILe8/q;)V

    .line 9
    return-void
.end method

.method public final q(ILe8/q;)V
    .locals 1
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/d;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lio/ktor/client/plugins/u$a;->maxRetries:I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/u$a;->w(Le8/q;)V

    .line 14
    return-void
.end method

.method public final r(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/u$a;->s(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lio/ktor/client/plugins/u$a;->p(Lio/ktor/client/plugins/u$a;IZILjava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/ktor/client/plugins/u$a$f;->INSTANCE:Lio/ktor/client/plugins/u$a$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/u$a;->n(ILe8/q;)V

    .line 6
    return-void
.end method

.method public final t(Le8/p;)V
    .locals 1
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Lio/ktor/client/plugins/u$b;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/plugins/u$a;->delayMillis:Le8/p;

    return-void
.end method

.method public final u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/ktor/client/plugins/u$a;->maxRetries:I

    return-void
.end method

.method public final v(Le8/q;)V
    .locals 1
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/c;",
            "-",
            "Lio/ktor/client/statement/c;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/plugins/u$a;->shouldRetry:Le8/q;

    return-void
.end method

.method public final w(Le8/q;)V
    .locals 1
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/d;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/plugins/u$a;->shouldRetryOnException:Le8/q;

    return-void
.end method
