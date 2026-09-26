.class public final Landroidx/compose/material/SwipeableDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,890:1\n155#2:891\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableDefaults\n*L\n812#1:891\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field private static final AnimationSpec:Landroidx/compose/animation/core/SpringSpec;
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

.field public static final INSTANCE:Landroidx/compose/material/SwipeableDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final StandardResistanceFactor:F = 10.0f

.field public static final StiffResistanceFactor:F = 20.0f

.field private static final VelocityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/SwipeableDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/SwipeableDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x7

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, v0

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/k;)V

    .line 19
    .line 20
    sput-object v0, Landroidx/compose/material/SwipeableDefaults;->AnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    const/16 v0, 0x7d

    .line 23
    int-to-float v0, v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/material/SwipeableDefaults;->VelocityThreshold:F

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/compose/material/SwipeableDefaults;Ljava/util/Set;FFILjava/lang/Object;)Landroidx/compose/material/ResistanceConfig;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    .line 4
    const/high16 v0, 0x41200000    # 10.0f

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    move p2, v0

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    move p3, v0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableDefaults;->c(Ljava/util/Set;FF)Landroidx/compose/material/ResistanceConfig;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/compose/animation/core/SpringSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/SwipeableDefaults;->AnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SwipeableDefaults;->VelocityThreshold:F

    return v0
.end method

.method public final c(Ljava/util/Set;FF)Landroidx/compose/material/ResistanceConfig;
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Float;",
            ">;FF)",
            "Landroidx/compose/material/ResistanceConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "anchors"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p1}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/collections/t;->A0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result p1

    .line 37
    sub-float/2addr v0, p1

    .line 38
    .line 39
    new-instance p1, Landroidx/compose/material/ResistanceConfig;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, p2, p3}, Landroidx/compose/material/ResistanceConfig;-><init>(FFF)V

    .line 43
    :goto_0
    return-object p1
.end method
