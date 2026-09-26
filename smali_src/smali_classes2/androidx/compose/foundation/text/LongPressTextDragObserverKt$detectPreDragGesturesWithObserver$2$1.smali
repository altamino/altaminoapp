.class final Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nLongPressTextDragObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressTextDragObserver.kt\nandroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,126:1\n79#2,2:127\n32#2,6:129\n81#2:135\n*S KotlinDebug\n*F\n+ 1 LongPressTextDragObserver.kt\nandroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1\n*L\n104#1:127,2\n104#1:129,6\n104#1:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1"
    f = "LongPressTextDragObserver.kt"
    l = {
        0x63,
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $observer:Landroidx/compose/foundation/text/TextDragObserver;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->$observer:Landroidx/compose/foundation/text/TextDragObserver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
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

    new-instance v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;

    iget-object v1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->$observer:Landroidx/compose/foundation/text/TextDragObserver;

    invoke-direct {v0, v1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget v2, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->label:I

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-eq v2, v6, :cond_1

    .line 17
    .line 18
    if-ne v2, v4, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 23
    .line 24
    iget-object v7, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 27
    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    move-object/from16 v9, p1

    .line 32
    move-object v8, v0

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v1

    .line 42
    .line 43
    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 46
    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    move-object/from16 v7, p1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    iget-object v2, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 59
    .line 60
    iput-object v2, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    iput v6, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->label:I

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3, v0, v6, v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    if-ne v7, v1, :cond_3

    .line 69
    return-object v1

    .line 70
    .line 71
    :cond_3
    :goto_0
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 72
    .line 73
    iget-object v8, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->$observer:Landroidx/compose/foundation/text/TextDragObserver;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 77
    move-result-wide v9

    .line 78
    .line 79
    .line 80
    invoke-interface {v8, v9, v10}, Landroidx/compose/foundation/text/TextDragObserver;->a(J)V

    .line 81
    move-object v8, v0

    .line 82
    move-object v15, v7

    .line 83
    move-object v7, v2

    .line 84
    move-object v2, v15

    .line 85
    .line 86
    :goto_1
    iput-object v7, v8, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object v2, v8, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    iput v4, v8, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->label:I

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v5, v8, v6, v5}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v9

    .line 95
    .line 96
    if-ne v9, v1, :cond_4

    .line 97
    return-object v1

    .line 98
    .line 99
    :cond_4
    :goto_2
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 103
    move-result-object v9

    .line 104
    .line 105
    .line 106
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 107
    move-result v10

    .line 108
    move v11, v3

    .line 109
    .line 110
    :goto_3
    if-ge v11, v10, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v12

    .line 115
    .line 116
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 120
    move-result-wide v13

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 124
    move-result-wide v3

    .line 125
    .line 126
    .line 127
    invoke-static {v13, v14, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->d(JJ)Z

    .line 128
    move-result v3

    .line 129
    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 134
    move-result v3

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    const/4 v3, 0x0

    .line 138
    const/4 v4, 0x2

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x2

    .line 144
    goto :goto_3

    .line 145
    .line 146
    :cond_6
    iget-object v1, v8, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1;->$observer:Landroidx/compose/foundation/text/TextDragObserver;

    .line 147
    .line 148
    .line 149
    invoke-interface {v1}, Landroidx/compose/foundation/text/TextDragObserver;->d()V

    .line 150
    .line 151
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 152
    return-object v1
.end method
