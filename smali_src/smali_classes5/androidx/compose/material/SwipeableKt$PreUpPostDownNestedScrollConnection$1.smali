.class public final Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableKt;->f(Landroidx/compose/material/SwipeableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/SwipeableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private final e(J)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private final f(F)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method


# virtual methods
.method public a(JJLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
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
    instance-of p1, p5, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    move-object p1, p5

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;

    .line 8
    .line 9
    iget p2, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    .line 10
    .line 11
    const/high16 v0, -0x80000000

    .line 12
    .line 13
    and-int v1, p2, v0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    sub-int/2addr p2, v0

    .line 17
    .line 18
    iput p2, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, p5}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;-><init>(Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object p5

    .line 31
    .line 32
    iget v0, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    .line 33
    const/4 v1, 0x1

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    iget-wide p3, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->J$0:J

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    iget-object p2, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 57
    .line 58
    .line 59
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 68
    move-result-wide v2

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v2, v3}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->e(J)F

    .line 72
    move-result v0

    .line 73
    .line 74
    iput-wide p3, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->J$0:J

    .line 75
    .line 76
    iput v1, p1, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0, p1}, Landroidx/compose/material/SwipeableState;->A(FLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-ne p1, p5, :cond_3

    .line 83
    return-object p5

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public b(JJI)J
    .locals 0

    .line 1
    .line 2
    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->a()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p5, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->e(II)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p3, p4}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->e(J)F

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/compose/material/SwipeableState;->z(F)F

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->f(F)J

    .line 26
    move-result-wide p1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 33
    move-result-wide p1

    .line 34
    :goto_0
    return-wide p1
.end method

.method public c(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
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
    instance-of v0, p3, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;-><init>(Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-wide p1, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->J$0:J

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 58
    move-result p3

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-static {p3, v2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v4, v5}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->e(J)F

    .line 70
    move-result p3

    .line 71
    const/4 v2, 0x0

    .line 72
    .line 73
    cmpg-float v2, p3, v2

    .line 74
    .line 75
    if-gez v2, :cond_3

    .line 76
    .line 77
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    check-cast v2, Ljava/lang/Number;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 91
    move-result v2

    .line 92
    .line 93
    iget-object v4, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Landroidx/compose/material/SwipeableState;->s()F

    .line 97
    move-result v4

    .line 98
    .line 99
    cmpl-float v2, v2, v4

    .line 100
    .line 101
    if-lez v2, :cond_3

    .line 102
    .line 103
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 104
    .line 105
    iput-wide p1, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->J$0:J

    .line 106
    .line 107
    iput v3, v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p3, v0}, Landroidx/compose/material/SwipeableState;->A(FLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 111
    move-result-object p3

    .line 112
    .line 113
    if-ne p3, v1, :cond_4

    .line 114
    return-object v1

    .line 115
    .line 116
    :cond_3
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 120
    move-result-wide p1

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 124
    move-result-object p1

    .line 125
    return-object p1
.end method

.method public d(JI)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->e(J)F

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    cmpg-float p2, p1, p2

    .line 8
    .line 9
    if-gez p2, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->a()I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->e(II)Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material/SwipeableState;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroidx/compose/material/SwipeableState;->z(F)F

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->f(F)J

    .line 31
    move-result-wide p1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 38
    move-result-wide p1

    .line 39
    :goto_0
    return-wide p1
.end method
