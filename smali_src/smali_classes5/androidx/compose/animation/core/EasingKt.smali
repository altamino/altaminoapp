.class public final Landroidx/compose/animation/core/EasingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CubicErrorBound:F = 0.001f

.field private static final FastOutLinearInEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FastOutSlowInEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LinearEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LinearOutSlowInEasing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 3
    .line 4
    .line 5
    const v1, 0x3ecccccd    # 0.4f

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    const v3, 0x3e4ccccd    # 0.2f

    .line 10
    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 15
    .line 16
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 22
    .line 23
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->LinearOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 29
    .line 30
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/Easing;

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/animation/core/EasingKt$LinearEasing$1;->INSTANCE:Landroidx/compose/animation/core/EasingKt$LinearEasing$1;

    .line 33
    .line 34
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/Easing;

    .line 35
    return-void
.end method

.method public static final a()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    return-object v0
.end method

.method public static final b()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/Easing;

    return-object v0
.end method

.method public static final c()Landroidx/compose/animation/core/Easing;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearOutSlowInEasing:Landroidx/compose/animation/core/Easing;

    return-object v0
.end method
