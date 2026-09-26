.class public final Landroidx/compose/foundation/gestures/ScrollableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,645:1\n135#2:646\n25#3:647\n36#3:654\n25#3:661\n1057#4,6:648\n1057#4,6:655\n1057#4,6:662\n*S KotlinDebug\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt\n*L\n152#1:646\n232#1:647\n243#1:654\n246#1:661\n232#1:648,6\n243#1:655,6\n246#1:662,6\n*E\n"
.end annotation


# static fields
.field private static final ModifierLocalScrollableContainer:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$NoOpScrollScope$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/ScrollableKt$NoOpScrollScope$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$ModifierLocalScrollableContainer$1;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$ModifierLocalScrollableContainer$1;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->a(Le8/a;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->ModifierLocalScrollableContainer:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 16
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->d(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Landroidx/compose/foundation/gestures/ScrollScope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    return-object v0
.end method

.method public static final synthetic c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/gestures/ScrollableKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    :cond_3
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, v0, Landroidx/compose/foundation/gestures/ScrollableKt$awaitScrollEvent$1;->label:I

    .line 61
    const/4 p1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, v0, v3, p1}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    if-ne p1, v1, :cond_4

    .line 68
    return-object v1

    .line 69
    .line 70
    :cond_4
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 74
    move-result v2

    .line 75
    .line 76
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->f()I

    .line 80
    move-result v4

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 84
    move-result v2

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    return-object p1
.end method

.method public static final e()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->ModifierLocalScrollableContainer:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method

.method private static final f(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollConfig;)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p2, p1, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1;-><init>(Landroidx/compose/foundation/gestures/ScrollConfig;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static final g(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 24
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p8

    .line 3
    .line 4
    .line 5
    const v1, -0x77ed10cc

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    .line 11
    const v1, -0x67208f1a

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 15
    .line 16
    if-nez p5, :cond_0

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 19
    const/4 v2, 0x6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 23
    move-result-object v1

    .line 24
    move-object v7, v1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    move-object/from16 v7, p5

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 31
    .line 32
    .line 33
    const v1, -0x1d58f75c

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    const/4 v10, 0x0

    .line 48
    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    .line 51
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    .line 55
    const/4 v3, 0x2

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v10, v3, v10}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 66
    move-object v11, v2

    .line 67
    .line 68
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 69
    .line 70
    new-instance v12, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 71
    move-object v2, v12

    .line 72
    .line 73
    move-object/from16 v3, p2

    .line 74
    .line 75
    move/from16 v4, p3

    .line 76
    move-object v5, v11

    .line 77
    .line 78
    move-object/from16 v6, p4

    .line 79
    .line 80
    move-object/from16 v8, p6

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;)V

    .line 84
    const/4 v2, 0x0

    .line 85
    .line 86
    .line 87
    invoke-static {v12, v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    const v5, 0x44faf204

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 102
    move-result v4

    .line 103
    .line 104
    .line 105
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    if-nez v4, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    if-ne v5, v4, :cond_3

    .line 115
    .line 116
    :cond_2
    move/from16 v4, p7

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_3
    move/from16 v4, p7

    .line 120
    goto :goto_2

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-static {v3, v4}, Landroidx/compose/foundation/gestures/ScrollableKt;->k(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 124
    move-result-object v5

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 131
    .line 132
    check-cast v5, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    if-ne v1, v6, :cond_4

    .line 146
    .line 147
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollDraggableState;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v3}, Landroidx/compose/foundation/gestures/ScrollDraggableState;-><init>(Landroidx/compose/runtime/State;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 157
    .line 158
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollDraggableState;

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v2}, Landroidx/compose/foundation/gestures/AndroidScrollable_androidKt;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    new-instance v13, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$1;

    .line 165
    .line 166
    .line 167
    invoke-direct {v13, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$1;-><init>(Landroidx/compose/foundation/gestures/ScrollDraggableState;)V

    .line 168
    .line 169
    sget-object v14, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$2;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$2;

    .line 170
    .line 171
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3;

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, v3}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$3;-><init>(Landroidx/compose/runtime/State;)V

    .line 175
    .line 176
    const/16 v19, 0x0

    .line 177
    .line 178
    new-instance v6, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;

    .line 179
    .line 180
    .line 181
    invoke-direct {v6, v11, v3, v10}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 182
    .line 183
    const/16 v21, 0x0

    .line 184
    .line 185
    const/16 v22, 0x40

    .line 186
    .line 187
    const/16 v23, 0x0

    .line 188
    .line 189
    move-object/from16 v12, p0

    .line 190
    .line 191
    move-object/from16 v15, p2

    .line 192
    .line 193
    move/from16 v16, p7

    .line 194
    .line 195
    move-object/from16 v17, p1

    .line 196
    .line 197
    move-object/from16 v18, v1

    .line 198
    .line 199
    move-object/from16 v20, v6

    .line 200
    .line 201
    .line 202
    invoke-static/range {v12 .. v23}, Landroidx/compose/foundation/gestures/DraggableKt;->k(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/gestures/ScrollableKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollConfig;)Landroidx/compose/ui/Modifier;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    .line 210
    invoke-interface {v11}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v5, v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    .line 217
    move-result-object v1

    .line 218
    .line 219
    .line 220
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 221
    return-object v1
.end method

.method public static final h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 13
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/gestures/ScrollableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/OverscrollEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "state"

    .line 9
    move-object v10, p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v1, "orientation"

    .line 15
    move-object v11, p2

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$$inlined$debugInspectorInfo$1;

    .line 27
    move-object v2, v1

    .line 28
    move-object v3, p2

    .line 29
    move-object v4, p1

    .line 30
    .line 31
    move-object/from16 v5, p3

    .line 32
    .line 33
    move/from16 v6, p4

    .line 34
    .line 35
    move/from16 v7, p5

    .line 36
    .line 37
    move-object/from16 v8, p6

    .line 38
    .line 39
    move-object/from16 v9, p7

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    :goto_0
    new-instance v12, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;

    .line 50
    move-object v2, v12

    .line 51
    move-object v3, p2

    .line 52
    move-object v4, p1

    .line 53
    .line 54
    move/from16 v5, p5

    .line 55
    .line 56
    move-object/from16 v6, p7

    .line 57
    .line 58
    move-object/from16 v7, p6

    .line 59
    .line 60
    move-object/from16 v8, p3

    .line 61
    .line 62
    move/from16 v9, p4

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;Z)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public static final i(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/gestures/ScrollableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "orientation"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move v5, p3

    .line 21
    move v6, p4

    .line 22
    move-object v7, p5

    .line 23
    move-object v8, p6

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static synthetic j(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x4

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    move v3, p3

    .line 7
    .line 8
    and-int/lit8 p3, p7, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    const/4 p4, 0x0

    .line 12
    :cond_1
    move v4, p4

    .line 13
    .line 14
    and-int/lit8 p3, p7, 0x10

    .line 15
    const/4 p4, 0x0

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    move-object v5, p4

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move-object v5, p5

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p3, p7, 0x20

    .line 23
    .line 24
    if-eqz p3, :cond_3

    .line 25
    move-object v6, p4

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    move-object v6, p6

    .line 28
    :goto_1
    move-object v0, p0

    .line 29
    move-object v1, p1

    .line 30
    move-object v2, p2

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private static final k(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;Z)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 6
    return-object v0
.end method
