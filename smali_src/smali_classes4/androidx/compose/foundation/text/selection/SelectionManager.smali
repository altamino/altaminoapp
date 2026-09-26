.class public final Landroidx/compose/foundation/text/selection/SelectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,908:1\n76#2:909\n102#2,2:910\n76#2:912\n102#2,2:913\n76#2:915\n102#2,2:916\n76#2:918\n102#2,2:919\n76#2:921\n102#2,2:922\n76#2:924\n102#2,2:925\n76#2:927\n102#2,2:928\n1#3:930\n57#4,3:931\n60#4,2:938\n62#4:941\n57#4,3:942\n60#4,2:949\n62#4:952\n32#5,4:934\n37#5:940\n32#5,4:945\n37#5:951\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n*L\n113#1:909\n113#1:910,2\n162#1:912\n162#1:913,2\n169#1:915\n169#1:916,2\n178#1:918\n178#1:919,2\n187#1:921\n187#1:922,2\n194#1:924\n194#1:925,2\n201#1:927\n201#1:928,2\n360#1:931,3\n360#1:938,2\n360#1:941\n748#1:942,3\n748#1:949,2\n748#1:952\n360#1:934,4\n360#1:940\n748#1:945,4\n748#1:951\n*E\n"
.end annotation


# instance fields
.field private final _selection:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequester;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hasFocus$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onSelectionChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousPosition:Landroidx/compose/ui/geometry/Offset;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textToolbar:Landroidx/compose/ui/platform/TextToolbar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private touchMode:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
    .locals 5
    .param p1    # Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "selectionRegistrar"

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
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    iput-boolean v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->touchMode:Z

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$1;

    .line 24
    .line 25
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Le8/l;

    .line 26
    .line 27
    new-instance v2, Landroidx/compose/ui/focus/FocusRequester;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 31
    .line 32
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 33
    .line 34
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    iput-object v3, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$1;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->o(Le8/l;)V

    .line 103
    .line 104
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$2;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->t(Le8/q;)V

    .line 111
    .line 112
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$3;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->s(Le8/l;)V

    .line 119
    .line 120
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$4;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->q(Le8/s;)V

    .line 127
    .line 128
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$5;

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$5;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->r(Le8/a;)V

    .line 135
    .line 136
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$6;

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$6;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->p(Le8/l;)V

    .line 143
    .line 144
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$7;

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$7;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->n(Le8/l;)V

    .line 151
    return-void
.end method

