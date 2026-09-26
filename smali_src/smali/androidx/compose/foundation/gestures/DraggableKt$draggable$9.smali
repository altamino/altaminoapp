.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->i(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$9\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,485:1\n25#2:486\n25#2:493\n1057#3,6:487\n1057#3,6:494\n76#4:500\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$9\n*L\n220#1:486\n229#1:493\n220#1:487,6\n229#1:494,6\n232#1:500\n*E\n"
.end annotation


# instance fields
.field final synthetic $canDrag:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onDragStarted:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragStopped:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lkotlinx/coroutines/o0;",
            "Ljava/lang/Float;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $reverseDirection:Z

.field final synthetic $startDragImmediately:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stateFactory:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/l;Le8/q;Le8/q;Landroidx/compose/foundation/gestures/Orientation;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$stateFactory:Le8/p;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$startDragImmediately:Le8/a;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$canDrag:Le8/l;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStarted:Le8/q;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStopped:Le8/q;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p8, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$enabled:Z

    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$reverseDirection:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->c(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/DragLogic;",
            ">;)",
            "Landroidx/compose/foundation/gestures/DragLogic;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/foundation/gestures/DragLogic;

    .line 7
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 18
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    const-string v2, "$this$composed"

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, -0x58a5c92e

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$stateFactory:Le8/p;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v1, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    .line 31
    .line 32
    .line 33
    const v4, -0x1d58f75c

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    const/4 v8, 0x2

    .line 48
    const/4 v9, 0x0

    .line 49
    .line 50
    if-ne v5, v7, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-static {v9, v9, v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 61
    .line 62
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 63
    .line 64
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 65
    .line 66
    new-instance v10, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1;

    .line 67
    .line 68
    .line 69
    invoke-direct {v10, v5, v7}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v7, v10, v1, v3}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    if-ne v4, v6, :cond_1

    .line 86
    .line 87
    .line 88
    const v4, 0x7fffffff

    .line 89
    const/4 v6, 0x6

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v9, v9, v6, v9}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 100
    move-object v15, v4

    .line 101
    .line 102
    check-cast v15, Lkotlinx/coroutines/channels/d;

    .line 103
    .line 104
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$startDragImmediately:Le8/a;

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 108
    move-result-object v13

    .line 109
    .line 110
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$canDrag:Le8/l;

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 114
    move-result-object v12

    .line 115
    .line 116
    new-instance v4, Landroidx/compose/foundation/gestures/DragLogic;

    .line 117
    .line 118
    iget-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStarted:Le8/q;

    .line 119
    .line 120
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStopped:Le8/q;

    .line 121
    .line 122
    iget-object v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v6, v7, v5, v10}, Landroidx/compose/foundation/gestures/DragLogic;-><init>(Le8/q;Le8/q;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    new-instance v5, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;

    .line 132
    .line 133
    .line 134
    invoke-direct {v5, v15, v2, v4, v9}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;-><init>(Lkotlinx/coroutines/channels/d;Landroidx/compose/foundation/gestures/PointerAwareDraggableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v5, v1, v3}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 138
    .line 139
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 140
    const/4 v4, 0x3

    .line 141
    .line 142
    new-array v4, v4, [Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v5, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 145
    .line 146
    aput-object v5, v4, v3

    .line 147
    .line 148
    iget-boolean v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$enabled:Z

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    move-result-object v3

    .line 153
    const/4 v5, 0x1

    .line 154
    .line 155
    aput-object v3, v4, v5

    .line 156
    .line 157
    iget-boolean v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$reverseDirection:Z

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    aput-object v3, v4, v8

    .line 164
    .line 165
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3;

    .line 166
    .line 167
    iget-boolean v11, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$enabled:Z

    .line 168
    .line 169
    iget-object v14, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 170
    .line 171
    iget-boolean v5, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$reverseDirection:Z

    .line 172
    .line 173
    const/16 v17, 0x0

    .line 174
    move-object v10, v3

    .line 175
    .line 176
    move/from16 v16, v5

    .line 177
    .line 178
    .line 179
    invoke-direct/range {v10 .. v17}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3;-><init>(ZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/d;ZLkotlin/coroutines/d;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v4, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->d(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    .line 186
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 187
    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
