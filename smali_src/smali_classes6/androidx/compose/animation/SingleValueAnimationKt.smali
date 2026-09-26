.class public final Landroidx/compose/animation/SingleValueAnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleValueAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleValueAnimation.kt\nandroidx/compose/animation/SingleValueAnimationKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,93:1\n36#2:94\n1057#3,6:95\n*S KotlinDebug\n*F\n+ 1 SingleValueAnimation.kt\nandroidx/compose/animation/SingleValueAnimationKt\n*L\n61#1:94\n61#1:95,6\n*E\n"
.end annotation


# static fields
.field private static final colorDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v2, v2, v0, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Landroidx/compose/animation/SingleValueAnimationKt;->colorDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 10
    return-void
.end method

.method public static final a(JLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
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
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x73c751a7

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
    sget-object p2, Landroidx/compose/animation/SingleValueAnimationKt;->colorDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 13
    :cond_0
    move-object v2, p2

    .line 14
    .line 15
    and-int/lit8 p2, p6, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    const/4 p3, 0x0

    .line 19
    :cond_1
    move-object v4, p3

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    const p3, 0x44faf204

    .line 27
    .line 28
    .line 29
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    if-ne p3, p2, :cond_3

    .line 48
    .line 49
    :cond_2
    sget-object p2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Landroidx/compose/animation/ColorVectorConverterKt;->d(Landroidx/compose/ui/graphics/Color$Companion;)Le8/l;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    move-object p3, p2

    .line 63
    .line 64
    check-cast p3, Landroidx/compose/animation/core/TwoWayConverter;

    .line 65
    .line 66
    .line 67
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    move-object v1, p3

    .line 72
    .line 73
    check-cast v1, Landroidx/compose/animation/core/TwoWayConverter;

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 77
    move-result-object v0

    .line 78
    const/4 v3, 0x0

    .line 79
    .line 80
    and-int/lit8 p0, p5, 0xe

    .line 81
    .line 82
    or-int/lit16 p0, p0, 0x240

    .line 83
    .line 84
    shl-int/lit8 p1, p5, 0x6

    .line 85
    .line 86
    .line 87
    const p2, 0xe000

    .line 88
    and-int/2addr p1, p2

    .line 89
    .line 90
    or-int v6, p0, p1

    .line 91
    .line 92
    const/16 v7, 0x8

    .line 93
    move-object v5, p4

    .line 94
    .line 95
    .line 96
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->e(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 101
    return-object p0
.end method
