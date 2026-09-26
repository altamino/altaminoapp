.class final Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,645:1\n65#2,2:646\n32#2,6:648\n67#2:654\n32#2,6:655\n*S KotlinDebug\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1\n*L\n274#1:646,2\n274#1:648,6\n274#1:654\n281#1:655,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1$1"
    f = "Scrollable.kt"
    l = {
        0x111
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

.field final synthetic $scrollingLogicState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollConfig;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$scrollingLogicState:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
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

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$scrollingLogicState:Landroidx/compose/runtime/State;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollConfig;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 19
    move-object v3, v1

    .line 20
    move-object v1, v0

    .line 21
    move-object v0, p0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 38
    move-object v1, p1

    .line 39
    move-object p1, p0

    .line 40
    .line 41
    :goto_0
    iput-object v1, p1, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    iput v2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->label:I

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-ne v3, v0, :cond_2

    .line 50
    return-object v0

    .line 51
    :cond_2
    move-object v9, v0

    .line 52
    move-object v0, p1

    .line 53
    move-object p1, v3

    .line 54
    move-object v3, v1

    .line 55
    move-object v1, v9

    .line 56
    .line 57
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x0

    .line 67
    move v7, v6

    .line 68
    .line 69
    :goto_2
    if-ge v7, v5, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v8

    .line 74
    .line 75
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 79
    move-result v8

    .line 80
    xor-int/2addr v8, v2

    .line 81
    .line 82
    if-nez v8, :cond_3

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_4
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 89
    .line 90
    iget-object v5, v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$scrollingLogicState:Landroidx/compose/runtime/State;

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->a()J

    .line 94
    move-result-wide v7

    .line 95
    .line 96
    .line 97
    invoke-interface {v4, v3, p1, v7, v8}, Landroidx/compose/foundation/gestures/ScrollConfig;->a(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J

    .line 98
    move-result-wide v7

    .line 99
    .line 100
    .line 101
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v7, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->k(J)F

    .line 108
    move-result v5

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(F)F

    .line 112
    move-result v5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->d()Landroidx/compose/foundation/gestures/ScrollableState;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-interface {v4, v5}, Landroidx/compose/foundation/gestures/ScrollableState;->a(F)F

    .line 120
    move-result v4

    .line 121
    const/4 v5, 0x0

    .line 122
    .line 123
    cmpg-float v4, v4, v5

    .line 124
    .line 125
    if-nez v4, :cond_5

    .line 126
    goto :goto_4

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    move-result v4

    .line 135
    .line 136
    :goto_3
    if-ge v6, v4, :cond_6

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v5

    .line 141
    .line 142
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 146
    .line 147
    add-int/lit8 v6, v6, 0x1

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    :goto_4
    move-object p1, v0

    .line 150
    move-object v0, v1

    .line 151
    move-object v1, v3

    .line 152
    goto :goto_0
.end method
