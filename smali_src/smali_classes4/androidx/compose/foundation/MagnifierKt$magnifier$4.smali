.class final Landroidx/compose/foundation/MagnifierKt$magnifier$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt;->e(Landroidx/compose/ui/Modifier;Le8/l;Le8/l;FLandroidx/compose/foundation/MagnifierStyle;Le8/l;Landroidx/compose/foundation/PlatformMagnifierFactory;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nMagnifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Magnifier.kt\nandroidx/compose/foundation/MagnifierKt$magnifier$4\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,394:1\n76#2:395\n76#2:396\n25#3:397\n25#3:404\n25#3:411\n25#3:418\n1057#4,6:398\n1057#4,6:405\n1057#4,6:412\n1057#4,6:419\n76#5:425\n102#5,2:426\n76#5:428\n76#5:429\n76#5:430\n76#5:431\n76#5:432\n76#5:433\n*S KotlinDebug\n*F\n+ 1 Magnifier.kt\nandroidx/compose/foundation/MagnifierKt$magnifier$4\n*L\n274#1:395\n275#1:396\n276#1:397\n281#1:404\n291#1:411\n296#1:418\n276#1:398,6\n281#1:405,6\n291#1:412,6\n296#1:419,6\n276#1:425\n276#1:426,2\n277#1:428\n278#1:429\n279#1:430\n280#1:431\n281#1:432\n291#1:433\n*E\n"
.end annotation


# instance fields
.field final synthetic $magnifierCenter:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSizeChanged:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field final synthetic $sourceCenter:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $style:Landroidx/compose/foundation/MagnifierStyle;

.field final synthetic $zoom:F


# direct methods
.method constructor <init>(Le8/l;Le8/l;FLe8/l;Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;F",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            "Landroidx/compose/foundation/MagnifierStyle;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$sourceCenter:Le8/l;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$magnifierCenter:Le8/l;

    iput p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    iput-object p4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$onSizeChanged:Le8/l;

    iput-object p5, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iput-object p6, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$style:Landroidx/compose/foundation/MagnifierStyle;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/MutableState;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->j(Landroidx/compose/runtime/MutableState;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->k(Landroidx/compose/runtime/State;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Landroidx/compose/runtime/MutableState;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->l(Landroidx/compose/runtime/MutableState;J)V

    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->m(Landroidx/compose/runtime/State;)Le8/l;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->n(Landroidx/compose/runtime/State;)Le8/l;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->o(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->q(Landroidx/compose/runtime/State;)Le8/l;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->r(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static final j(Landroidx/compose/runtime/MutableState;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final k(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
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
    check-cast p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final l(Landroidx/compose/runtime/MutableState;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method private static final m(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;)",
            "Le8/l<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
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
    check-cast p0, Le8/l;

    .line 7
    return-object p0
.end method

.method private static final n(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;)",
            "Le8/l<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
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
    check-cast p0, Le8/l;

    .line 7
    return-object p0
.end method

.method private static final o(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final q(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;>;)",
            "Le8/l<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;"
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
    check-cast p0, Le8/l;

    .line 7
    return-object p0
.end method

.method private static final r(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method


# virtual methods
.method public final i(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 21
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
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "$this$composed"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v3, -0x1b1cdf4b

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    move-object v7, v3

    .line 27
    .line 28
    check-cast v7, Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    move-object v8, v3

    .line 38
    .line 39
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 40
    .line 41
    .line 42
    const v3, -0x1d58f75c

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    const/4 v9, 0x2

    .line 57
    const/4 v15, 0x0

    .line 58
    .line 59
    if-ne v4, v6, :cond_0

    .line 60
    .line 61
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 65
    move-result-wide v10

    .line 66
    .line 67
    .line 68
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v15, v9, v15}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 80
    move-object v14, v4

    .line 81
    .line 82
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$sourceCenter:Le8/l;

    .line 85
    const/4 v13, 0x0

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$magnifierCenter:Le8/l;

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 95
    move-result-object v16

    .line 96
    .line 97
    iget v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    .line 98
    .line 99
    .line 100
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    invoke-static {v6, v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 105
    move-result-object v17

    .line 106
    .line 107
    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$onSizeChanged:Le8/l;

    .line 108
    .line 109
    .line 110
    invoke-static {v6, v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 111
    move-result-object v11

    .line 112
    .line 113
    .line 114
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 122
    move-result-object v10

    .line 123
    .line 124
    if-ne v6, v10, :cond_1

    .line 125
    .line 126
    new-instance v6, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;

    .line 127
    .line 128
    .line 129
    invoke-direct {v6, v8, v4, v14}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->c(Le8/a;)Landroidx/compose/runtime/State;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    .line 136
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 140
    move-object v12, v6

    .line 141
    .line 142
    check-cast v12, Landroidx/compose/runtime/State;

    .line 143
    .line 144
    .line 145
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 146
    .line 147
    .line 148
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 153
    move-result-object v6

    .line 154
    .line 155
    if-ne v4, v6, :cond_2

    .line 156
    .line 157
    new-instance v4, Landroidx/compose/foundation/MagnifierKt$magnifier$4$isMagnifierShown$2$1;

    .line 158
    .line 159
    .line 160
    invoke-direct {v4, v12}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$isMagnifierShown$2$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->c(Le8/a;)Landroidx/compose/runtime/State;

    .line 164
    move-result-object v4

    .line 165
    .line 166
    .line 167
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 171
    .line 172
    move-object/from16 v18, v4

    .line 173
    .line 174
    check-cast v18, Landroidx/compose/runtime/State;

    .line 175
    .line 176
    .line 177
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 178
    .line 179
    .line 180
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 185
    move-result-object v4

    .line 186
    const/4 v10, 0x1

    .line 187
    .line 188
    if-ne v3, v4, :cond_3

    .line 189
    .line 190
    sget-object v3, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    .line 191
    .line 192
    .line 193
    invoke-static {v10, v13, v3, v9, v15}, Lkotlinx/coroutines/flow/d0;->b(IILkotlinx/coroutines/channels/a;ILjava/lang/Object;)Lkotlinx/coroutines/flow/w;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    .line 197
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 201
    .line 202
    check-cast v3, Lkotlinx/coroutines/flow/w;

    .line 203
    .line 204
    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 205
    .line 206
    .line 207
    invoke-interface {v4}, Landroidx/compose/foundation/PlatformMagnifierFactory;->b()Z

    .line 208
    move-result v4

    .line 209
    .line 210
    if-eqz v4, :cond_4

    .line 211
    const/4 v4, 0x0

    .line 212
    goto :goto_0

    .line 213
    .line 214
    :cond_4
    iget v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    .line 215
    :goto_0
    const/4 v5, 0x5

    .line 216
    .line 217
    new-array v6, v5, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object v7, v6, v13

    .line 220
    .line 221
    aput-object v8, v6, v10

    .line 222
    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    move-result-object v4

    .line 226
    .line 227
    aput-object v4, v6, v9

    .line 228
    .line 229
    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$style:Landroidx/compose/foundation/MagnifierStyle;

    .line 230
    const/4 v5, 0x3

    .line 231
    .line 232
    aput-object v4, v6, v5

    .line 233
    .line 234
    sget-object v5, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Landroidx/compose/foundation/MagnifierStyle$Companion;->b()Landroidx/compose/foundation/MagnifierStyle;

    .line 238
    move-result-object v5

    .line 239
    .line 240
    .line 241
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    move-result v4

    .line 243
    .line 244
    .line 245
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 246
    move-result-object v4

    .line 247
    const/4 v5, 0x4

    .line 248
    .line 249
    aput-object v4, v6, v5

    .line 250
    .line 251
    new-instance v9, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;

    .line 252
    .line 253
    iget-object v5, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 254
    .line 255
    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$style:Landroidx/compose/foundation/MagnifierStyle;

    .line 256
    .line 257
    iget v10, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->$zoom:F

    .line 258
    .line 259
    const/16 v19, 0x0

    .line 260
    .line 261
    move-object/from16 v20, v4

    .line 262
    move-object v4, v9

    .line 263
    move-object v0, v6

    .line 264
    .line 265
    move-object/from16 v6, v20

    .line 266
    move-object v1, v9

    .line 267
    move v9, v10

    .line 268
    move-object v10, v3

    .line 269
    .line 270
    move-object/from16 p3, v12

    .line 271
    .line 272
    move-object/from16 v12, v18

    .line 273
    .line 274
    move-object/from16 v13, p3

    .line 275
    .line 276
    move-object/from16 v18, v14

    .line 277
    .line 278
    move-object/from16 v14, v16

    .line 279
    .line 280
    move-object/from16 v15, v18

    .line 281
    .line 282
    move-object/from16 v16, v17

    .line 283
    .line 284
    move-object/from16 v17, v19

    .line 285
    .line 286
    .line 287
    invoke-direct/range {v4 .. v17}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;-><init>(Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;FLkotlinx/coroutines/flow/w;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 288
    .line 289
    const/16 v4, 0x8

    .line 290
    .line 291
    .line 292
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/EffectsKt;->g([Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 293
    .line 294
    new-instance v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$2;

    .line 295
    .line 296
    move-object/from16 v4, v18

    .line 297
    .line 298
    .line 299
    invoke-direct {v0, v4}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 300
    .line 301
    move-object/from16 v1, p1

    .line 302
    .line 303
    .line 304
    invoke-static {v1, v0}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    new-instance v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$3;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, v3}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$3;-><init>(Lkotlinx/coroutines/flow/w;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/DrawModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    new-instance v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$4;

    .line 317
    .line 318
    move-object/from16 v6, p3

    .line 319
    .line 320
    .line 321
    invoke-direct {v1, v6}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$4;-><init>(Landroidx/compose/runtime/State;)V

    .line 322
    const/4 v3, 0x0

    .line 323
    const/4 v4, 0x0

    .line 324
    const/4 v5, 0x1

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v4, v1, v5, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    .line 331
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 332
    return-object v0
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
