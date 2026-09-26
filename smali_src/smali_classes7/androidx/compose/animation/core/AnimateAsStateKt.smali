.class public final Landroidx/compose/animation/core/AnimateAsStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimateAsState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateAsState.kt\nandroidx/compose/animation/core/AnimateAsStateKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,384:1\n36#2:385\n25#2:392\n25#2:399\n25#2:406\n1057#3,6:386\n1057#3,6:393\n1057#3,6:400\n1057#3,6:407\n76#4:413\n76#4:414\n*S KotlinDebug\n*F\n+ 1 AnimateAsState.kt\nandroidx/compose/animation/core/AnimateAsStateKt\n*L\n69#1:385\n353#1:392\n360#1:399\n363#1:406\n69#1:386,6\n353#1:393,6\n360#1:400,6\n363#1:407,6\n361#1:413\n362#1:414\n*E\n"
.end annotation


# static fields
.field private static final defaultAnimation:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v1, v2, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a(Landroidx/compose/ui/unit/Dp$Companion;)F

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->d(Landroidx/compose/ui/geometry/Size$Companion;)J

    .line 32
    move-result-wide v4

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->c(Landroidx/compose/ui/geometry/Offset$Companion;)J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 59
    .line 60
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->g(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/ui/geometry/Rect;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 71
    .line 72
    sget-object v0, Lkotlin/jvm/internal/s;->INSTANCE:Lkotlin/jvm/internal/s;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->b(Lkotlin/jvm/internal/s;)I

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 87
    .line 88
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->e(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 92
    move-result-wide v4

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 103
    .line 104
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 108
    move-result-wide v4

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 119
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->f(Landroidx/compose/runtime/State;)Le8/l;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->g(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(FLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Dp;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x29f7c821

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 v0, p5, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 13
    :cond_0
    move-object v2, p1

    .line 14
    .line 15
    and-int/lit8 p1, p5, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_1
    move-object v4, p2

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sget-object p0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->e(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    and-int/lit8 p0, p4, 0xe

    .line 33
    .line 34
    shl-int/lit8 p1, p4, 0x3

    .line 35
    .line 36
    and-int/lit16 p1, p1, 0x380

    .line 37
    or-int/2addr p0, p1

    .line 38
    .line 39
    shl-int/lit8 p1, p4, 0x6

    .line 40
    .line 41
    .line 42
    const p2, 0xe000

    .line 43
    and-int/2addr p1, p2

    .line 44
    .line 45
    or-int v6, p0, p1

    .line 46
    .line 47
    const/16 v7, 0x8

    .line 48
    move-object v5, p3

    .line 49
    .line 50
    .line 51
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->e(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    .line 55
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 56
    return-object p0
.end method

.method public static final d(FLandroidx/compose/animation/core/AnimationSpec;FLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 9
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;F",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x4111279b

    .line 4
    .line 5
    .line 6
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 v0, p6, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 13
    .line 14
    :cond_0
    and-int/lit8 v0, p6, 0x4

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    const p2, 0x3c23d70a    # 0.01f

    .line 20
    .line 21
    :cond_1
    and-int/lit8 p6, p6, 0x8

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    if-eqz p6, :cond_2

    .line 25
    move-object v5, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object v5, p3

    .line 28
    .line 29
    .line 30
    :goto_0
    const p3, 0x3226a54d    # 9.700057E-9f

    .line 31
    .line 32
    .line 33
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 34
    .line 35
    sget-object p3, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 36
    const/4 p6, 0x3

    .line 37
    .line 38
    if-ne p1, p3, :cond_5

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    const p3, 0x44faf204

    .line 46
    .line 47
    .line 48
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    .line 55
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    if-ne p3, p1, :cond_4

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    move-result-object p1

    .line 71
    const/4 p3, 0x0

    .line 72
    .line 73
    .line 74
    invoke-static {p3, p3, p1, p6, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 75
    move-result-object p3

    .line 76
    .line 77
    .line 78
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 82
    move-object p1, p3

    .line 83
    .line 84
    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    .line 85
    :cond_5
    move-object v3, p1

    .line 86
    .line 87
    .line 88
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 89
    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    sget-object p0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    and-int/lit8 p0, p5, 0xe

    .line 105
    .line 106
    shl-int/lit8 p1, p5, 0x3

    .line 107
    .line 108
    and-int/lit16 p2, p1, 0x1c00

    .line 109
    or-int/2addr p0, p2

    .line 110
    .line 111
    .line 112
    const p2, 0xe000

    .line 113
    and-int/2addr p1, p2

    .line 114
    .line 115
    or-int v7, p0, p1

    .line 116
    const/4 v8, 0x0

    .line 117
    move-object v6, p4

    .line 118
    .line 119
    .line 120
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->e(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 121
    move-result-object p0

    .line 122
    .line 123
    .line 124
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 125
    return-object p0
.end method

.method public static final e(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 18
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;TT;",
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p5

    .line 3
    .line 4
    const-string v1, "typeConverter"

    .line 5
    .line 6
    move-object/from16 v4, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v1, -0x3272c431

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 16
    .line 17
    and-int/lit8 v1, p7, 0x4

    .line 18
    .line 19
    .line 20
    const v8, -0x1d58f75c

    .line 21
    const/4 v9, 0x0

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    const/4 v1, 0x3

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    move-object/from16 v3, p3

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v2, v3, v1, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 53
    .line 54
    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    move-object/from16 v1, p2

    .line 58
    .line 59
    :goto_0
    and-int/lit8 v2, p7, 0x10

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    move-object v10, v9

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_2
    move-object/from16 v10, p4

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    new-instance v12, Landroidx/compose/animation/core/Animatable;

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x4

    .line 85
    const/4 v7, 0x0

    .line 86
    move-object v2, v12

    .line 87
    .line 88
    move-object/from16 v3, p0

    .line 89
    .line 90
    move-object/from16 v4, p1

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/k;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 100
    .line 101
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    .line 102
    .line 103
    shr-int/lit8 v3, p6, 0xc

    .line 104
    .line 105
    and-int/lit8 v3, v3, 0xe

    .line 106
    .line 107
    .line 108
    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 109
    move-result-object v16

    .line 110
    const/4 v3, 0x6

    .line 111
    .line 112
    shr-int/lit8 v4, p6, 0x6

    .line 113
    .line 114
    and-int/lit8 v4, v4, 0xe

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 118
    move-result-object v15

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    if-ne v1, v4, :cond_4

    .line 132
    const/4 v1, -0x1

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v9, v9, v3, v9}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 143
    .line 144
    check-cast v1, Lkotlinx/coroutines/channels/d;

    .line 145
    .line 146
    new-instance v3, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;

    .line 147
    .line 148
    move-object/from16 v4, p0

    .line 149
    .line 150
    .line 151
    invoke-direct {v3, v1, v4}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;-><init>(Lkotlinx/coroutines/channels/d;Ljava/lang/Object;)V

    .line 152
    const/4 v4, 0x0

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 156
    .line 157
    new-instance v3, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;

    .line 158
    .line 159
    const/16 v17, 0x0

    .line 160
    move-object v12, v3

    .line 161
    move-object v13, v1

    .line 162
    move-object v14, v2

    .line 163
    .line 164
    .line 165
    invoke-direct/range {v12 .. v17}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;-><init>(Lkotlinx/coroutines/channels/d;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 166
    .line 167
    const/16 v4, 0x8

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v3, v0, v4}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->g()Landroidx/compose/runtime/State;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 178
    return-object v1
.end method

.method private static final f(Landroidx/compose/runtime/State;)Le8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;>;)",
            "Le8/l<",
            "TT;",
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

.method private static final g(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;>;)",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
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
    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    .line 7
    return-object p0
.end method
