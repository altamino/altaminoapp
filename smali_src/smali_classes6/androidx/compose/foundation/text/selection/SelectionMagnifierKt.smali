.class public final Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionMagnifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionMagnifier.kt\nandroidx/compose/foundation/text/selection/SelectionMagnifierKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,111:1\n25#2:112\n25#2:119\n1057#3,6:113\n1057#3,6:120\n76#4:126\n*S KotlinDebug\n*F\n+ 1 SelectionMagnifier.kt\nandroidx/compose/foundation/text/selection/SelectionMagnifierKt\n*L\n80#1:112\n81#1:119\n80#1:113,6\n81#1:120,6\n80#1:126\n*E\n"
.end annotation


# static fields
.field private static final MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;
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

.field private static final OffsetDisplacementThreshold:J

.field private static final UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 3
    .line 4
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 8
    .line 9
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1;

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->a(Le8/l;Le8/l;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 20
    .line 21
    .line 22
    const v0, 0x3c23d70a    # 0.01f

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    sput-wide v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->OffsetDisplacementThreshold:J

    .line 29
    .line 30
    new-instance v8, Landroidx/compose/animation/core/SpringSpec;

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v2, v8

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/k;)V

    .line 43
    .line 44
    sput-object v8, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 45
    return-void
.end method

.method public static final synthetic a()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/animation/core/AnimationVector2D;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    return-object v0
.end method

.method public static final synthetic c(Le8/a;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->f(Le8/a;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->g(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Le8/a;Le8/l;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/a<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Le8/l<",
            "-",
            "Le8/a<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;+",
            "Landroidx/compose/ui/Modifier;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

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
    const-string v0, "magnifierCenter"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "platformMagnifier"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$animatedSelectionMagnifier$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$animatedSelectionMagnifier$1;-><init>(Le8/a;Le8/l;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static final f(Le8/a;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 4
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, -0x5ec259b1

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const p2, -0x1d58f75c

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->c(Le8/a;)Landroidx/compose/runtime/State;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 35
    .line 36
    check-cast v0, Landroidx/compose/runtime/State;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    if-ne p0, p2, :cond_1

    .line 50
    .line 51
    new-instance p0, Landroidx/compose/animation/core/Animatable;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->g(Landroidx/compose/runtime/State;)J

    .line 55
    move-result-wide v1

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 62
    .line 63
    sget-wide v2, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->OffsetDisplacementThreshold:J

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p2, v1, v2}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 77
    .line 78
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 79
    .line 80
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 81
    .line 82
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1;

    .line 83
    const/4 v2, 0x0

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v0, p0, v2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/d;)V

    .line 87
    const/4 v0, 0x0

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v1, p1, v0}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->g()Landroidx/compose/runtime/State;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 98
    return-object p0
.end method

.method private static final g(Landroidx/compose/runtime/State;)J
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
