.class final Landroidx/compose/material/BottomAppBarCutoutShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/BottomAppBarCutoutShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AppBar.kt\nandroidx/compose/material/AppBarKt\n*L\n1#1,547:1\n1#2:548\n426#3:549\n400#3:550\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/BottomAppBarCutoutShape\n*L\n350#1:549\n350#1:550\n*E\n"
.end annotation


# instance fields
.field private final cutoutShape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fabPlacement:Landroidx/compose/material/FabPlacement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/FabPlacement;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/FabPlacement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cutoutShape"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "fabPlacement"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    .line 18
    return-void
.end method

.method private final b(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/material/AppBarKt;->h()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, v0}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/material/FabPlacement;->c()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    const/4 v2, 0x2

    .line 17
    int-to-float v2, v2

    .line 18
    mul-float/2addr v2, v0

    .line 19
    add-float/2addr v1, v2

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/compose/material/FabPlacement;->a()I

    .line 25
    move-result v3

    .line 26
    int-to-float v3, v3

    .line 27
    add-float/2addr v3, v2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/compose/material/FabPlacement;->b()I

    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    .line 40
    sub-float v6, v3, v0

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 44
    move-result v0

    .line 45
    .line 46
    add-float v7, v6, v0

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 50
    move-result v0

    .line 51
    .line 52
    const/high16 v3, 0x40000000    # 2.0f

    .line 53
    .line 54
    div-float v8, v0, v3

    .line 55
    neg-float v0, v8

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    .line 58
    .line 59
    .line 60
    invoke-interface {v3, v1, v2, p2, p3}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/OutlineKt;->b(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Outline;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 68
    move-result-wide v0

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Path;->d(J)V

    .line 72
    .line 73
    iget-object p2, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->d()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    move-result p2

    .line 82
    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroidx/compose/material/AppBarKt;->i()F

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-interface {p3, p2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 91
    move-result v9

    .line 92
    const/4 v10, 0x0

    .line 93
    move-object v4, p0

    .line 94
    move-object v5, p1

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v4 .. v10}, Landroidx/compose/material/BottomAppBarCutoutShape;->c(Landroidx/compose/ui/graphics/Path;FFFFF)V

    .line 98
    :cond_0
    return-void
.end method

.method private final c(Landroidx/compose/ui/graphics/Path;FFFFF)V
    .locals 5

    .line 1
    .line 2
    mul-float v0, p4, p4

    .line 3
    .line 4
    mul-float v1, p6, p6

    .line 5
    sub-float/2addr v0, v1

    .line 6
    float-to-double v0, v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    move-result-wide v0

    .line 11
    double-to-float v0, v0

    .line 12
    neg-float v0, v0

    .line 13
    .line 14
    add-float v1, p4, v0

    .line 15
    .line 16
    add-float v2, p2, v1

    .line 17
    .line 18
    sub-float v1, p3, v1

    .line 19
    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    sub-float/2addr v0, v3

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p6, p4}, Landroidx/compose/material/AppBarKt;->l(FFF)Lw7/u;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lw7/u;->a()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    check-cast v4, Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 35
    move-result v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lw7/u;->b()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 45
    move-result v0

    .line 46
    add-float/2addr v4, p4

    .line 47
    add-float/2addr p2, v4

    .line 48
    sub-float/2addr p3, v4

    .line 49
    sub-float/2addr v0, p6

    .line 50
    .line 51
    sub-float p4, v2, p5

    .line 52
    add-float/2addr p5, v1

    .line 53
    const/4 p6, 0x0

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p4, p6}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 57
    sub-float/2addr v2, v3

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v2, p6, p2, v0}, Landroidx/compose/ui/graphics/Path;->h(FFFF)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p3, v0}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 64
    add-float/2addr v1, v3

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v1, p6, p5, p6}, Landroidx/compose/ui/graphics/Path;->h(FFFF)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 71
    return-void
.end method


# virtual methods
.method public a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 3
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutDirection"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "density"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p2, p2, v2, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Path;->j(Landroidx/compose/ui/geometry/Rect;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1, p3, p4}, Landroidx/compose/material/BottomAppBarCutoutShape;->b(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V

    .line 39
    .line 40
    sget-object p2, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/PathOperation$Companion;->a()I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0, p1, p2}, Landroidx/compose/ui/graphics/Path;->k(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 48
    .line 49
    new-instance p2, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    .line 53
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material/BottomAppBarCutoutShape;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material/BottomAppBarCutoutShape;

    iget-object v1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    iget-object p1, p1, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BottomAppBarCutoutShape(cutoutShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->cutoutShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fabPlacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/BottomAppBarCutoutShape;->fabPlacement:Landroidx/compose/material/FabPlacement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
