.class public final Landroidx/compose/ui/graphics/vector/VectorPath;
.super Landroidx/compose/ui/graphics/vector/VectorNode;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final fill:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fillAlpha:F

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathFillType:I

.field private final stroke:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final strokeAlpha:F

.field private final strokeLineCap:I

.field private final strokeLineJoin:I

.field private final strokeLineMiter:F

.field private final strokeLineWidth:F

.field private final trimPathEnd:F

.field private final trimPathOffset:F

.field private final trimPathStart:F


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorNode;-><init>(Lkotlin/jvm/internal/k;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    iput-object p4, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    iput p5, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    iput p7, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    iput p8, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    iput p9, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    iput p10, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    iput p11, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    iput p12, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    iput p13, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    iput p14, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILkotlin/jvm/internal/k;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v9, v4

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 2
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->c()I

    move-result v1

    move v11, v1

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 3
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->d()I

    move-result v1

    move v12, v1

    goto :goto_7

    :cond_7
    move/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/high16 v1, 0x40800000    # 4.0f

    move v13, v1

    goto :goto_8

    :cond_8
    move/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v14, v2

    goto :goto_9

    :cond_9
    move/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move v15, v4

    goto :goto_a

    :cond_a
    move/from16 v15, p13

    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move/from16 v16, v2

    goto :goto_b

    :cond_b
    move/from16 v16, p14

    :goto_b
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 4
    invoke-direct/range {v2 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    return-void
.end method


# virtual methods
.method public final c()Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    return-object v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    const-class v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    return v1

    .line 43
    .line 44
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 45
    .line 46
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    return v1

    .line 54
    .line 55
    :cond_3
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 56
    .line 57
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 58
    .line 59
    cmpg-float v2, v2, v3

    .line 60
    .line 61
    if-nez v2, :cond_9

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 64
    .line 65
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_4

    .line 72
    return v1

    .line 73
    .line 74
    :cond_4
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 75
    .line 76
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 77
    .line 78
    cmpg-float v2, v2, v3

    .line 79
    .line 80
    if-nez v2, :cond_9

    .line 81
    .line 82
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 83
    .line 84
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 85
    .line 86
    cmpg-float v2, v2, v3

    .line 87
    .line 88
    if-nez v2, :cond_9

    .line 89
    .line 90
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 91
    .line 92
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeCap;->g(II)Z

    .line 96
    move-result v2

    .line 97
    .line 98
    if-nez v2, :cond_5

    .line 99
    return v1

    .line 100
    .line 101
    :cond_5
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 102
    .line 103
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeJoin;->g(II)Z

    .line 107
    move-result v2

    .line 108
    .line 109
    if-nez v2, :cond_6

    .line 110
    return v1

    .line 111
    .line 112
    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 113
    .line 114
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 115
    .line 116
    cmpg-float v2, v2, v3

    .line 117
    .line 118
    if-nez v2, :cond_9

    .line 119
    .line 120
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 121
    .line 122
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 123
    .line 124
    cmpg-float v2, v2, v3

    .line 125
    .line 126
    if-nez v2, :cond_9

    .line 127
    .line 128
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 129
    .line 130
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 131
    .line 132
    cmpg-float v2, v2, v3

    .line 133
    .line 134
    if-nez v2, :cond_9

    .line 135
    .line 136
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 137
    .line 138
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 139
    .line 140
    cmpg-float v2, v2, v3

    .line 141
    .line 142
    if-nez v2, :cond_9

    .line 143
    .line 144
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 145
    .line 146
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/PathFillType;->f(II)Z

    .line 150
    move-result v2

    .line 151
    .line 152
    if-nez v2, :cond_7

    .line 153
    return v1

    .line 154
    .line 155
    :cond_7
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 156
    .line 157
    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 158
    .line 159
    .line 160
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result p1

    .line 162
    .line 163
    if-nez p1, :cond_8

    .line 164
    return v1

    .line 165
    :cond_8
    return v0

    .line 166
    :cond_9
    :goto_0
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    move-result v2

    .line 49
    :cond_1
    add-int/2addr v0, v2

    .line 50
    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 57
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeCap;->h(I)I

    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeJoin;->h(I)I

    .line 84
    move-result v1

    .line 85
    add-int/2addr v0, v1

    .line 86
    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 93
    move-result v1

    .line 94
    add-int/2addr v0, v1

    .line 95
    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 111
    move-result v1

    .line 112
    add-int/2addr v0, v1

    .line 113
    .line 114
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    .line 116
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 120
    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 122
    .line 123
    mul-int/lit8 v0, v0, 0x1f

    .line 124
    .line 125
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 126
    .line 127
    .line 128
    invoke-static {v1}, Landroidx/compose/ui/graphics/PathFillType;->g(I)I

    .line 129
    move-result v1

    .line 130
    add-int/2addr v0, v1

    .line 131
    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    return v0
.end method

.method public final m()Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    return-object v0
.end method

.method public final p()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    return v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    return v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    return v0
.end method

.method public final s()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    return v0
.end method

.method public final t()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    return v0
.end method

.method public final u()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    return v0
.end method

.method public final v()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    return v0
.end method

.method public final w()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    return v0
.end method
