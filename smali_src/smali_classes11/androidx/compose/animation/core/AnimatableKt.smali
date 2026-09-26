.class public final Landroidx/compose/animation/core/AnimatableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FF)Landroidx/compose/animation/core/Animatable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    sget-object v1, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1, p1}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V

    .line 20
    return-object v0
.end method

.method public static synthetic b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x2

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x3c23d70a    # 0.01f

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/AnimatableKt;->a(FF)Landroidx/compose/animation/core/Animatable;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
