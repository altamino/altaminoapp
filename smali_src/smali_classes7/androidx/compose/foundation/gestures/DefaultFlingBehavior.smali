.class final Landroidx/compose/foundation/gestures/DefaultFlingBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# instance fields
.field private final flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/DecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "flingDecay"

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
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 17
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    instance-of v2, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    move-object v2, v1

    .line 10
    .line 11
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;

    .line 12
    .line 13
    iget v3, v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    sub-int/2addr v3, v4

    .line 21
    .line 22
    iput v3, v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 23
    :goto_0
    move-object v7, v2

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;-><init>(Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Lkotlin/coroutines/d;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :goto_1
    iget-object v1, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->result:Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    iget v3, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 39
    const/4 v4, 0x1

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    iget-object v2, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Lkotlin/jvm/internal/m0;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v1

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 66
    move-result v1

    .line 67
    .line 68
    const/high16 v3, 0x3f800000    # 1.0f

    .line 69
    .line 70
    cmpl-float v1, v1, v3

    .line 71
    .line 72
    if-lez v1, :cond_4

    .line 73
    .line 74
    new-instance v1, Lkotlin/jvm/internal/m0;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 78
    .line 79
    move/from16 v3, p2

    .line 80
    .line 81
    iput v3, v1, Lkotlin/jvm/internal/m0;->element:F

    .line 82
    .line 83
    new-instance v5, Lkotlin/jvm/internal/m0;

    .line 84
    .line 85
    .line 86
    invoke-direct {v5}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 87
    const/4 v8, 0x0

    .line 88
    .line 89
    const-wide/16 v10, 0x0

    .line 90
    .line 91
    const-wide/16 v12, 0x0

    .line 92
    const/4 v14, 0x0

    .line 93
    .line 94
    const/16 v15, 0x1c

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    move/from16 v9, p2

    .line 99
    .line 100
    .line 101
    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    iget-object v6, v0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 105
    const/4 v8, 0x0

    .line 106
    .line 107
    new-instance v9, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 108
    .line 109
    move-object/from16 v10, p1

    .line 110
    .line 111
    .line 112
    invoke-direct {v9, v5, v10, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(Lkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/m0;)V

    .line 113
    const/4 v10, 0x2

    .line 114
    const/4 v11, 0x0

    .line 115
    .line 116
    iput-object v1, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput v4, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 119
    move-object v4, v6

    .line 120
    move v5, v8

    .line 121
    move-object v6, v9

    .line 122
    move v8, v10

    .line 123
    move-object v9, v11

    .line 124
    .line 125
    .line 126
    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    if-ne v3, v2, :cond_3

    .line 130
    return-object v2

    .line 131
    :cond_3
    move-object v2, v1

    .line 132
    .line 133
    :goto_2
    iget v1, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 134
    goto :goto_3

    .line 135
    .line 136
    :cond_4
    move/from16 v3, p2

    .line 137
    move v1, v3

    .line 138
    .line 139
    .line 140
    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 141
    move-result-object v1

    .line 142
    return-object v1
.end method
