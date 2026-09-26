.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/foundation/gestures/TransformScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.TransformableStateKt$animateZoomBy$3"
    f = "TransformableState.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $previous:Lkotlin/jvm/internal/m0;

.field final synthetic $zoomFactor:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/m0;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0;",
            "F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$previous:Lkotlin/jvm/internal/m0;

    iput p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$zoomFactor:F

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$previous:Lkotlin/jvm/internal/m0;

    iget v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$zoomFactor:F

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;-><init>(Lkotlin/jvm/internal/m0;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Landroidx/compose/foundation/gestures/TransformScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/TransformScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/TransformScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->f(Landroidx/compose/foundation/gestures/TransformScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v9

    .line 7
    .line 8
    iget v0, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->label:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    iget-object v0, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroidx/compose/foundation/gestures/TransformScope;

    .line 33
    .line 34
    iget-object v2, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$previous:Lkotlin/jvm/internal/m0;

    .line 35
    .line 36
    iget v10, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 37
    const/4 v11, 0x0

    .line 38
    .line 39
    const-wide/16 v12, 0x0

    .line 40
    .line 41
    const-wide/16 v14, 0x0

    .line 42
    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x1e

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static/range {v10 .. v18}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget v3, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$zoomFactor:F

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    iget-object v4, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 60
    const/4 v5, 0x0

    .line 61
    .line 62
    new-instance v6, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;

    .line 63
    .line 64
    iget-object v7, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->$previous:Lkotlin/jvm/internal/m0;

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, v7, v0}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;-><init>(Lkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/TransformScope;)V

    .line 68
    const/4 v7, 0x4

    .line 69
    const/4 v10, 0x0

    .line 70
    .line 71
    iput v1, v8, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->label:I

    .line 72
    move-object v0, v2

    .line 73
    move-object v1, v3

    .line 74
    move-object v2, v4

    .line 75
    move v3, v5

    .line 76
    move-object v4, v6

    .line 77
    .line 78
    move-object/from16 v5, p0

    .line 79
    move v6, v7

    .line 80
    move-object v7, v10

    .line 81
    .line 82
    .line 83
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->k(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    if-ne v0, v9, :cond_2

    .line 87
    return-object v9

    .line 88
    .line 89
    :cond_2
    :goto_0
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 90
    return-object v0
.end method
