.class final Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableState;->i(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/foundation/gestures/DragScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.material.SwipeableState$animateInternalToOffset$2"
    f = "Swipeable.kt"
    l = {
        0xdf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $spec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/material/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    iput p2, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$target:F

    iput-object p3, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$spec:Landroidx/compose/animation/core/AnimationSpec;

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

    new-instance v0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;

    iget-object v1, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    iget v2, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$target:F

    iget-object v3, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$spec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;-><init>(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/DragScope;
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
            "Landroidx/compose/foundation/gestures/DragScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/DragScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->f(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->label:I

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/foundation/gestures/DragScope;

    .line 36
    .line 37
    new-instance v3, Lkotlin/jvm/internal/m0;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Landroidx/compose/material/SwipeableState;->b(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    check-cast v4, Ljava/lang/Number;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 56
    move-result v4

    .line 57
    .line 58
    iput v4, v3, Lkotlin/jvm/internal/m0;->element:F

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Landroidx/compose/material/SwipeableState;->c(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    iget v5, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$target:F

    .line 67
    .line 68
    .line 69
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    iget-object v4, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v2}, Landroidx/compose/material/SwipeableState;->f(Landroidx/compose/material/SwipeableState;Z)V

    .line 79
    .line 80
    :try_start_1
    iget v4, v3, Lkotlin/jvm/internal/m0;->element:F

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v6, 0x2

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v5, v6, v10}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    iget v5, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$target:F

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    iget-object v6, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->$spec:Landroidx/compose/animation/core/AnimationSpec;

    .line 95
    const/4 v7, 0x0

    .line 96
    .line 97
    new-instance v8, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2$1;

    .line 98
    .line 99
    .line 100
    invoke-direct {v8, v1, v3}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2$1;-><init>(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/jvm/internal/m0;)V

    .line 101
    const/4 v11, 0x4

    .line 102
    const/4 v12, 0x0

    .line 103
    .line 104
    iput v2, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->label:I

    .line 105
    move-object v1, v4

    .line 106
    move-object v2, v5

    .line 107
    move-object v3, v6

    .line 108
    move-object v4, v7

    .line 109
    move-object v5, v8

    .line 110
    move-object v6, p0

    .line 111
    move v7, v11

    .line 112
    move-object v8, v12

    .line 113
    .line 114
    .line 115
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/Animatable;->f(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    if-ne v1, v0, :cond_2

    .line 119
    return-object v0

    .line 120
    .line 121
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Landroidx/compose/material/SwipeableState;->c(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v10}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    iget-object v0, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v9}, Landroidx/compose/material/SwipeableState;->f(Landroidx/compose/material/SwipeableState;Z)V

    .line 134
    .line 135
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 136
    return-object v0

    .line 137
    .line 138
    :goto_1
    iget-object v1, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Landroidx/compose/material/SwipeableState;->c(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v10}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    iget-object v1, p0, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v9}, Landroidx/compose/material/SwipeableState;->f(Landroidx/compose/material/SwipeableState;Z)V

    .line 151
    throw v0
.end method
