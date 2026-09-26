.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsConnection.android.kt\nandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,708:1\n314#2,11:709\n*S KotlinDebug\n*F\n+ 1 WindowInsetsConnection.android.kt\nandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection\n*L\n197#1:709,11\n*E\n"
.end annotation


# instance fields
.field private animationController:Landroid/view/WindowInsetsAnimationController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private animationJob:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cancellationSignal:Landroid/os/CancellationSignal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private continuation:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "-",
            "Landroid/view/WindowInsetsAnimationController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isControllerRequested:Z

.field private partialConsumption:F

.field private final sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroid/view/View;Landroidx/compose/foundation/layout/SideCalculator;Landroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/AndroidWindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/SideCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "windowInsets"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "view"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "sideCalculator"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "density"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->view:Landroid/view/View;

    .line 28
    .line 29
    iput-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 30
    .line 31
    iput-object p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->density:Landroidx/compose/ui/unit/Density;

    .line 32
    .line 33
    new-instance p1, Landroid/os/CancellationSignal;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 39
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->l(F)V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;JFZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->o(JFZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)Lkotlinx/coroutines/b2;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->q()V

    .line 4
    return-void
.end method

.method public static final synthetic i(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 3
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlinx/coroutines/b2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 3
    return-void
.end method

.method public static final synthetic k(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lkotlinx/coroutines/o;

    .line 3
    return-void
.end method

.method private final l(F)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "it.currentInsets"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v1, p1}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/l;->a(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FF)V

    .line 30
    :cond_0
    return-void
.end method

.method private final m()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/foundation/layout/m;->a(Landroid/view/WindowInsetsAnimationController;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/k;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lkotlinx/coroutines/o;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget-object v3, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$animationEnded$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$animationEnded$1;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/o;->B(Ljava/lang/Object;Le8/l;)V

    .line 37
    .line 38
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lkotlinx/coroutines/o;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0, v1, v0}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 46
    .line 47
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 48
    const/4 v0, 0x0

    .line 49
    .line 50
    iput v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 51
    const/4 v0, 0x0

    .line 52
    .line 53
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 54
    return-void
.end method

.method private final o(JFZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JFZ",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p3

    .line 5
    .line 6
    move/from16 v2, p4

    .line 7
    .line 8
    move-object/from16 v3, p5

    .line 9
    .line 10
    instance-of v4, v3, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    move-object v4, v3

    .line 14
    .line 15
    check-cast v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    .line 16
    .line 17
    iget v5, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 18
    .line 19
    const/high16 v6, -0x80000000

    .line 20
    .line 21
    and-int v7, v5, v6

    .line 22
    .line 23
    if-eqz v7, :cond_0

    .line 24
    sub-int/2addr v5, v6

    .line 25
    .line 26
    iput v5, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v0, v3}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/d;)V

    .line 33
    .line 34
    :goto_0
    iget-object v3, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->result:Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    iget v6, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x1

    .line 46
    .line 47
    if-eqz v6, :cond_4

    .line 48
    .line 49
    if-eq v6, v11, :cond_3

    .line 50
    .line 51
    if-eq v6, v8, :cond_2

    .line 52
    .line 53
    if-ne v6, v7, :cond_1

    .line 54
    .line 55
    iget-wide v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 56
    .line 57
    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v1

    .line 73
    .line 74
    :cond_2
    iget-wide v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 75
    .line 76
    iget-object v5, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Lkotlin/jvm/internal/m0;

    .line 79
    .line 80
    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_3
    iget v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->F$0:F

    .line 90
    .line 91
    iget-wide v12, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 92
    .line 93
    iget-object v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    iget-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v9, v11, v9}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 110
    .line 111
    :cond_5
    iput-object v9, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 112
    .line 113
    iput v10, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 114
    .line 115
    cmpg-float v3, v1, v10

    .line 116
    .line 117
    if-nez v3, :cond_6

    .line 118
    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    :cond_6
    iget-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 122
    .line 123
    if-nez v3, :cond_8

    .line 124
    .line 125
    iget-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g()Z

    .line 129
    move-result v3

    .line 130
    .line 131
    if-ne v3, v2, :cond_8

    .line 132
    .line 133
    :cond_7
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 137
    move-result-wide v1

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 141
    move-result-object v1

    .line 142
    return-object v1

    .line 143
    .line 144
    :cond_8
    iput-object v0, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    move-wide/from16 v2, p1

    .line 147
    .line 148
    iput-wide v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 149
    .line 150
    iput v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->F$0:F

    .line 151
    .line 152
    iput v11, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v4}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->p(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 156
    move-result-object v6

    .line 157
    .line 158
    if-ne v6, v5, :cond_9

    .line 159
    return-object v5

    .line 160
    :cond_9
    move-wide v12, v2

    .line 161
    move-object v3, v6

    .line 162
    move-object v2, v0

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-static {v3}, Landroidx/compose/foundation/layout/g;->a(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimationController;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    if-nez v3, :cond_a

    .line 169
    .line 170
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 174
    move-result-wide v1

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 178
    move-result-object v1

    .line 179
    return-object v1

    .line 180
    .line 181
    :cond_a
    iget-object v6, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Landroidx/compose/foundation/layout/h;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 185
    move-result-object v14

    .line 186
    .line 187
    const-string v15, "animationController.hiddenStateInsets"

    .line 188
    .line 189
    .line 190
    invoke-static {v14, v15}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v6, v14}, Landroidx/compose/foundation/layout/SideCalculator;->f(Landroid/graphics/Insets;)I

    .line 194
    move-result v6

    .line 195
    .line 196
    iget-object v14, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 197
    .line 198
    .line 199
    invoke-static {v3}, Landroidx/compose/foundation/layout/i;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 200
    move-result-object v15

    .line 201
    .line 202
    const-string v11, "animationController.shownStateInsets"

    .line 203
    .line 204
    .line 205
    invoke-static {v15, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v14, v15}, Landroidx/compose/foundation/layout/SideCalculator;->f(Landroid/graphics/Insets;)I

    .line 209
    move-result v11

    .line 210
    .line 211
    .line 212
    invoke-static {v3}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 213
    move-result-object v14

    .line 214
    .line 215
    const-string v15, "animationController.currentInsets"

    .line 216
    .line 217
    .line 218
    invoke-static {v14, v15}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    iget-object v15, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 221
    .line 222
    .line 223
    invoke-interface {v15, v14}, Landroidx/compose/foundation/layout/SideCalculator;->f(Landroid/graphics/Insets;)I

    .line 224
    move-result v15

    .line 225
    .line 226
    cmpg-float v14, v1, v10

    .line 227
    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    if-gtz v14, :cond_b

    .line 231
    .line 232
    if-eq v15, v6, :cond_c

    .line 233
    .line 234
    :cond_b
    cmpl-float v14, v1, v10

    .line 235
    .line 236
    if-ltz v14, :cond_e

    .line 237
    .line 238
    if-ne v15, v11, :cond_e

    .line 239
    .line 240
    :cond_c
    if-ne v15, v11, :cond_d

    .line 241
    const/4 v11, 0x1

    .line 242
    goto :goto_2

    .line 243
    .line 244
    :cond_d
    move/from16 v11, v16

    .line 245
    .line 246
    .line 247
    :goto_2
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/k;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 248
    .line 249
    iput-object v9, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 250
    .line 251
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 255
    move-result-wide v1

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 259
    move-result-object v1

    .line 260
    return-object v1

    .line 261
    .line 262
    :cond_e
    new-instance v9, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;

    .line 263
    .line 264
    iget-object v14, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->density:Landroidx/compose/ui/unit/Density;

    .line 265
    .line 266
    .line 267
    invoke-direct {v9, v14}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 268
    int-to-float v14, v15

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9, v1}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->f(F)F

    .line 272
    move-result v17

    .line 273
    .line 274
    add-float v14, v14, v17

    .line 275
    int-to-float v8, v6

    .line 276
    .line 277
    sub-float v17, v14, v8

    .line 278
    .line 279
    sub-int v10, v11, v6

    .line 280
    int-to-float v10, v10

    .line 281
    .line 282
    div-float v17, v17, v10

    .line 283
    .line 284
    const/high16 v10, 0x3f000000    # 0.5f

    .line 285
    .line 286
    cmpl-float v10, v17, v10

    .line 287
    .line 288
    if-lez v10, :cond_f

    .line 289
    .line 290
    const/16 v23, 0x1

    .line 291
    goto :goto_3

    .line 292
    .line 293
    :cond_f
    move/from16 v23, v16

    .line 294
    .line 295
    :goto_3
    if-eqz v23, :cond_10

    .line 296
    .line 297
    move/from16 v17, v11

    .line 298
    goto :goto_4

    .line 299
    .line 300
    :cond_10
    move/from16 v17, v6

    .line 301
    :goto_4
    int-to-float v10, v11

    .line 302
    .line 303
    cmpl-float v10, v14, v10

    .line 304
    .line 305
    if-gtz v10, :cond_11

    .line 306
    .line 307
    cmpg-float v8, v14, v8

    .line 308
    .line 309
    if-gez v8, :cond_12

    .line 310
    :cond_11
    move v8, v15

    .line 311
    goto :goto_6

    .line 312
    .line 313
    :cond_12
    new-instance v6, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;

    .line 314
    .line 315
    const/16 v21, 0x0

    .line 316
    move-object v14, v6

    .line 317
    move v8, v15

    .line 318
    move-object v15, v2

    .line 319
    .line 320
    move/from16 v16, v8

    .line 321
    .line 322
    move/from16 v18, v1

    .line 323
    .line 324
    move-object/from16 v19, v3

    .line 325
    .line 326
    move/from16 v20, v23

    .line 327
    .line 328
    .line 329
    invoke-direct/range {v14 .. v21}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;IIFLandroid/view/WindowInsetsAnimationController;ZLkotlin/coroutines/d;)V

    .line 330
    .line 331
    iput-object v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 332
    .line 333
    iput-wide v12, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 334
    .line 335
    iput v7, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 336
    .line 337
    .line 338
    invoke-static {v6, v4}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 339
    move-result-object v1

    .line 340
    .line 341
    if-ne v1, v5, :cond_13

    .line 342
    return-object v5

    .line 343
    :cond_13
    move-object v4, v2

    .line 344
    move-wide v1, v12

    .line 345
    .line 346
    :goto_5
    iget-object v3, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 347
    const/4 v4, 0x0

    .line 348
    .line 349
    .line 350
    invoke-interface {v3, v1, v2, v4}, Landroidx/compose/foundation/layout/SideCalculator;->g(JF)J

    .line 351
    move-result-wide v1

    .line 352
    .line 353
    .line 354
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 355
    move-result-object v1

    .line 356
    return-object v1

    .line 357
    .line 358
    :goto_6
    new-instance v7, Lkotlin/jvm/internal/m0;

    .line 359
    .line 360
    .line 361
    invoke-direct {v7}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 362
    .line 363
    new-instance v10, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2;

    .line 364
    .line 365
    const/16 v24, 0x0

    .line 366
    move-object v14, v10

    .line 367
    move-object v15, v2

    .line 368
    .line 369
    move/from16 v16, v8

    .line 370
    .line 371
    move/from16 v17, v1

    .line 372
    .line 373
    move-object/from16 v18, v9

    .line 374
    .line 375
    move/from16 v19, v6

    .line 376
    .line 377
    move/from16 v20, v11

    .line 378
    .line 379
    move-object/from16 v21, v7

    .line 380
    .line 381
    move-object/from16 v22, v3

    .line 382
    .line 383
    .line 384
    invoke-direct/range {v14 .. v24}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;IFLandroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;IILkotlin/jvm/internal/m0;Landroid/view/WindowInsetsAnimationController;ZLkotlin/coroutines/d;)V

    .line 385
    .line 386
    iput-object v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v7, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$1:Ljava/lang/Object;

    .line 389
    .line 390
    iput-wide v12, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 391
    const/4 v1, 0x2

    .line 392
    .line 393
    iput v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 394
    .line 395
    .line 396
    invoke-static {v10, v4}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 397
    move-result-object v1

    .line 398
    .line 399
    if-ne v1, v5, :cond_14

    .line 400
    return-object v5

    .line 401
    :cond_14
    move-object v4, v2

    .line 402
    move-object v5, v7

    .line 403
    move-wide v1, v12

    .line 404
    .line 405
    :goto_7
    iget-object v3, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 406
    .line 407
    iget v4, v5, Lkotlin/jvm/internal/m0;->element:F

    .line 408
    .line 409
    .line 410
    invoke-interface {v3, v1, v2, v4}, Landroidx/compose/foundation/layout/SideCalculator;->g(JF)J

    .line 411
    move-result-wide v1

    .line 412
    .line 413
    .line 414
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 415
    move-result-object v1

    .line 416
    return-object v1
