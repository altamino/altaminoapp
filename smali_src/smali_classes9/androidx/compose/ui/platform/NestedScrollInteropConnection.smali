.class public final Landroidx/compose/ui/platform/NestedScrollInteropConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# instance fields
.field private final consumedScrollCache:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->view:Landroid/view/View;

    .line 11
    .line 12
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->n(Z)V

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 22
    const/4 v0, 0x2

    .line 23
    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->K0(Landroid/view/View;Z)V

    .line 30
    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->l(I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->s(I)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->l(I)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->s(I)V

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public a(JJLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)F

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 14
    move-result p5

    .line 15
    .line 16
    .line 17
    invoke-static {p5}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)F

    .line 18
    move-result p5

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, p5, v0}, Landroidx/core/view/NestedScrollingChildHelper;->a(FFZ)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 32
    move-result-wide p3

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->e()V

    .line 36
    .line 37
    .line 38
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public b(JJI)J
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 5
    .line 6
    .line 7
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->a(J)I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->q(II)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x6

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static/range {v2 .. v7}, Lkotlin/collections/l;->s([IIIIILjava/lang/Object;)V

    .line 29
    .line 30
    iget-object v8, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->f(F)I

    .line 38
    move-result v9

    .line 39
    .line 40
    .line 41
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->f(F)I

    .line 46
    move-result v10

    .line 47
    .line 48
    .line 49
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->f(F)I

    .line 54
    move-result v11

    .line 55
    .line 56
    .line 57
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->f(F)I

    .line 62
    move-result v12

    .line 63
    const/4 v13, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    .line 67
    move-result v14

    .line 68
    .line 69
    iget-object v15, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {v8 .. v15}, Landroidx/core/view/NestedScrollingChildHelper;->e(IIII[II[I)V

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 75
    .line 76
    move-wide/from16 v2, p3

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->b([IJ)J

    .line 80
    move-result-wide v1

    .line 81
    return-wide v1

    .line 82
    .line 83
    :cond_0
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 87
    move-result-wide v1

    .line 88
    return-wide v1
.end method

.method public c(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->d(F)F

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->b(FF)Z

    .line 22
    move-result p3

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 31
    move-result-wide p1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->e()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public d(JI)J
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->a(J)I

    .line 7
    move-result v2

    .line 8
    .line 9
    .line 10
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    .line 11
    move-result v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->q(II)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x6

    .line 24
    const/4 v7, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static/range {v2 .. v7}, Lkotlin/collections/l;->s([IIIIILjava/lang/Object;)V

    .line 28
    .line 29
    iget-object v8, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->nestedScrollChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 30
    .line 31
    .line 32
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->f(F)I

    .line 37
    move-result v9

    .line 38
    .line 39
    .line 40
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->f(F)I

    .line 45
    move-result v10

    .line 46
    .line 47
    iget-object v11, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 48
    const/4 v12, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->c(I)I

    .line 52
    move-result v13

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v8 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->d(II[I[II)Z

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/compose/ui/platform/NestedScrollInteropConnection;->consumedScrollCache:[I

    .line 58
    move-wide v2, p1

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->b([IJ)J

    .line 62
    move-result-wide v1

    .line 63
    return-wide v1

    .line 64
    .line 65
    :cond_0
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 69
    move-result-wide v1

    .line 70
    return-wide v1
.end method
