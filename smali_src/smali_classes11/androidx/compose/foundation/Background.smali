.class final Landroidx/compose/foundation/Background;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackground.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Background.kt\nandroidx/compose/foundation/Background\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation


# instance fields
.field private final alpha:F

.field private final brush:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final color:Landroidx/compose/ui/graphics/Color;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastOutline:Landroidx/compose/ui/graphics/Outline;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastSize:Landroidx/compose/ui/geometry/Size;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Color;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Shape;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p5}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    iput-object p1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    iput-object p2, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    iput p3, p0, Landroidx/compose/foundation/Background;->alpha:F

    iput-object p4, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Le8/l;ILkotlin/jvm/internal/k;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    move v4, p3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/Background;-><init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Le8/l;Lkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Le8/l;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/Background;-><init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Le8/l;)V

    return-void
.end method

.method private final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/foundation/Background;->lastSize:Landroidx/compose/ui/geometry/Size;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/geometry/Size;->e(JLjava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/Background;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/foundation/Background;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 32
    move-result-wide v1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1, v2, v3, p1}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 53
    move-result-wide v3

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    const/16 v9, 0x3c

    .line 60
    const/4 v10, 0x0

    .line 61
    move-object v1, p1

    .line 62
    move-object v2, v0

    .line 63
    .line 64
    .line 65
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/OutlineKt;->f(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 66
    .line 67
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget v4, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    .line 76
    const/16 v8, 0x38

    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v1, p1

    .line 79
    move-object v2, v0

    .line 80
    .line 81
    .line 82
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/OutlineKt;->d(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 83
    .line 84
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/Background;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 88
    move-result-wide v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iput-object p1, p0, Landroidx/compose/foundation/Background;->lastSize:Landroidx/compose/ui/geometry/Size;

    .line 95
    return-void
.end method

.method private final b(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v3

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    const-wide/16 v7, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    .line 20
    const/16 v13, 0x7e

    .line 21
    const/4 v14, 0x0

    .line 22
    .line 23
    move-object/from16 v2, p1

    .line 24
    .line 25
    .line 26
    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/a;->n(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-wide/16 v17, 0x0

    .line 33
    .line 34
    const-wide/16 v19, 0x0

    .line 35
    .line 36
    iget v2, v0, Landroidx/compose/foundation/Background;->alpha:F

    .line 37
    .line 38
    const/16 v22, 0x0

    .line 39
    .line 40
    const/16 v23, 0x0

    .line 41
    .line 42
    const/16 v24, 0x0

    .line 43
    .line 44
    const/16 v25, 0x76

    .line 45
    .line 46
    const/16 v26, 0x0

    .line 47
    .line 48
    move-object/from16 v15, p1

    .line 49
    .line 50
    move-object/from16 v16, v1

    .line 51
    .line 52
    move/from16 v21, v2

    .line 53
    .line 54
    .line 55
    invoke-static/range {v15 .. v26}, Landroidx/compose/ui/graphics/drawscope/a;->m(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/Background;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/foundation/Background;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 25
    .line 26
    iget-object v2, p1, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 35
    .line 36
    iget v2, p1, Landroidx/compose/foundation/Background;->alpha:F

    .line 37
    .line 38
    cmpg-float v1, v1, v2

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    const/4 v0, 0x1

    .line 52
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 9
    move-result-wide v2

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    .line 17
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 25
    move-result v1

    .line 26
    :cond_1
    add-int/2addr v0, v1

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget v1, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    return v0
.end method

.method public r(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/foundation/Background;->b(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/Background;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Background(color="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", brush="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", alpha = "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", shape="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const/16 v1, 0x29

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
