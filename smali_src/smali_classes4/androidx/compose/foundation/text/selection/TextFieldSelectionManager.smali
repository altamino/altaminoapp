.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSelectionManager.kt\nandroidx/compose/foundation/text/selection/TextFieldSelectionManager\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,902:1\n76#2:903\n102#2,2:904\n76#2:906\n102#2,2:907\n76#2:909\n102#2,2:910\n76#2:912\n102#2,2:913\n155#3:915\n1#4:916\n*S KotlinDebug\n*F\n+ 1 TextFieldSelectionManager.kt\nandroidx/compose/foundation/text/selection/TextFieldSelectionManager\n*L\n85#1:903\n85#1:904,2\n116#1:906\n116#1:907,2\n146#1:909\n146#1:910,2\n149#1:912\n149#1:913,2\n735#1:915\n*E\n"
.end annotation


# instance fields
.field private clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dragBeginOffsetInText:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dragBeginPosition:J

.field private dragTotalDistance:J

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editable$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequester;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private oldValue:Landroidx/compose/ui/text/input/TextFieldValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onValueChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:Landroidx/compose/foundation/text/TextFieldState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textToolbar:Landroidx/compose/ui/platform/TextToolbar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final touchSelectionObserver:Landroidx/compose/foundation/text/TextDragObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final undoManager:Landroidx/compose/foundation/text/UndoManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final value$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/UndoManager;)V
    .locals 7
    .param p1    # Landroidx/compose/foundation/text/UndoManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 3
    sget-object p1, Landroidx/compose/ui/text/input/OffsetMapping;->Companion:Landroidx/compose/ui/text/input/OffsetMapping$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->a()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    sget-object p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$onValueChange$1;->INSTANCE:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$onValueChange$1;

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 4
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/k;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 5
    sget-object p1, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->c()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/MutableState;

    .line 7
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragBeginPosition:J

    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragTotalDistance:J

    .line 9
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 10
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 11
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/k;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 12
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/TextDragObserver;

    .line 13
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/UndoManager;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    return-void
.end method

