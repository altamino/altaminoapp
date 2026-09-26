.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCanvasDrawScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,804:1\n1#2:805\n*E\n"
.end annotation


# instance fields
.field private final drawContext:Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fillPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private strokePaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v8, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const/16 v6, 0xf

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, v8

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/Canvas;JILkotlin/jvm/internal/k;)V

    .line 18
    .line 19
    iput-object v8, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 27
    return-void
.end method

.method private final B(Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->O()Landroidx/compose/ui/graphics/Paint;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v2, v0, p7}, Landroidx/compose/ui/graphics/Brush;->a(JLandroidx/compose/ui/graphics/Paint;F)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->e()F

    .line 18
    move-result p1

    .line 19
    .line 20
    cmpg-float p1, p1, p7

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {v0, p7}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->t()Landroidx/compose/ui/graphics/ColorFilter;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p8}, Landroidx/compose/ui/graphics/Paint;->y(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->w()I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p9}, Landroidx/compose/ui/graphics/BlendMode;->G(II)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p9}, Landroidx/compose/ui/graphics/Paint;->s(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->r()F

    .line 56
    move-result p1

    .line 57
    .line 58
    cmpg-float p1, p1, p2

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-interface {v0, p2}, Landroidx/compose/ui/graphics/Paint;->q(F)V

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->l()F

    .line 68
    move-result p1

    .line 69
    .line 70
    cmpg-float p1, p1, p3

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-interface {v0, p3}, Landroidx/compose/ui/graphics/Paint;->o(F)V

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->h()I

    .line 80
    move-result p1

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p4}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, p4}, Landroidx/compose/ui/graphics/Paint;->f(I)V

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->k()I

    .line 93
    move-result p1

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, p5}, Landroidx/compose/ui/graphics/Paint;->i(I)V

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->v()Landroidx/compose/ui/graphics/PathEffect;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-nez p1, :cond_8

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, p6}, Landroidx/compose/ui/graphics/Paint;->u(Landroidx/compose/ui/graphics/PathEffect;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->z()I

    .line 119
    move-result p1

    .line 120
    .line 121
    .line 122
    invoke-static {p1, p10}, Landroidx/compose/ui/graphics/FilterQuality;->e(II)Z

    .line 123
    move-result p1

    .line 124
    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, p10}, Landroidx/compose/ui/graphics/Paint;->g(I)V

    .line 129
    :cond_9
    return-object v0
.end method

