.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1"
    f = "Draggable.kt"
    l = {
        0x10c,
        0x114
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/o0;

.field final synthetic $canDragState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $channel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $reverseDirection:Z

.field final synthetic $startImmediatelyState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/d;ZLkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlinx/coroutines/channels/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$canDragState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$channel:Lkotlinx/coroutines/channels/d;

    iput-boolean p6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$reverseDirection:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 9
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

    new-instance v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$canDragState:Landroidx/compose/runtime/State;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$channel:Lkotlinx/coroutines/channels/d;

    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$reverseDirection:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;-><init>(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/d;ZLkotlin/coroutines/d;)V

    iput-object p1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    return-object v8
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    iget v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->label:I

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v6, :cond_1

    .line 16
    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    iget v7, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->I$0:I

    .line 20
    .line 21
    iget-boolean v8, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->Z$0:Z

    .line 22
    .line 23
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$4:Ljava/lang/Object;

    .line 24
    move-object v9, v0

    .line 25
    .line 26
    check-cast v9, Lkotlinx/coroutines/o0;

    .line 27
    .line 28
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$3:Ljava/lang/Object;

    .line 29
    move-object v10, v0

    .line 30
    .line 31
    check-cast v10, Landroidx/compose/foundation/gestures/Orientation;

    .line 32
    .line 33
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$2:Ljava/lang/Object;

    .line 34
    move-object v11, v0

    .line 35
    .line 36
    check-cast v11, Lkotlinx/coroutines/channels/d;

    .line 37
    .line 38
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 39
    move-object v12, v0

    .line 40
    .line 41
    check-cast v12, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 42
    .line 43
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 44
    move-object v13, v0

    .line 45
    .line 46
    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    move-object/from16 v0, p1

    .line 52
    move-object v14, v13

    .line 53
    move-object v13, v1

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move v5, v7

    .line 58
    .line 59
    goto/16 :goto_a

    .line 60
    :catch_0
    move-exception v0

    .line 61
    move-object v14, v13

    .line 62
    move-object v13, v1

    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    .line 74
    :cond_1
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 77
    .line 78
    iget-object v7, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 81
    .line 82
    .line 83
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 84
    move-object v14, v0

    .line 85
    move-object v13, v1

    .line 86
    move-object v15, v2

    .line 87
    move-object v2, v7

    .line 88
    .line 89
    move-object/from16 v7, p1

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 98
    move-object v13, v1

    .line 99
    .line 100
    :goto_0
    iget-object v7, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    .line 101
    .line 102
    .line 103
    invoke-static {v7}, Lkotlinx/coroutines/p0;->h(Lkotlinx/coroutines/o0;)Z

    .line 104
    move-result v7

    .line 105
    .line 106
    if-eqz v7, :cond_b

    .line 107
    .line 108
    new-instance v14, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 109
    .line 110
    .line 111
    invoke-direct {v14}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    .line 112
    .line 113
    iget-object v8, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 114
    .line 115
    iget-object v9, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 116
    .line 117
    iget-object v11, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 118
    .line 119
    iput-object v0, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v14, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 122
    const/4 v7, 0x0

    .line 123
    .line 124
    iput-object v7, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$2:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v7, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$3:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v7, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$4:Ljava/lang/Object;

    .line 129
    .line 130
    iput v6, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->label:I

    .line 131
    move-object v7, v0

    .line 132
    move-object v10, v14

    .line 133
    move-object v12, v13

    .line 134
    .line 135
    .line 136
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/gestures/DraggableKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 137
    move-result-object v7

    .line 138
    .line 139
    if-ne v7, v2, :cond_3

    .line 140
    return-object v2

    .line 141
    :cond_3
    move-object v15, v2

    .line 142
    move-object v2, v0

    .line 143
    :goto_1
    move-object v9, v7

    .line 144
    .line 145
    check-cast v9, Lw7/u;

    .line 146
    .line 147
    if-eqz v9, :cond_a

    .line 148
    .line 149
    iget-object v7, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$channel:Lkotlinx/coroutines/channels/d;

    .line 150
    .line 151
    iget-boolean v12, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$reverseDirection:Z

    .line 152
    .line 153
    iget-object v11, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 154
    .line 155
    iget-object v10, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    .line 156
    .line 157
    :try_start_1
    iput-object v2, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v14, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v7, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v11, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v10, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$4:Ljava/lang/Object;

    .line 166
    .line 167
    iput-boolean v12, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->Z$0:Z

    .line 168
    .line 169
    iput v5, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->I$0:I

    .line 170
    .line 171
    iput v4, v13, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->label:I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 172
    move-object v8, v2

    .line 173
    .line 174
    move-object/from16 v16, v10

    .line 175
    move-object v10, v14

    .line 176
    .line 177
    move-object/from16 v17, v11

    .line 178
    move-object v11, v7

    .line 179
    .line 180
    move/from16 v18, v12

    .line 181
    .line 182
    move-object/from16 v19, v13

    .line 183
    .line 184
    move-object/from16 v13, v17

    .line 185
    .line 186
    move-object/from16 v20, v14

    .line 187
    .line 188
    move-object/from16 v14, v19

    .line 189
    .line 190
    .line 191
    :try_start_2
    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/gestures/DraggableKt;->c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lw7/u;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/u;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 192
    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    .line 194
    if-ne v0, v15, :cond_4

    .line 195
    return-object v15

    .line 196
    :cond_4
    move-object v14, v2

    .line 197
    move-object v11, v7

    .line 198
    move-object v2, v15

    .line 199
    .line 200
    move-object/from16 v9, v16

    .line 201
    .line 202
    move-object/from16 v10, v17

    .line 203
    .line 204
    move/from16 v8, v18

    .line 205
    .line 206
    move-object/from16 v13, v19

    .line 207
    .line 208
    move-object/from16 v12, v20

    .line 209
    move v7, v5

    .line 210
    .line 211
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    move-result v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .line 217
    if-eqz v0, :cond_6

    .line 218
    .line 219
    .line 220
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->b()J

    .line 221
    move-result-wide v3

    .line 222
    .line 223
    .line 224
    invoke-static {v3, v4, v10}, Landroidx/compose/foundation/gestures/DraggableKt;->e(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 225
    move-result v0

    .line 226
    .line 227
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 228
    .line 229
    if-eqz v8, :cond_5

    .line 230
    const/4 v4, -0x1

    .line 231
    goto :goto_3

    .line 232
    :cond_5
    move v4, v6

    .line 233
    :goto_3
    int-to-float v4, v4

    .line 234
    mul-float/2addr v0, v4

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, v0}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(F)V

    .line 238
    goto :goto_4

    .line 239
    .line 240
    :cond_6
    sget-object v3, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 241
    .line 242
    .line 243
    :goto_4
    invoke-interface {v11, v3}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_5
    move-object v0, v14

    .line 245
    goto :goto_9

    .line 246
    :catch_1
    move-exception v0

    .line 247
    goto :goto_8

    .line 248
    :catchall_1
    move-exception v0

    .line 249
    :goto_6
    move-object v11, v7

    .line 250
    .line 251
    move-object/from16 v10, v17

    .line 252
    .line 253
    move/from16 v8, v18

    .line 254
    .line 255
    move-object/from16 v12, v20

    .line 256
    goto :goto_a

    .line 257
    :catch_2
    move-exception v0

    .line 258
    move-object v14, v2

    .line 259
    move-object v11, v7

    .line 260
    move-object v2, v15

    .line 261
    .line 262
    move-object/from16 v9, v16

    .line 263
    .line 264
    move-object/from16 v10, v17

    .line 265
    .line 266
    move/from16 v8, v18

    .line 267
    .line 268
    move-object/from16 v13, v19

    .line 269
    .line 270
    :goto_7
    move-object/from16 v12, v20

    .line 271
    goto :goto_8

    .line 272
    :catchall_2
    move-exception v0

    .line 273
    .line 274
    move-object/from16 v17, v11

    .line 275
    .line 276
    move/from16 v18, v12

    .line 277
    .line 278
    move-object/from16 v20, v14

    .line 279
    goto :goto_6

    .line 280
    :catch_3
    move-exception v0

    .line 281
    .line 282
    move-object/from16 v16, v10

    .line 283
    .line 284
    move-object/from16 v17, v11

    .line 285
    .line 286
    move/from16 v18, v12

    .line 287
    .line 288
    move-object/from16 v19, v13

    .line 289
    .line 290
    move-object/from16 v20, v14

    .line 291
    move-object v14, v2

    .line 292
    move-object v11, v7

    .line 293
    move-object v2, v15

    .line 294
    .line 295
    move-object/from16 v9, v16

    .line 296
    .line 297
    move-object/from16 v10, v17

    .line 298
    .line 299
    move/from16 v8, v18

    .line 300
    goto :goto_7

    .line 301
    .line 302
    .line 303
    :goto_8
    :try_start_4
    invoke-static {v9}, Lkotlinx/coroutines/p0;->h(Lkotlinx/coroutines/o0;)Z

    .line 304
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 305
    .line 306
    if-eqz v3, :cond_7

    .line 307
    .line 308
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 309
    .line 310
    .line 311
    invoke-interface {v11, v0}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    goto :goto_5

    .line 313
    :goto_9
    const/4 v4, 0x2

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    :cond_7
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 317
    :catchall_3
    move-exception v0

    .line 318
    .line 319
    :goto_a
    if-eqz v5, :cond_9

    .line 320
    .line 321
    .line 322
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->b()J

    .line 323
    move-result-wide v2

    .line 324
    .line 325
    .line 326
    invoke-static {v2, v3, v10}, Landroidx/compose/foundation/gestures/DraggableKt;->e(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 327
    move-result v2

    .line 328
    .line 329
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 330
    .line 331
    if-eqz v8, :cond_8

    .line 332
    const/4 v6, -0x1

    .line 333
    :cond_8
    int-to-float v4, v6

    .line 334
    mul-float/2addr v2, v4

    .line 335
    .line 336
    .line 337
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(F)V

    .line 338
    goto :goto_b

    .line 339
    .line 340
    :cond_9
    sget-object v3, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 341
    .line 342
    .line 343
    :goto_b
    invoke-interface {v11, v3}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    throw v0

    .line 345
    .line 346
    :cond_a
    move-object/from16 v19, v13

    .line 347
    move-object v0, v2

    .line 348
    move-object v2, v15

    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_b
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 353
    return-object v0
.end method