.end method

.method private final p(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroid/view/WindowInsetsAnimationController;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lkotlinx/coroutines/p;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlinx/coroutines/o;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->h(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 37
    :cond_0
    return-object v0
.end method

.method private final q()V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->view:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/foundation/layout/n;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f()I

    .line 21
    move-result v2

    .line 22
    .line 23
    const-wide/16 v3, -0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/compose/foundation/layout/o;->a(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimationControlListener;

    .line 30
    move-result-object v7

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/p;->a(Landroid/view/WindowInsetsController;IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method private final r(JF)J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    .line 11
    iput-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    cmpg-float v3, p3, v2

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    cmpl-float v4, p3, v2

    .line 28
    .line 29
    if-lez v4, :cond_2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    .line 33
    :goto_0
    if-ne v3, v1, :cond_3

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    :goto_1
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 41
    move-result-wide p1

    .line 42
    return-wide p1

    .line 43
    .line 44
    :cond_3
    if-nez v0, :cond_4

    .line 45
    .line 46
    iput v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->q()V

    .line 50
    .line 51
    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->c(J)J

    .line 55
    move-result-wide p1

    .line 56
    return-wide p1

    .line 57
    .line 58
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Landroidx/compose/foundation/layout/h;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    const-string v5, "animationController.hiddenStateInsets"

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v3}, Landroidx/compose/foundation/layout/SideCalculator;->f(Landroid/graphics/Insets;)I

    .line 71
    move-result v1

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroidx/compose/foundation/layout/i;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    const-string v6, "animationController.shownStateInsets"

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3, v5}, Landroidx/compose/foundation/layout/SideCalculator;->f(Landroid/graphics/Insets;)I

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    const-string v6, "animationController.currentInsets"

    .line 93
    .line 94
    .line 95
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    iget-object v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 98
    .line 99
    .line 100
    invoke-interface {v6, v5}, Landroidx/compose/foundation/layout/SideCalculator;->f(Landroid/graphics/Insets;)I

    .line 101
    move-result v6

    .line 102
    .line 103
    if-lez v4, :cond_5

    .line 104
    move v4, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move v4, v1

    .line 107
    .line 108
    :goto_2
    if-ne v6, v4, :cond_6

    .line 109
    .line 110
    iput v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 111
    .line 112
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 116
    move-result-wide p1

    .line 117
    return-wide p1

    .line 118
    :cond_6
    int-to-float v4, v6

    .line 119
    add-float/2addr v4, p3

    .line 120
    .line 121
    iget p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 122
    add-float/2addr v4, p3

    .line 123
    .line 124
    .line 125
    invoke-static {v4}, Lg8/a;->c(F)I

    .line 126
    move-result p3

    .line 127
    .line 128
    .line 129
    invoke-static {p3, v1, v3}, Lj8/m;->n(III)I

    .line 130
    move-result p3

    .line 131
    .line 132
    .line 133
    invoke-static {v4}, Lg8/a;->c(F)I

    .line 134
    move-result v1

    .line 135
    int-to-float v1, v1

    .line 136
    sub-float/2addr v4, v1

    .line 137
    .line 138
    iput v4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 139
    .line 140
    if-eq p3, v6, :cond_7

    .line 141
    .line 142
    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v5, p3}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    .line 146
    move-result-object p3

    .line 147
    .line 148
    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    .line 150
    .line 151
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/foundation/layout/l;->a(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FF)V

    .line 152
    .line 153
    :cond_7
    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 154
    .line 155
    .line 156
    invoke-interface {p3, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->c(J)J

    .line 157
    move-result-wide p1

    .line 158
    return-wide p1
.end method


# virtual methods
.method public a(JJLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
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
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2, v0}, Landroidx/compose/foundation/layout/SideCalculator;->a(FF)F

    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    move-object v1, p0

    .line 17
    move-wide v2, p3

    .line 18
    move-object v6, p5

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->o(JFZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public b(JJI)J
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 10
    move-result p5

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2, p5}, Landroidx/compose/foundation/layout/SideCalculator;->a(FF)F

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p3, p4, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->r(JF)J

    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method public c(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
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
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/layout/SideCalculator;->b(FF)F

    .line 14
    move-result v6

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v3, p0

    .line 17
    move-wide v4, p1

    .line 18
    move-object v8, p3

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->o(JFZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public d(JI)J
    .locals 2

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, v0, v1}, Landroidx/compose/foundation/layout/SideCalculator;->b(FF)F

    .line 14
    move-result p3

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->r(JF)J

    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method public final n()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lkotlinx/coroutines/o;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$dispose$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$dispose$1;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/o;->B(Ljava/lang/Object;Le8/l;)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/b2;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/foundation/layout/h;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    xor-int/2addr v1, v2

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/k;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 39
    :cond_2
    return-void
.end method

.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->m()V

    .line 4
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "controller"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->m()V

    .line 9
    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "controller"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lkotlinx/coroutines/o;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$onReady$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$onReady$1;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/o;->B(Ljava/lang/Object;Le8/l;)V

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lkotlinx/coroutines/o;

    .line 23
    return-void
.end method