.method private final D()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->v()Landroidx/compose/foundation/text/Handle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private final H(Landroidx/compose/ui/Modifier;Le8/a;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    .line 10
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Le8/a;Lkotlin/coroutines/d;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 18
    move-result-object p1

    .line 19
    :cond_0
    return-object p1
.end method

.method private final N(Landroidx/compose/ui/geometry/Offset;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final O(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final P(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final Q(Landroidx/compose/foundation/text/Handle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final R(Landroidx/compose/ui/geometry/Offset;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final W(Landroidx/compose/ui/geometry/Offset;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->m(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final a0(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p1

    .line 5
    move v6, p3

    .line 6
    move-object v7, p4

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->c0(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 10
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->o(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b0()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->p(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, v2

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->p(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 33
    move-result-object v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v4, v2

    .line 36
    .line 37
    :goto_1
    if-eqz v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Landroidx/compose/foundation/text/selection/Selectable;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 41
    move-result-object v5

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v5, v2

    .line 44
    .line 45
    :goto_2
    if-eqz v4, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 49
    move-result-object v6

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    move-object v6, v2

    .line 52
    .line 53
    :goto_3
    if-eqz v0, :cond_7

    .line 54
    .line 55
    if-eqz v1, :cond_7

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 59
    move-result v7

    .line 60
    .line 61
    if-eqz v7, :cond_7

    .line 62
    .line 63
    if-eqz v5, :cond_7

    .line 64
    .line 65
    if-nez v6, :cond_4

    .line 66
    goto :goto_5

    .line 67
    :cond_4
    const/4 v7, 0x1

    .line 68
    .line 69
    .line 70
    invoke-interface {v3, v0, v7}, Landroidx/compose/foundation/text/selection/Selectable;->e(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 71
    move-result-wide v7

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v5, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 75
    move-result-wide v7

    .line 76
    const/4 v3, 0x0

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v0, v3}, Landroidx/compose/foundation/text/selection/Selectable;->e(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 80
    move-result-wide v3

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v6, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 84
    move-result-wide v3

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v7, v8}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->c(Landroidx/compose/ui/geometry/Rect;J)Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 98
    move-result-object v1

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    move-object v1, v2

    .line 101
    .line 102
    .line 103
    :goto_4
    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->W(Landroidx/compose/ui/geometry/Offset;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->c(Landroidx/compose/ui/geometry/Rect;J)Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->R(Landroidx/compose/ui/geometry/Offset;)V

    .line 117
    return-void

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_5
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->W(Landroidx/compose/ui/geometry/Offset;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->R(Landroidx/compose/ui/geometry/Offset;)V

    .line 124
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->N(Landroidx/compose/ui/geometry/Offset;)V

    .line 4
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->O(J)V

    .line 4
    return-void
.end method

.method private final e0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->Z()V

    .line 24
    :cond_1
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->P(J)V

    .line 4
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/Handle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->Q(Landroidx/compose/foundation/text/Handle;)V

    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->R(Landroidx/compose/ui/geometry/Offset;)V

    .line 4
    return-void
.end method

.method public static final synthetic i(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->W(Landroidx/compose/ui/geometry/Offset;)V

    .line 4
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/foundation/text/selection/SelectionManager;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionManager;->a0(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 4
    return-void
.end method

.method public static final synthetic k(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->b0()V

    .line 4
    return-void
.end method

.method public static final synthetic l(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->e0()V

    .line 4
    return-void
.end method

.method private final m(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->J()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method private final o(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$detectNonConsumingTap$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$detectNonConsumingTap$2;-><init>(Le8/l;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p3}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->d(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method

.method private final r()Landroidx/compose/ui/geometry/Rect;
    .locals 15

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->p(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->p(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Landroidx/compose/foundation/text/selection/Selectable;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    if-eqz v2, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-interface {v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    const/4 v6, 0x1

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v0, v6}, Landroidx/compose/foundation/text/selection/Selectable;->e(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    .line 67
    invoke-interface {v5, v3, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 68
    move-result-wide v6

    .line 69
    const/4 v8, 0x0

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v0, v8}, Landroidx/compose/foundation/text/selection/Selectable;->e(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 73
    move-result-wide v8

    .line 74
    .line 75
    .line 76
    invoke-interface {v5, v4, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 77
    move-result-wide v8

    .line 78
    .line 79
    .line 80
    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    .line 84
    invoke-interface {v5, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 85
    move-result-wide v8

    .line 86
    .line 87
    .line 88
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 89
    move-result v10

    .line 90
    .line 91
    .line 92
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 93
    move-result v11

    .line 94
    .line 95
    .line 96
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 97
    move-result v10

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 101
    move-result v11

    .line 102
    .line 103
    .line 104
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 105
    move-result v12

    .line 106
    .line 107
    .line 108
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    .line 109
    move-result v11

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 113
    move-result-object v12

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 117
    move-result v12

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, v12}, Landroidx/compose/foundation/text/selection/Selectable;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 125
    move-result v1

    .line 126
    const/4 v12, 0x0

    .line 127
    .line 128
    .line 129
    invoke-static {v12, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 130
    move-result-wide v13

    .line 131
    .line 132
    .line 133
    invoke-interface {v5, v3, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 134
    move-result-wide v13

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 142
    move-result v0

    .line 143
    .line 144
    .line 145
    invoke-interface {v2, v0}, Landroidx/compose/foundation/text/selection/Selectable;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 150
    move-result v0

    .line 151
    .line 152
    .line 153
    invoke-static {v12, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 154
    move-result-wide v0

    .line 155
    .line 156
    .line 157
    invoke-interface {v5, v4, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 158
    move-result-wide v0

    .line 159
    .line 160
    .line 161
    invoke-interface {v5, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 162
    move-result-wide v2

    .line 163
    .line 164
    .line 165
    invoke-interface {v5, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 166
    move-result-wide v0

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 170
    move-result v2

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 174
    move-result v0

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 178
    move-result v0

    .line 179
    .line 180
    .line 181
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 182
    move-result v1

    .line 183
    .line 184
    .line 185
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 186
    move-result v2

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 190
    move-result v1

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->b()F

    .line 194
    move-result v2

    .line 195
    float-to-double v2, v2

    .line 196
    .line 197
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 198
    mul-double/2addr v2, v4

    .line 199
    double-to-float v2, v2

    .line 200
    add-float/2addr v1, v2

    .line 201
    .line 202
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    .line 203
    .line 204
    .line 205
    invoke-direct {v2, v10, v0, v11, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 206
    return-object v2

    .line 207
    .line 208
    :cond_3
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 212
    move-result-object v0

    .line 213
    return-object v0

    .line 214
    .line 215
    :cond_4
    :goto_0
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 219
    move-result-object v0

    .line 220
    return-object v0

    .line 221
    .line 222
    :cond_5
    :goto_1
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 226
    move-result-object v0

    .line 227
    return-object v0
.end method


# virtual methods
.method public final A()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Le8/l;

    return-object v0
.end method

.method public final B()Landroidx/compose/ui/text/AnnotatedString;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->J()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->v(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v4, v3, :cond_6

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    check-cast v5, Landroidx/compose/foundation/text/selection/Selectable;

    .line 31
    .line 32
    .line 33
    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 34
    move-result-wide v6

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 38
    move-result-object v8

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 42
    move-result-wide v8

    .line 43
    .line 44
    cmp-long v6, v6, v8

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 50
    move-result-wide v6

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 54
    move-result-object v8

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 58
    move-result-wide v8

    .line 59
    .line 60
    cmp-long v6, v6, v8

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    if-nez v2, :cond_0

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-static {v5, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->d(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/ui/text/AnnotatedString;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v6}, Landroidx/compose/ui/text/AnnotatedString;->i(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    if-nez v2, :cond_1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object v6, v2

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_1
    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 83
    move-result-wide v7

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 91
    move-result-wide v9

    .line 92
    .line 93
    cmp-long v2, v7, v9

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 99
    move-result v2

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 105
    move-result-wide v7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 113
    move-result-wide v9

    .line 114
    .line 115
    cmp-long v2, v7, v9

    .line 116
    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 121
    move-result v2

    .line 122
    .line 123
    if-eqz v2, :cond_5

    .line 124
    :cond_4
    move-object v2, v6

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    move-object v2, v6

    .line 127
    .line 128
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    :goto_3
    return-object v2
.end method

.method public final C()Landroidx/compose/foundation/text/selection/Selection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/text/selection/Selection;

    .line 9
    return-object v0
.end method

.method public final E()Landroidx/compose/ui/geometry/Offset;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 9
    return-object v0
.end method

.method public final F(Z)Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Z)V

    .line 6
    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    .line 28
    :cond_1
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->u(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->G()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Le8/l;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->b()I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public final J()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    const-string v1, "Failed requirement."

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 24
    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final K(JLandroidx/compose/foundation/text/selection/Selection;)Lw7/u;
    .locals 10
    .param p3    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Lw7/u<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->J()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->v(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v5, v3

    .line 23
    .line 24
    :goto_0
    if-ge v4, v2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    check-cast v6, Landroidx/compose/foundation/text/selection/Selectable;

    .line 31
    .line 32
    .line 33
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 34
    move-result-wide v7

    .line 35
    .line 36
    cmp-long v7, v7, p1

    .line 37
    .line 38
    if-nez v7, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->g()Landroidx/compose/foundation/text/selection/Selection;

    .line 42
    move-result-object v7

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move-object v7, v3

    .line 45
    .line 46
    :goto_1
    if-eqz v7, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 50
    move-result-wide v8

    .line 51
    .line 52
    .line 53
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object v6

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {v5, v7}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->e(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-static {v5, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    sget-object p2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->b()I

    .line 80
    move-result p2

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    .line 84
    .line 85
    :cond_3
    new-instance p1, Lw7/u;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, v5, v0}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-object p1
.end method

.method public final L(Landroidx/compose/ui/platform/ClipboardManager;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/platform/ClipboardManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    return-void
.end method

.method public final M(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->b0()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->e0()V

    .line 43
    :cond_1
    return-void
.end method

.method public final S(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method

.method public final T(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final U(Le8/l;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Le8/l;

    return-void
.end method

.method public final V(Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->b0()V

    .line 11
    :cond_0
    return-void
.end method

.method public final X(Landroidx/compose/ui/platform/TextToolbar;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/platform/TextToolbar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-void
.end method

.method public final Y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->touchMode:Z

    return-void
.end method

.method public final Z()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->r()Landroidx/compose/ui/geometry/Rect;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionManager$showSelectionToolbar$1$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$showSelectionToolbar$1$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    .line 30
    const/16 v7, 0x1c

    .line 31
    const/4 v8, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/platform/e1;->a(Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/geometry/Rect;Le8/a;Le8/a;Le8/a;Le8/a;ILjava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final c0(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 20
    .param p5    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "adjustment"

    .line 5
    .line 6
    move-object/from16 v11, p7

    .line 7
    .line 8
    .line 9
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    if-eqz p6, :cond_0

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->Q(Landroidx/compose/foundation/text/Handle;)V

    .line 20
    .line 21
    if-eqz p6, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->N(Landroidx/compose/ui/geometry/Offset;)V

    .line 34
    .line 35
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .line 40
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->J()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->v(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    .line 48
    move-result-object v13

    .line 49
    .line 50
    .line 51
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 52
    move-result v14

    .line 53
    const/4 v1, 0x0

    .line 54
    move-object v10, v1

    .line 55
    const/4 v9, 0x0

    .line 56
    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    :goto_2
    if-ge v9, v14, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    move-object/from16 v17, v1

    .line 66
    .line 67
    check-cast v17, Landroidx/compose/foundation/text/selection/Selectable;

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->f()Ljava/util/Map;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 77
    move-result-wide v2

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    move-object/from16 v18, v1

    .line 88
    .line 89
    check-cast v18, Landroidx/compose/foundation/text/selection/Selection;

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->J()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 93
    move-result-object v8

    .line 94
    .line 95
    move-object/from16 v1, v17

    .line 96
    .line 97
    move-wide/from16 v2, p1

    .line 98
    .line 99
    move-wide/from16 v4, p3

    .line 100
    .line 101
    move-object/from16 v6, p5

    .line 102
    .line 103
    move/from16 v7, p6

    .line 104
    .line 105
    move/from16 v19, v9

    .line 106
    .line 107
    move-object/from16 v9, p7

    .line 108
    move-object v15, v10

    .line 109
    .line 110
    move-object/from16 v10, v18

    .line 111
    .line 112
    .line 113
    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/text/selection/Selectable;->d(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lw7/u;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    check-cast v2, Landroidx/compose/foundation/text/selection/Selection;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    check-cast v1, Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-nez v16, :cond_3

    .line 133
    .line 134
    if-eqz v1, :cond_2

    .line 135
    goto :goto_3

    .line 136
    .line 137
    :cond_2
    const/16 v16, 0x0

    .line 138
    goto :goto_4

    .line 139
    :cond_3
    :goto_3
    const/4 v1, 0x1

    .line 140
    .line 141
    move/from16 v16, v1

    .line 142
    .line 143
    :goto_4
    if-eqz v2, :cond_4

    .line 144
    .line 145
    .line 146
    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 147
    move-result-wide v3

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-static {v15, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->e(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    .line 158
    move-result-object v10

    .line 159
    .line 160
    add-int/lit8 v9, v19, 0x1

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    move-object v15, v10

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    move-result v1

    .line 171
    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 175
    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    sget-object v2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->b()I

    .line 182
    move-result v2

    .line 183
    .line 184
    .line 185
    invoke-interface {v1, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    .line 186
    .line 187
    :cond_6
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v12}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->u(Ljava/util/Map;)V

    .line 191
    .line 192
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Le8/l;

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v15}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_7
    return v16
.end method

.method public final d0(Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8
    .param p1    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adjustment"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 25
    move-result-wide v2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->l()Ljava/util/Map;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Landroidx/compose/foundation/text/selection/Selectable;

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    const/4 v1, 0x0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    xor-int/lit8 v4, p3, 0x1

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v1, v4}, Landroidx/compose/foundation/text/selection/Selectable;->e(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 67
    move-result-wide v1

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a(J)J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v3, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->m(Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    :goto_1
    if-eqz v1, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 81
    move-result-wide v0

    .line 82
    .line 83
    if-eqz p3, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 87
    move-result-wide v2

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-wide v2, v0

    .line 90
    .line 91
    :goto_2
    if-eqz p3, :cond_4

    .line 92
    :goto_3
    move-wide v4, v0

    .line 93
    goto :goto_4

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 97
    move-result-wide v0

    .line 98
    goto :goto_3

    .line 99
    :goto_4
    move-object v0, p0

    .line 100
    move-wide v1, v2

    .line 101
    move-wide v3, v4

    .line 102
    move-object v5, p2

    .line 103
    move v6, p3

    .line 104
    move-object v7, p4

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->c0(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 108
    move-result v0

    .line 109
    :cond_5
    return v0
.end method

.method public final n()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->B()Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroidx/compose/ui/platform/ClipboardManager;->b(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 14
    :cond_0
    return-void
.end method

.method public final p(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;
    .locals 3
    .param p1    # Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->l()Ljava/util/Map;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/compose/foundation/text/selection/Selectable;

    .line 26
    return-object p1
.end method

.method public final q()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public final s()Landroidx/compose/ui/geometry/Offset;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 9
    return-object v0
.end method

.method public final t()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final u()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final v()Landroidx/compose/foundation/text/Handle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/text/Handle;

    .line 9
    return-object v0
.end method

.method public final w()Landroidx/compose/ui/geometry/Offset;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 9
    return-object v0
.end method

.method public final x()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final z()Landroidx/compose/ui/Modifier;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->H(Landroidx/compose/ui/Modifier;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v4, v2, v3, v2}, Landroidx/compose/foundation/FocusableKt;->d(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$4;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->D()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
