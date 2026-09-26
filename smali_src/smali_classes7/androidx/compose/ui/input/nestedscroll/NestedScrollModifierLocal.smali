.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;",
        ">;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNestedScrollModifierLocal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NestedScrollModifierLocal.kt\nandroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,100:1\n76#2:101\n102#2,2:102\n*S KotlinDebug\n*F\n+ 1 NestedScrollModifierLocal.kt\nandroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal\n*L\n45#1:101\n45#1:102,2\n*E\n"
.end annotation


# instance fields
.field private final connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "dispatcher"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "connection"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 18
    .line 19
    new-instance p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->g(Le8/a;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    const/4 p2, 0x2

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->parent$delegate:Landroidx/compose/runtime/MutableState;

    .line 34
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;)Lkotlinx/coroutines/o0;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->g()Lkotlinx/coroutines/o0;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g()Lkotlinx/coroutines/o0;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->g()Lkotlinx/coroutines/o0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->f()Lkotlinx/coroutines/o0;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    return-object v0

    .line 22
    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method private final h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->parent$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 9
    return-object v0
.end method

.method private final j(Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->parent$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(JJLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 15
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
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    move-object v2, v1

    .line 9
    .line 10
    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    sub-int/2addr v3, v4

    .line 20
    .line 21
    iput v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->label:I

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, p0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;Lkotlin/coroutines/d;)V

    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 33
    move-result-object v9

    .line 34
    .line 35
    iget v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->label:I

    .line 36
    const/4 v10, 0x2

    .line 37
    const/4 v4, 0x1

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v4, :cond_2

    .line 42
    .line 43
    if-ne v3, v10, :cond_1

    .line 44
    .line 45
    iget-wide v2, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->J$0:J

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v1

    .line 58
    .line 59
    :cond_2
    iget-wide v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->J$1:J

    .line 60
    .line 61
    iget-wide v5, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->J$0:J

    .line 62
    .line 63
    iget-object v7, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v7, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 69
    move-wide v13, v3

    .line 70
    move-wide v11, v5

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    iget-object v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 77
    .line 78
    iput-object v0, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    move-wide/from16 v11, p1

    .line 81
    .line 82
    iput-wide v11, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->J$0:J

    .line 83
    .line 84
    move-wide/from16 v13, p3

    .line 85
    .line 86
    iput-wide v13, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->J$1:J

    .line 87
    .line 88
    iput v4, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->label:I

    .line 89
    .line 90
    move-wide/from16 v4, p1

    .line 91
    .line 92
    move-wide/from16 v6, p3

    .line 93
    move-object v8, v2

    .line 94
    .line 95
    .line 96
    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->a(JJLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    if-ne v1, v9, :cond_4

    .line 100
    return-object v9

    .line 101
    :cond_4
    move-object v7, v0

    .line 102
    .line 103
    :goto_1
    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 107
    move-result-wide v4

    .line 108
    .line 109
    .line 110
    invoke-direct {v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-static {v11, v12, v4, v5}, Landroidx/compose/ui/unit/Velocity;->l(JJ)J

    .line 117
    move-result-wide v6

    .line 118
    .line 119
    .line 120
    invoke-static {v13, v14, v4, v5}, Landroidx/compose/ui/unit/Velocity;->k(JJ)J

    .line 121
    move-result-wide v11

    .line 122
    const/4 v1, 0x0

    .line 123
    .line 124
    iput-object v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    iput-wide v4, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->J$0:J

    .line 127
    .line 128
    iput v10, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPostFling$1;->label:I

    .line 129
    move-wide v13, v4

    .line 130
    move-wide v4, v6

    .line 131
    move-wide v6, v11

    .line 132
    move-object v8, v2

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->a(JJLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    if-ne v1, v9, :cond_5

    .line 139
    return-object v9

    .line 140
    :cond_5
    move-wide v2, v13

    .line 141
    .line 142
    :goto_2
    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 146
    move-result-wide v4

    .line 147
    move-wide v13, v2

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move-wide v13, v4

    .line 150
    .line 151
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 155
    move-result-wide v4

    .line 156
    .line 157
    .line 158
    :goto_3
    invoke-static {v13, v14, v4, v5}, Landroidx/compose/ui/unit/Velocity;->l(JJ)J

    .line 159
    move-result-wide v1

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 163
    move-result-object v1

    .line 164
    return-object v1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(JJI)J
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move v5, p5

    .line 6
    .line 7
    .line 8
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->b(JJI)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 19
    move-result-wide v3

    .line 20
    .line 21
    .line 22
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 23
    move-result-wide v5

    .line 24
    move v7, p5

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->b(JJI)J

    .line 28
    move-result-wide p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 39
    move-result-wide p1

    .line 40
    return-wide p1
.end method

.method public c(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
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
    instance-of v0, p3, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->label:I

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
    iput v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->J$0:J

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 46
    goto :goto_4

    .line 47
    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    .line 56
    :cond_2
    iget-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->J$0:J

    .line 57
    .line 58
    iget-object v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    if-eqz p3, :cond_5

    .line 74
    .line 75
    iput-object p0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->J$0:J

    .line 78
    .line 79
    iput v4, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->label:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1, p2, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->c(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    if-ne p3, v1, :cond_4

    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object v2, p0

    .line 88
    .line 89
    :goto_1
    check-cast p3, Landroidx/compose/ui/unit/Velocity;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 93
    move-result-wide v4

    .line 94
    :goto_2
    move-wide v6, p1

    .line 95
    move-wide p1, v4

    .line 96
    move-wide v4, v6

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_5
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 103
    move-result-wide v4

    .line 104
    move-object v2, p0

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :goto_3
    iget-object p3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 108
    .line 109
    .line 110
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/unit/Velocity;->k(JJ)J

    .line 111
    move-result-wide v4

    .line 112
    const/4 v2, 0x0

    .line 113
    .line 114
    iput-object v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->J$0:J

    .line 117
    .line 118
    iput v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal$onPreFling$1;->label:I

    .line 119
    .line 120
    .line 121
    invoke-interface {p3, v4, v5, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->c(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 122
    move-result-object p3

    .line 123
    .line 124
    if-ne p3, v1, :cond_6

    .line 125
    return-object v1

    .line 126
    .line 127
    :cond_6
    :goto_4
    check-cast p3, Landroidx/compose/ui/unit/Velocity;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 131
    move-result-wide v0

    .line 132
    .line 133
    .line 134
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->l(JJ)J

    .line 135
    move-result-wide p1

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 139
    move-result-object p1

    .line 140
    return-object p1
.end method

.method public d(JI)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->d(JI)J

    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 23
    move-result-wide p1

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->d(JI)J

    .line 27
    move-result-wide p1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 31
    move-result-wide p1

    .line 32
    return-wide p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->i()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public z0(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->j(Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;)V

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;->h()Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->i(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V

    .line 28
    return-void
.end method