.method private final O(Landroidx/compose/ui/geometry/Offset;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final P(Landroidx/compose/foundation/text/Handle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final S(Landroidx/compose/foundation/text/HandleState;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextFieldState;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragBeginOffsetInText:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method private final b0(Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 20
    move-result-wide v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 47
    move-result-object v2

    .line 48
    move-object v4, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v4, v3

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    :goto_1
    move-object v7, v3

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->b(J)Landroidx/compose/ui/text/TextRange;

    .line 62
    move-result-object v3

    .line 63
    goto :goto_1

    .line 64
    :goto_2
    move v5, p2

    .line 65
    move v6, p3

    .line 66
    move v8, p4

    .line 67
    move-object v9, p5

    .line 68
    .line 69
    .line 70
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/text/selection/TextFieldSelectionDelegateKt;->a(Landroidx/compose/ui/text/TextLayoutResult;IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J

    .line 71
    move-result-wide p2

    .line 72
    .line 73
    iget-object p4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 74
    .line 75
    .line 76
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 77
    move-result p5

    .line 78
    .line 79
    .line 80
    invoke-interface {p4, p5}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 81
    move-result p4

    .line 82
    .line 83
    iget-object p5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 84
    .line 85
    .line 86
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-interface {p5, p2}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 91
    move-result p2

    .line 92
    .line 93
    .line 94
    invoke-static {p4, p2}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 95
    move-result-wide p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 99
    move-result-wide p4

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p3, p4, p5}, Landroidx/compose/ui/text/TextRange;->g(JJ)Z

    .line 103
    move-result p4

    .line 104
    .line 105
    if-eqz p4, :cond_2

    .line 106
    return-void

    .line 107
    .line 108
    :cond_2
    iget-object p4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 109
    .line 110
    if-eqz p4, :cond_3

    .line 111
    .line 112
    sget-object p5, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p5}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->b()I

    .line 116
    move-result p5

    .line 117
    .line 118
    .line 119
    invoke-interface {p4, p5}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 130
    .line 131
    .line 132
    invoke-interface {p2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 135
    .line 136
    if-nez p1, :cond_4

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    const/4 p2, 0x1

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 142
    move-result p2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/TextFieldState;->z(Z)V

    .line 146
    .line 147
    :goto_3
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 148
    .line 149
    if-nez p1, :cond_5

    .line 150
    goto :goto_4

    .line 151
    :cond_5
    const/4 p2, 0x0

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 155
    move-result p2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/TextFieldState;->y(Z)V

    .line 159
    :goto_4
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragBeginPosition:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragTotalDistance:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->O(Landroidx/compose/ui/geometry/Offset;)V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragBeginOffsetInText:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragBeginPosition:J

    .line 3
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragTotalDistance:J

    .line 3
    return-void
.end method

.method public static final synthetic i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->P(Landroidx/compose/foundation/text/Handle;)V

    .line 4
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b0(Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 4
    return-void
.end method

.method public static synthetic l(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, p3

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k(Z)V

    .line 9
    return-void
.end method

.method private final m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x4

    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p1

    .line 8
    move-wide v2, p2

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/k;)V

    .line 12
    return-object v7
.end method

.method public static synthetic q(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p(Landroidx/compose/ui/geometry/Offset;)V

    .line 9
    return-void
.end method

.method private final t()Landroidx/compose/ui/geometry/Rect;
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z(Z)J

    .line 17
    move-result-wide v3

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 21
    move-result-wide v2

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z(Z)J

    .line 43
    move-result-wide v6

    .line 44
    .line 45
    .line 46
    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 47
    move-result-wide v6

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    :goto_1
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 75
    move-result-object v9

    .line 76
    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 81
    move-result-object v10

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 85
    move-result-wide v10

    .line 86
    .line 87
    .line 88
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 89
    move-result v10

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 93
    move-result-object v11

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 97
    move-result-object v11

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 101
    move-result v11

    .line 102
    sub-int/2addr v11, v1

    .line 103
    .line 104
    .line 105
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    .line 106
    move-result v11

    .line 107
    .line 108
    .line 109
    invoke-static {v10, v5, v11}, Lj8/m;->n(III)I

    .line 110
    move-result v10

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)Landroidx/compose/ui/geometry/Rect;

    .line 114
    move-result-object v9

    .line 115
    .line 116
    if-eqz v9, :cond_2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 120
    move-result v9

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move v9, v8

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 126
    move-result-wide v9

    .line 127
    .line 128
    .line 129
    invoke-interface {v4, v9, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 130
    move-result-wide v9

    .line 131
    .line 132
    .line 133
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 134
    move-result v4

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    move v4, v8

    .line 137
    .line 138
    :goto_3
    iget-object v9, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 139
    .line 140
    if-eqz v9, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 144
    move-result-object v9

    .line 145
    .line 146
    if-eqz v9, :cond_5

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 150
    move-result-object v10

    .line 151
    .line 152
    if-eqz v10, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 156
    move-result-object v10

    .line 157
    .line 158
    if-eqz v10, :cond_4

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 162
    move-result-object v11

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 166
    move-result-wide v11

    .line 167
    .line 168
    .line 169
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 170
    move-result v11

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 174
    move-result-object v12

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 178
    move-result-object v12

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 182
    move-result v12

    .line 183
    sub-int/2addr v12, v1

    .line 184
    .line 185
    .line 186
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 187
    move-result v1

    .line 188
    .line 189
    .line 190
    invoke-static {v11, v5, v1}, Lj8/m;->n(III)I

    .line 191
    move-result v1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v1}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)Landroidx/compose/ui/geometry/Rect;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 201
    move-result v1

    .line 202
    goto :goto_4

    .line 203
    :cond_4
    move v1, v8

    .line 204
    .line 205
    .line 206
    :goto_4
    invoke-static {v8, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 207
    move-result-wide v10

    .line 208
    .line 209
    .line 210
    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 211
    move-result-wide v8

    .line 212
    .line 213
    .line 214
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 215
    move-result v8

    .line 216
    .line 217
    .line 218
    :cond_5
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 219
    move-result v1

    .line 220
    .line 221
    .line 222
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 223
    move-result v5

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 227
    move-result v1

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 231
    move-result v5

    .line 232
    .line 233
    .line 234
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 235
    move-result v9

    .line 236
    .line 237
    .line 238
    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    .line 239
    move-result v5

    .line 240
    .line 241
    .line 242
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    .line 243
    move-result v4

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 247
    move-result v2

    .line 248
    .line 249
    .line 250
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 251
    move-result v3

    .line 252
    .line 253
    .line 254
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 255
    move-result v2

    .line 256
    .line 257
    const/16 v3, 0x19

    .line 258
    int-to-float v3, v3

    .line 259
    .line 260
    .line 261
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 262
    move-result v3

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->q()Landroidx/compose/foundation/text/TextDelegate;

    .line 266
    move-result-object v0

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextDelegate;->a()Landroidx/compose/ui/unit/Density;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    .line 273
    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 274
    move-result v0

    .line 275
    mul-float/2addr v3, v0

    .line 276
    add-float/2addr v2, v3

    .line 277
    .line 278
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 279
    .line 280
    .line 281
    invoke-direct {v0, v1, v4, v5, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 282
    return-object v0

    .line 283
    .line 284
    :cond_6
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 288
    move-result-object v0

    .line 289
    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-object v0
.end method

.method public final B()Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    return-object v0
.end method

.method public final C()Landroidx/compose/ui/text/input/OffsetMapping;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    return-object v0
.end method

.method public final D()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    return-object v0
.end method

.method public final E()Landroidx/compose/foundation/text/TextFieldState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    return-object v0
.end method

.method public final F()Landroidx/compose/ui/platform/TextToolbar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-object v0
.end method

.method public final G()Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/TextDragObserver;

    return-object v0
.end method

.method public final H()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 9
    return-object v0
.end method

.method public final I(Z)Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 6
    return-object v0
.end method

.method public final J()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    .line 22
    :cond_1
    return-void
.end method

.method public final K()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    xor-int/lit8 v0, v0, 0x1

    .line 21
    return v0
.end method

.method public final L()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/platform/ClipboardManager;->a()Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/text/input/TextFieldValueKt;->c(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString;->i(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 51
    move-result v3

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroidx/compose/ui/text/input/TextFieldValueKt;->b(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString;->i(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 67
    move-result-wide v2

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 71
    move-result v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 75
    move-result v0

    .line 76
    add-int/2addr v2, v0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v2}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 80
    move-result-wide v2

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    sget-object v0, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->S(Landroidx/compose/foundation/text/HandleState;)V

    .line 95
    .line 96
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 97
    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/compose/foundation/text/UndoManager;->a()V

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public final M()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 41
    move-result-wide v4

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x5

    .line 44
    const/4 v8, 0x0

    .line 45
    .line 46
    .line 47
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/text/input/TextFieldValue;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->x(Z)V

    .line 60
    :goto_0
    return-void
.end method

.method public final N(Landroidx/compose/ui/platform/ClipboardManager;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/platform/ClipboardManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    return-void
.end method

.method public final Q(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final R(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public final T(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method

.method public final U(Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/OffsetMapping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    return-void
.end method

.method public final V(Le8/l;)V
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
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    return-void
.end method

.method public final W(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0
    .param p1    # Landroidx/compose/foundation/text/TextFieldState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    return-void
.end method

.method public final X(Landroidx/compose/ui/platform/TextToolbar;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/platform/TextToolbar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-void
.end method

.method public final Y(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<set-?>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final Z(Landroidx/compose/ui/text/input/VisualTransformation;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    return-void
.end method

.method public final a0()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 3
    .line 4
    instance-of v0, v0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$copy$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$copy$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 27
    move-object v5, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v5, v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 37
    move-result-wide v3

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->x()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$cut$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 57
    move-object v7, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v7, v2

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->x()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Landroidx/compose/ui/platform/ClipboardManager;->a()Landroidx/compose/ui/text/AnnotatedString;

    .line 73
    move-result-object v0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object v0, v2

    .line 76
    .line 77
    :goto_2
    if-eqz v0, :cond_3

    .line 78
    .line 79
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$paste$1;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$paste$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 83
    move-object v6, v0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    move-object v6, v2

    .line 86
    .line 87
    .line 88
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 93
    move-result-wide v0

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->j(J)I

    .line 97
    move-result v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 109
    move-result v1

    .line 110
    .line 111
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$selectAll$1;

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$showSelectionToolbar$selectAll$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 117
    :cond_4
    move-object v8, v2

    .line 118
    .line 119
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 120
    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->t()Landroidx/compose/ui/geometry/Rect;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    .line 128
    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/platform/TextToolbar;->a(Landroidx/compose/ui/geometry/Rect;Le8/a;Le8/a;Le8/a;Le8/a;)V

    .line 129
    :cond_5
    return-void
.end method

.method public final k(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/ui/platform/ClipboardManager;->b(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 31
    .line 32
    :cond_1
    if-nez p1, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->S(Landroidx/compose/foundation/text/HandleState;)V

    .line 72
    return-void
.end method

.method public final n()Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 6
    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/ui/platform/ClipboardManager;->b(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->c(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 66
    move-result v2

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Landroidx/compose/ui/text/input/TextFieldValueKt;->b(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/AnnotatedString;->i(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 82
    move-result-wide v1

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 86
    move-result v1

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 90
    move-result-wide v1

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    sget-object v0, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->S(Landroidx/compose/foundation/text/HandleState;)V

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/compose/foundation/text/UndoManager;->a()V

    .line 112
    :cond_2
    return-void
.end method

.method public final p(Landroidx/compose/ui/geometry/Offset;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 22
    move-result-object v0

    .line 23
    :goto_0
    move-object v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    if-eqz p1, :cond_1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 36
    move-result-wide v2

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x2

    .line 39
    const/4 v6, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->h(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 47
    move-result v0

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Landroidx/compose/ui/text/TextRangeKt;->a(I)J

    .line 69
    move-result-wide v3

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x5

    .line 72
    const/4 v7, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Le8/l;

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    :cond_2
    if-eqz p1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 95
    move-result p1

    .line 96
    .line 97
    if-lez p1, :cond_3

    .line 98
    .line 99
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->Cursor:Landroidx/compose/foundation/text/HandleState;

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_3
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->S(Landroidx/compose/foundation/text/HandleState;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->J()V

    .line 109
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->d()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester;->c()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->x(Z)V

    .line 33
    .line 34
    :goto_0
    sget-object v0, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->S(Landroidx/compose/foundation/text/HandleState;)V

    .line 38
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->x(Z)V

    .line 10
    .line 11
    :goto_0
    sget-object v0, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->S(Landroidx/compose/foundation/text/HandleState;)V

    .line 15
    return-void
.end method

.method public final u()Landroidx/compose/ui/geometry/Offset;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final v(Landroidx/compose/ui/unit/Density;)J
    .locals 4
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v3, v2}, Lj8/m;->n(III)I

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)Landroidx/compose/ui/geometry/Rect;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldCursorKt;->d()F

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 73
    move-result p1

    .line 74
    const/4 v2, 0x2

    .line 75
    int-to-float v2, v2

    .line 76
    div-float/2addr p1, v2

    .line 77
    add-float/2addr v1, p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 81
    move-result p1

    .line 82
    .line 83
    .line 84
    invoke-static {v1, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 85
    move-result-wide v0

    .line 86
    return-wide v0
.end method

.method public final w()Landroidx/compose/foundation/text/Handle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final x()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final y()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public final z(Z)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 19
    move-result v0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/TextFieldState;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 50
    move-result-wide v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->m(J)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0, p1, v2}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->b(Landroidx/compose/ui/text/TextLayoutResult;IZZ)J

    .line 58
    move-result-wide v0

    .line 59
    return-wide v0
.end method