.method static synthetic H(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 12

    .line 1
    .line 2
    move/from16 v0, p11

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0x200

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    .line 12
    move-result v0

    .line 13
    move v11, v0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    move/from16 v11, p10

    .line 17
    :goto_0
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move-object/from16 v7, p6

    .line 27
    .line 28
    move/from16 v8, p7

    .line 29
    .line 30
    move-object/from16 v9, p8

    .line 31
    .line 32
    move/from16 v10, p9

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->B(Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method private final K(JF)J
    .locals 9

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    cmpg-float v0, p3, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 11
    move-result v0

    .line 12
    .line 13
    mul-float v3, v0, p3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    const/16 v7, 0xe

    .line 19
    const/4 v8, 0x0

    .line 20
    move-wide v1, p1

    .line 21
    .line 22
    .line 23
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 24
    move-result-wide p1

    .line 25
    :goto_0
    return-wide p1
.end method

.method private final M()Landroidx/compose/ui/graphics/Paint;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->fillPaint:Landroidx/compose/ui/graphics/Paint;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/Paint;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->a()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->p(I)V

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->fillPaint:Landroidx/compose/ui/graphics/Paint;

    .line 20
    :cond_0
    return-object v0
.end method

.method private final O()Landroidx/compose/ui/graphics/Paint;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/Paint;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/Paint;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->b()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->p(I)V

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/Paint;

    .line 20
    :cond_0
    return-object v0
.end method

.method private final Q(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->M()Landroidx/compose/ui/graphics/Paint;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->O()Landroidx/compose/ui/graphics/Paint;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->r()F

    .line 26
    move-result v1

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->f()F

    .line 32
    move-result v2

    .line 33
    .line 34
    cmpg-float v1, v1, v2

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->f()F

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->q(F)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->h()I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->b()I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->b()I

    .line 62
    move-result v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->f(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->l()F

    .line 69
    move-result v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->d()F

    .line 73
    move-result v2

    .line 74
    .line 75
    cmpg-float v1, v1, v2

    .line 76
    .line 77
    if-nez v1, :cond_3

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->d()F

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->o(F)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->k()I

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->c()I

    .line 93
    move-result v2

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->c()I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->i(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->v()Landroidx/compose/ui/graphics/PathEffect;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->e()Landroidx/compose/ui/graphics/PathEffect;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->e()Landroidx/compose/ui/graphics/PathEffect;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->u(Landroidx/compose/ui/graphics/PathEffect;)V

    .line 128
    :cond_5
    move-object p1, v0

    .line 129
    :goto_2
    return-object p1

    .line 130
    .line 131
    :cond_6
    new-instance p1, Lw7/s;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 135
    throw p1
.end method

.method private final e(JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->Q(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->K(JF)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->a()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 16
    move-result p4

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/Paint;->j(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->n()Landroid/graphics/Shader;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/Paint;->x(Landroid/graphics/Shader;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->t()Landroidx/compose/ui/graphics/ColorFilter;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, p5}, Landroidx/compose/ui/graphics/Paint;->y(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->w()I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/BlendMode;->G(II)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-interface {p3, p6}, Landroidx/compose/ui/graphics/Paint;->s(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->z()I

    .line 61
    move-result p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p7}, Landroidx/compose/ui/graphics/FilterQuality;->e(II)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, p7}, Landroidx/compose/ui/graphics/Paint;->g(I)V

    .line 71
    :cond_4
    return-object p3
.end method

.method static synthetic m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 9

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x20

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    .line 10
    move-result v0

    .line 11
    move v8, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    move/from16 v8, p7

    .line 15
    :goto_0
    move-object v1, p0

    .line 16
    move-wide v2, p1

    .line 17
    move-object v4, p3

    .line 18
    move v5, p4

    .line 19
    move-object v6, p5

    .line 20
    move v7, p6

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->e(JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private final p(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->Q(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/compose/ui/graphics/Brush;->a(JLandroidx/compose/ui/graphics/Paint;F)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->e()F

    .line 18
    move-result p1

    .line 19
    .line 20
    cmpg-float p1, p1, p3

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->t()Landroidx/compose/ui/graphics/ColorFilter;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, p4}, Landroidx/compose/ui/graphics/Paint;->y(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->w()I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/BlendMode;->G(II)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p5}, Landroidx/compose/ui/graphics/Paint;->s(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->z()I

    .line 56
    move-result p1

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/FilterQuality;->e(II)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p6}, Landroidx/compose/ui/graphics/Paint;->g(I)V

    .line 66
    :cond_4
    return-object p2
.end method

.method static synthetic r(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p7, 0x20

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    sget-object p6, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p6}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    .line 10
    move-result p6

    .line 11
    :cond_0
    move v6, p6

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move v3, p3

    .line 16
    move-object v4, p4

    .line 17
    move v5, p5

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->p(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private final u(JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->O()Landroidx/compose/ui/graphics/Paint;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->K(JF)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->a()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 16
    move-result p8

    .line 17
    .line 18
    if-nez p8, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Paint;->j(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->n()Landroid/graphics/Shader;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->x(Landroid/graphics/Shader;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->t()Landroidx/compose/ui/graphics/ColorFilter;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p9}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p9}, Landroidx/compose/ui/graphics/Paint;->y(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->w()I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p10}, Landroidx/compose/ui/graphics/BlendMode;->G(II)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, p10}, Landroidx/compose/ui/graphics/Paint;->s(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->r()F

    .line 61
    move-result p1

    .line 62
    .line 63
    cmpg-float p1, p1, p3

    .line 64
    .line 65
    if-nez p1, :cond_4

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-interface {v0, p3}, Landroidx/compose/ui/graphics/Paint;->q(F)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->l()F

    .line 73
    move-result p1

    .line 74
    .line 75
    cmpg-float p1, p1, p4

    .line 76
    .line 77
    if-nez p1, :cond_5

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-interface {v0, p4}, Landroidx/compose/ui/graphics/Paint;->o(F)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->h()I

    .line 85
    move-result p1

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 89
    move-result p1

    .line 90
    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, p5}, Landroidx/compose/ui/graphics/Paint;->f(I)V

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->k()I

    .line 98
    move-result p1

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 102
    move-result p1

    .line 103
    .line 104
    if-nez p1, :cond_7

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, p6}, Landroidx/compose/ui/graphics/Paint;->i(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->v()Landroidx/compose/ui/graphics/PathEffect;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, p7}, Landroidx/compose/ui/graphics/Paint;->u(Landroidx/compose/ui/graphics/PathEffect;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Paint;->z()I

    .line 124
    move-result p1

    .line 125
    .line 126
    .line 127
    invoke-static {p1, p11}, Landroidx/compose/ui/graphics/FilterQuality;->e(II)Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-nez p1, :cond_9

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, p11}, Landroidx/compose/ui/graphics/Paint;->g(I)V

    .line 134
    :cond_9
    return-object v0
.end method

.method static synthetic x(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 13

    .line 1
    .line 2
    move/from16 v0, p12

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0x200

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    .line 12
    move-result v0

    .line 13
    move v12, v0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    move/from16 v12, p11

    .line 17
    :goto_0
    move-object v1, p0

    .line 18
    move-wide v2, p1

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    move/from16 v9, p8

    .line 31
    .line 32
    move-object/from16 v10, p9

    .line 33
    .line 34
    move/from16 v11, p10

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->u(JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method


# virtual methods
.method public C(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    const-string v1, "image"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "style"

    .line 9
    .line 10
    move-object/from16 v4, p5

    .line 11
    .line 12
    .line 13
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v1, p0

    .line 15
    .line 16
    iget-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 20
    move-result-object v11

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    .line 24
    const/16 v9, 0x20

    .line 25
    const/4 v10, 0x0

    .line 26
    move-object v2, p0

    .line 27
    .line 28
    move/from16 v5, p4

    .line 29
    .line 30
    move-object/from16 v6, p6

    .line 31
    .line 32
    move/from16 v7, p7

    .line 33
    .line 34
    .line 35
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->r(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 36
    move-result-object v2

    .line 37
    move-wide v3, p2

    .line 38
    .line 39
    .line 40
    invoke-interface {v11, p1, p2, p3, v2}, Landroidx/compose/ui/graphics/Canvas;->m(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V

    .line 41
    return-void
.end method

.method public D(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p1    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "brush"

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "style"

    .line 10
    .line 11
    move-object/from16 v3, p7

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p0

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 21
    move-result-object v10

    .line 22
    .line 23
    .line 24
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 25
    move-result v11

    .line 26
    .line 27
    .line 28
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 29
    move-result v12

    .line 30
    .line 31
    .line 32
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 37
    move-result v4

    .line 38
    .line 39
    add-float v13, v1, v4

    .line 40
    .line 41
    .line 42
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 47
    move-result v4

    .line 48
    .line 49
    add-float v14, v1, v4

    .line 50
    const/4 v7, 0x0

    .line 51
    .line 52
    const/16 v8, 0x20

    .line 53
    const/4 v9, 0x0

    .line 54
    move-object v1, p0

    .line 55
    .line 56
    move/from16 v4, p6

    .line 57
    .line 58
    move-object/from16 v5, p8

    .line 59
    .line 60
    move/from16 v6, p9

    .line 61
    .line 62
    .line 63
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->r(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    move-object/from16 p1, v10

    .line 67
    .line 68
    move/from16 p2, v11

    .line 69
    .line 70
    move/from16 p3, v12

    .line 71
    .line 72
    move/from16 p4, v13

    .line 73
    .line 74
    move/from16 p5, v14

    .line 75
    .line 76
    move-object/from16 p6, v1

    .line 77
    .line 78
    .line 79
    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/Canvas;->l(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 80
    return-void
.end method

.method public D0(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 17
    .param p1    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "brush"

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "style"

    .line 10
    .line 11
    move-object/from16 v3, p9

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    move-object/from16 v0, p0

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 22
    move-result-object v10

    .line 23
    .line 24
    .line 25
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 26
    move-result v11

    .line 27
    .line 28
    .line 29
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 38
    move-result v4

    .line 39
    .line 40
    add-float v13, v1, v4

    .line 41
    .line 42
    .line 43
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 48
    move-result v4

    .line 49
    .line 50
    add-float v14, v1, v4

    .line 51
    .line 52
    .line 53
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 54
    move-result v15

    .line 55
    .line 56
    .line 57
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 58
    move-result v16

    .line 59
    const/4 v7, 0x0

    .line 60
    .line 61
    const/16 v8, 0x20

    .line 62
    const/4 v9, 0x0

    .line 63
    .line 64
    move-object/from16 v1, p0

    .line 65
    .line 66
    move/from16 v4, p8

    .line 67
    .line 68
    move-object/from16 v5, p10

    .line 69
    .line 70
    move/from16 v6, p11

    .line 71
    .line 72
    .line 73
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->r(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    move-object/from16 p1, v10

    .line 77
    .line 78
    move/from16 p2, v11

    .line 79
    .line 80
    move/from16 p3, v12

    .line 81
    .line 82
    move/from16 p4, v13

    .line 83
    .line 84
    move/from16 p5, v14

    .line 85
    .line 86
    move/from16 p6, v15

    .line 87
    .line 88
    move/from16 p7, v16

    .line 89
    .line 90
    move-object/from16 p8, v1

    .line 91
    .line 92
    .line 93
    invoke-interface/range {p1 .. p8}, Landroidx/compose/ui/graphics/Canvas;->v(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 94
    return-void
.end method

.method public E(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p9    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    .line 4
    iget-object v0, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 8
    move-result-object v15

    .line 9
    .line 10
    const/high16 v4, 0x40800000    # 4.0f

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 16
    move-result v6

    .line 17
    const/4 v11, 0x0

    .line 18
    .line 19
    const/16 v12, 0x200

    .line 20
    const/4 v13, 0x0

    .line 21
    .line 22
    move-object/from16 v0, p0

    .line 23
    .line 24
    move-wide/from16 v1, p1

    .line 25
    .line 26
    move/from16 v3, p7

    .line 27
    .line 28
    move/from16 v5, p8

    .line 29
    .line 30
    move-object/from16 v7, p9

    .line 31
    .line 32
    move/from16 v8, p10

    .line 33
    .line 34
    move-object/from16 v9, p11

    .line 35
    .line 36
    move/from16 v10, p12

    .line 37
    .line 38
    .line 39
    invoke-static/range {v0 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->x(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    move-object/from16 p7, v15

    .line 43
    .line 44
    move-wide/from16 p8, p3

    .line 45
    .line 46
    move-wide/from16 p10, p5

    .line 47
    .line 48
    move-object/from16 p12, v0

    .line 49
    .line 50
    .line 51
    invoke-interface/range {p7 .. p12}, Landroidx/compose/ui/graphics/Canvas;->p(JJLandroidx/compose/ui/graphics/Paint;)V

    .line 52
    return-void
.end method

.method public E0()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->f()Landroidx/compose/ui/unit/Density;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->E0()F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public G(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 13
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    const-string v1, "path"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "style"

    .line 9
    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    .line 13
    invoke-static {v5, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v1, p0

    .line 15
    .line 16
    iget-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 20
    move-result-object v12

    .line 21
    const/4 v9, 0x0

    .line 22
    .line 23
    const/16 v10, 0x20

    .line 24
    const/4 v11, 0x0

    .line 25
    move-object v2, p0

    .line 26
    move-wide v3, p2

    .line 27
    .line 28
    move/from16 v6, p4

    .line 29
    .line 30
    move-object/from16 v7, p6

    .line 31
    .line 32
    move/from16 v8, p7

    .line 33
    .line 34
    .line 35
    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v12, p1, v2}, Landroidx/compose/ui/graphics/Canvas;->t(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 40
    return-void
.end method

.method public synthetic H0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/a;->h(Landroidx/compose/ui/unit/Density;F)F

    move-result p1

    return p1
.end method

.method public final I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    return-object v0
.end method

.method public I0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;IJFI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "points"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 15
    move-result-object v15

    .line 16
    .line 17
    const/high16 v6, 0x40800000    # 4.0f

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 23
    move-result v8

    .line 24
    const/4 v13, 0x0

    .line 25
    .line 26
    const/16 v14, 0x200

    .line 27
    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    move-object/from16 v2, p0

    .line 31
    .line 32
    move-wide/from16 v3, p3

    .line 33
    .line 34
    move/from16 v5, p5

    .line 35
    .line 36
    move/from16 v7, p6

    .line 37
    .line 38
    move-object/from16 v9, p7

    .line 39
    .line 40
    move/from16 v10, p8

    .line 41
    .line 42
    move-object/from16 v11, p9

    .line 43
    .line 44
    move/from16 v12, p10

    .line 45
    move-object v1, v15

    .line 46
    .line 47
    move-object/from16 v15, v16

    .line 48
    .line 49
    .line 50
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->x(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    move/from16 v3, p2

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v3, v0, v2}, Landroidx/compose/ui/graphics/Canvas;->d(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public K0(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p1    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "brush"

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    move-object v0, p0

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 14
    move-result-object v14

    .line 15
    .line 16
    const/high16 v4, 0x40800000    # 4.0f

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 22
    move-result v6

    .line 23
    const/4 v11, 0x0

    .line 24
    .line 25
    const/16 v12, 0x200

    .line 26
    const/4 v13, 0x0

    .line 27
    move-object v1, p0

    .line 28
    .line 29
    move/from16 v3, p6

    .line 30
    .line 31
    move/from16 v5, p7

    .line 32
    .line 33
    move-object/from16 v7, p8

    .line 34
    .line 35
    move/from16 v8, p9

    .line 36
    .line 37
    move-object/from16 v9, p10

    .line 38
    .line 39
    move/from16 v10, p11

    .line 40
    .line 41
    .line 42
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->H(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    move-object/from16 p6, v14

    .line 46
    .line 47
    move-wide/from16 p7, p2

    .line 48
    .line 49
    move-wide/from16 p9, p4

    .line 50
    .line 51
    move-object/from16 p11, v1

    .line 52
    .line 53
    .line 54
    invoke-interface/range {p6 .. p11}, Landroidx/compose/ui/graphics/Canvas;->p(JJLandroidx/compose/ui/graphics/Paint;)V

    .line 55
    return-void
.end method

.method public L(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12
    .param p7    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    move-object/from16 v4, p7

    .line 5
    .line 6
    .line 7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    move-object v0, p0

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 14
    move-result-object v11

    .line 15
    const/4 v8, 0x0

    .line 16
    .line 17
    const/16 v9, 0x20

    .line 18
    const/4 v10, 0x0

    .line 19
    move-object v1, p0

    .line 20
    move-wide v2, p1

    .line 21
    .line 22
    move/from16 v5, p6

    .line 23
    .line 24
    move-object/from16 v6, p8

    .line 25
    .line 26
    move/from16 v7, p9

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 30
    move-result-object v1

    .line 31
    move v2, p3

    .line 32
    .line 33
    move-wide/from16 v3, p4

    .line 34
    .line 35
    .line 36
    invoke-interface {v11, v3, v4, p3, v1}, Landroidx/compose/ui/graphics/Canvas;->u(JFLandroidx/compose/ui/graphics/Paint;)V

    .line 37
    return-void
.end method

.method public synthetic L0(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/a;->a(Landroidx/compose/ui/unit/Density;J)I

    move-result p1

    return p1
.end method

.method public N(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p11    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    move-object/from16 v4, p11

    .line 5
    .line 6
    .line 7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 15
    move-result-object v11

    .line 16
    .line 17
    .line 18
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 19
    move-result v12

    .line 20
    .line 21
    .line 22
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 23
    move-result v13

    .line 24
    .line 25
    .line 26
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 31
    move-result v2

    .line 32
    .line 33
    add-float v14, v1, v2

    .line 34
    .line 35
    .line 36
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 41
    move-result v2

    .line 42
    .line 43
    add-float v15, v1, v2

    .line 44
    const/4 v8, 0x0

    .line 45
    .line 46
    const/16 v9, 0x20

    .line 47
    const/4 v10, 0x0

    .line 48
    .line 49
    move-object/from16 v1, p0

    .line 50
    .line 51
    move-wide/from16 v2, p1

    .line 52
    .line 53
    move/from16 v5, p10

    .line 54
    .line 55
    move-object/from16 v6, p12

    .line 56
    .line 57
    move/from16 v7, p13

    .line 58
    .line 59
    .line 60
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 61
    move-result-object v10

    .line 62
    move-object v2, v11

    .line 63
    move v3, v12

    .line 64
    move v4, v13

    .line 65
    move v5, v14

    .line 66
    move v6, v15

    .line 67
    .line 68
    move/from16 v7, p3

    .line 69
    .line 70
    move/from16 v8, p4

    .line 71
    .line 72
    move/from16 v9, p5

    .line 73
    .line 74
    .line 75
    invoke-interface/range {v2 .. v10}, Landroidx/compose/ui/graphics/Canvas;->f(FFFFFFZLandroidx/compose/ui/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public synthetic P(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/a;->d(Landroidx/compose/ui/unit/Density;F)F

    move-result p1

    return p1
.end method

.method public P0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 12
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "image"

    .line 3
    move-object v2, p1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "style"

    .line 9
    .line 10
    move-object/from16 v1, p11

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p0

    .line 15
    .line 16
    iget-object v3, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 20
    move-result-object v10

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v3, p0

    .line 23
    .line 24
    move-object/from16 v5, p11

    .line 25
    .line 26
    move/from16 v6, p10

    .line 27
    .line 28
    move-object/from16 v7, p12

    .line 29
    .line 30
    move/from16 v8, p13

    .line 31
    .line 32
    move/from16 v9, p14

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v3 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->p(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 36
    move-result-object v11

    .line 37
    move-object v1, v10

    .line 38
    move-wide v3, p2

    .line 39
    .line 40
    move-wide/from16 v5, p4

    .line 41
    .line 42
    move-wide/from16 v7, p6

    .line 43
    .line 44
    move-wide/from16 v9, p8

    .line 45
    .line 46
    .line 47
    invoke-interface/range {v1 .. v11}, Landroidx/compose/ui/graphics/Canvas;->e(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V

    .line 48
    return-void
.end method

.method public T()Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    return-object v0
.end method

.method public synthetic W()J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/a;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic X(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/a;->i(Landroidx/compose/ui/unit/Density;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic c()J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/a;->b(Landroidx/compose/ui/graphics/drawscope/DrawScope;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDensity()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->f()Landroidx/compose/ui/unit/Density;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->g()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic j(I)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/a;->e(Landroidx/compose/ui/unit/Density;I)F

    move-result p1

    return p1
.end method

.method public synthetic j0(F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/a;->b(Landroidx/compose/ui/unit/Density;F)I

    move-result p1

    return p1
.end method

.method public o0(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 18
    .param p9    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    move-object/from16 v4, p9

    .line 5
    .line 6
    .line 7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 15
    move-result-object v11

    .line 16
    .line 17
    .line 18
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 19
    move-result v12

    .line 20
    .line 21
    .line 22
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 23
    move-result v13

    .line 24
    .line 25
    .line 26
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 31
    move-result v2

    .line 32
    .line 33
    add-float v14, v1, v2

    .line 34
    .line 35
    .line 36
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 41
    move-result v2

    .line 42
    .line 43
    add-float v15, v1, v2

    .line 44
    .line 45
    .line 46
    invoke-static/range {p7 .. p8}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 47
    move-result v16

    .line 48
    .line 49
    .line 50
    invoke-static/range {p7 .. p8}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 51
    move-result v17

    .line 52
    const/4 v8, 0x0

    .line 53
    .line 54
    const/16 v9, 0x20

    .line 55
    const/4 v10, 0x0

    .line 56
    .line 57
    move-object/from16 v1, p0

    .line 58
    .line 59
    move-wide/from16 v2, p1

    .line 60
    .line 61
    move/from16 v5, p10

    .line 62
    .line 63
    move-object/from16 v6, p11

    .line 64
    .line 65
    move/from16 v7, p12

    .line 66
    .line 67
    .line 68
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    move-object/from16 p1, v11

    .line 72
    .line 73
    move/from16 p2, v12

    .line 74
    .line 75
    move/from16 p3, v13

    .line 76
    .line 77
    move/from16 p4, v14

    .line 78
    .line 79
    move/from16 p5, v15

    .line 80
    .line 81
    move/from16 p6, v16

    .line 82
    .line 83
    move/from16 p7, v17

    .line 84
    .line 85
    move-object/from16 p8, v1

    .line 86
    .line 87
    .line 88
    invoke-interface/range {p1 .. p8}, Landroidx/compose/ui/graphics/Canvas;->v(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 89
    return-void
.end method

.method public synthetic p0(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/a;->g(Landroidx/compose/ui/unit/Density;J)F

    move-result p1

    return p1
.end method

.method public synthetic q(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/a;->f(Landroidx/compose/ui/unit/Density;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic s(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/a;->c(Landroidx/compose/ui/unit/Density;J)F

    move-result p1

    return p1
.end method

.method public w(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    const-string v1, "path"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "brush"

    .line 9
    move-object v3, p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v1, "style"

    .line 15
    .line 16
    move-object/from16 v4, p4

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v1, p0

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 26
    move-result-object v11

    .line 27
    const/4 v8, 0x0

    .line 28
    .line 29
    const/16 v9, 0x20

    .line 30
    const/4 v10, 0x0

    .line 31
    move-object v2, p0

    .line 32
    move v5, p3

    .line 33
    .line 34
    move-object/from16 v6, p5

    .line 35
    .line 36
    move/from16 v7, p6

    .line 37
    .line 38
    .line 39
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->r(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-interface {v11, p1, v2}, Landroidx/compose/ui/graphics/Canvas;->t(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 44
    return-void
.end method

.method public x0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p8    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    move-object/from16 v4, p8

    .line 5
    .line 6
    .line 7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 15
    move-result-object v11

    .line 16
    .line 17
    .line 18
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 19
    move-result v12

    .line 20
    .line 21
    .line 22
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 23
    move-result v13

    .line 24
    .line 25
    .line 26
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 31
    move-result v2

    .line 32
    .line 33
    add-float v14, v1, v2

    .line 34
    .line 35
    .line 36
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 41
    move-result v2

    .line 42
    .line 43
    add-float v15, v1, v2

    .line 44
    const/4 v8, 0x0

    .line 45
    .line 46
    const/16 v9, 0x20

    .line 47
    const/4 v10, 0x0

    .line 48
    .line 49
    move-object/from16 v1, p0

    .line 50
    .line 51
    move-wide/from16 v2, p1

    .line 52
    .line 53
    move/from16 v5, p7

    .line 54
    .line 55
    move-object/from16 v6, p9

    .line 56
    .line 57
    move/from16 v7, p10

    .line 58
    .line 59
    .line 60
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    move-object/from16 p1, v11

    .line 64
    .line 65
    move/from16 p2, v12

    .line 66
    .line 67
    move/from16 p3, v13

    .line 68
    .line 69
    move/from16 p4, v14

    .line 70
    .line 71
    move/from16 p5, v15

    .line 72
    .line 73
    move-object/from16 p6, v1

    .line 74
    .line 75
    .line 76
    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/Canvas;->l(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 77
    return-void
.end method
