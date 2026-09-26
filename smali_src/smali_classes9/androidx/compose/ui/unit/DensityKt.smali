.class public final Landroidx/compose/ui/unit/DensityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FF)Landroidx/compose/ui/unit/Density;
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 6
    return-object v0
.end method

.method public static synthetic b(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x2

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DensityKt;->a(FF)Landroidx/compose/ui/unit/Density;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
