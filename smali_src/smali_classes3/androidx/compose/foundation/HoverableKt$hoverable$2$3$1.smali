.class final Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/HoverableKt$hoverable$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Le8/p<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.HoverableKt$hoverable$2$3$1"
    f = "Hoverable.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentContext:Lkotlin/coroutines/g;

.field final synthetic $hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $scope:Lkotlinx/coroutines/o0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/g;Lkotlinx/coroutines/o0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$currentContext:Lkotlin/coroutines/g;

    iput-object p2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lkotlinx/coroutines/o0;

    iput-object p3, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
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

    new-instance v6, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;

    iget-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$currentContext:Lkotlin/coroutines/g;

    iget-object v2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lkotlinx/coroutines/o0;

    iget-object v3, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;-><init>(Lkotlin/coroutines/g;Lkotlinx/coroutines/o0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
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
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
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
    iget v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 20
    move-object v4, v1

    .line 21
    move-object v1, v0

    .line 22
    move-object v0, p0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 39
    move-object v1, p1

    .line 40
    move-object p1, p0

    .line 41
    .line 42
    :goto_0
    iget-object v4, p1, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$currentContext:Lkotlin/coroutines/g;

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lkotlinx/coroutines/f2;->m(Lkotlin/coroutines/g;)Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    iput-object v1, p1, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput v2, p1, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->label:I

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v3, p1, v2, v3}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    if-ne v4, v0, :cond_2

    .line 59
    return-object v0

    .line 60
    :cond_2
    move-object v13, v0

    .line 61
    move-object v0, p1

    .line 62
    move-object p1, v4

    .line 63
    move-object v4, v1

    .line 64
    move-object v1, v13

    .line 65
    .line 66
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 70
    move-result p1

    .line 71
    .line 72
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->a()I

    .line 76
    move-result v6

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 80
    move-result v6

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    iget-object v7, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lkotlinx/coroutines/o0;

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    .line 88
    new-instance v10, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$1;

    .line 89
    .line 90
    iget-object p1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 91
    .line 92
    iget-object v5, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    .line 93
    .line 94
    .line 95
    invoke-direct {v10, p1, v5, v3}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 96
    const/4 v11, 0x3

    .line 97
    const/4 v12, 0x0

    .line 98
    .line 99
    .line 100
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->b()I

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    iget-object v5, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lkotlinx/coroutines/o0;

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    .line 117
    new-instance v8, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$2;

    .line 118
    .line 119
    iget-object p1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    .line 120
    .line 121
    iget-object v9, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 122
    .line 123
    .line 124
    invoke-direct {v8, p1, v9, v3}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/d;)V

    .line 125
    const/4 v9, 0x3

    .line 126
    const/4 v10, 0x0

    .line 127
    .line 128
    .line 129
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 130
    :cond_4
    :goto_2
    move-object p1, v0

    .line 131
    move-object v0, v1

    .line 132
    move-object v1, v4

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_5
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 136
    return-object p1
.end method
