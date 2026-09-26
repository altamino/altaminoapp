.class final Landroidx/compose/animation/SizeAnimationModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationModifier.kt\nandroidx/compose/animation/SizeAnimationModifier\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,159:1\n56#2,4:160\n*S KotlinDebug\n*F\n+ 1 AnimationModifier.kt\nandroidx/compose/animation/SizeAnimationModifier\n*L\n110#1:160,4\n*E\n"
.end annotation


# instance fields
.field private animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final animSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listener:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Lkotlinx/coroutines/o0;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Lkotlinx/coroutines/o0;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "animSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier;->animSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/animation/SizeAnimationModifier;->scope:Lkotlinx/coroutines/o0;

    .line 18
    return-void
.end method


# virtual methods
.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 18
    move-result p3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 22
    move-result p4

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 26
    move-result-wide p3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p3, p4}, Landroidx/compose/animation/SizeAnimationModifier;->a(J)J

    .line 30
    move-result-wide p3

    .line 31
    .line 32
    .line 33
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    new-instance v4, Landroidx/compose/animation/SizeAnimationModifier$measure$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, p2}, Landroidx/compose/animation/SizeAnimationModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 45
    const/4 v5, 0x4

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v0, p1

    .line 48
    .line 49
    .line 50
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public final a(J)J
    .locals 13

    .line 1
    .line 2
    iget-object v6, p0, Landroidx/compose/animation/SizeAnimationModifier;->animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 3
    .line 4
    if-eqz v6, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->a()Landroidx/compose/animation/core/Animatable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->l()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->a()Landroidx/compose/animation/core/Animatable;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v0, v1}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->c(J)V

    .line 42
    .line 43
    iget-object v7, p0, Landroidx/compose/animation/SizeAnimationModifier;->scope:Lkotlinx/coroutines/o0;

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    .line 47
    new-instance v10, Landroidx/compose/animation/SizeAnimationModifier$animateTo$data$1$1;

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v0, v10

    .line 50
    move-object v1, v6

    .line 51
    move-wide v2, p1

    .line 52
    move-object v4, p0

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/SizeAnimationModifier$animateTo$data$1$1;-><init>(Landroidx/compose/animation/SizeAnimationModifier$AnimData;JLandroidx/compose/animation/SizeAnimationModifier;Lkotlin/coroutines/d;)V

    .line 56
    const/4 v11, 0x3

    .line 57
    const/4 v12, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    new-instance v6, Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 64
    .line 65
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x1

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v3}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 80
    move-result-wide v3

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V

    .line 88
    const/4 v1, 0x0

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v0, p1, p2, v1}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;-><init>(Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/internal/k;)V

    .line 92
    .line 93
    :cond_1
    :goto_0
    iput-object v6, p0, Landroidx/compose/animation/SizeAnimationModifier;->animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->a()Landroidx/compose/animation/core/Animatable;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 107
    move-result-wide p1

    .line 108
    return-wide p1
.end method

.method public final b()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier;->animSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final c()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier;->listener:Le8/p;

    return-object v0
.end method

.method public final d(Le8/p;)V
    .locals 0
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier;->listener:Le8/p;

    return-void
.end method
