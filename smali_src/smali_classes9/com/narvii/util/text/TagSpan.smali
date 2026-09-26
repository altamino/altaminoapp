.class public Lcom/narvii/util/text/TagSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field final p:Landroid/graphics/Paint;

.field final rectf:Landroid/graphics/RectF;

.field final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/Paint;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v7, p9

    .line 8
    int-to-float v3, v2

    .line 9
    .line 10
    sub-int v2, p8, v2

    .line 11
    int-to-float v2, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    .line 15
    move-result v4

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    .line 19
    move-result v5

    .line 20
    sub-float/2addr v4, v5

    .line 21
    sub-float/2addr v2, v4

    .line 22
    .line 23
    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    div-float/2addr v2, v4

    .line 25
    add-float/2addr v3, v2

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    .line 29
    move-result v2

    .line 30
    sub-float/2addr v3, v2

    .line 31
    float-to-int v2, v3

    .line 32
    .line 33
    iget-object v3, v0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    const/4 v5, 0x0

    .line 37
    .line 38
    .line 39
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 40
    move-result v6

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v3, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 44
    move-result v3

    .line 45
    move v5, p3

    .line 46
    move v6, p4

    .line 47
    move v8, v3

    .line 48
    move-object v3, p2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v3, p2

    .line 51
    move v5, p3

    .line 52
    move v6, p4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 56
    move-result v8

    .line 57
    .line 58
    .line 59
    :goto_0
    const-string/jumbo v9, "x"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 63
    move-result v9

    .line 64
    .line 65
    const/high16 v10, 0x3f000000    # 0.5f

    .line 66
    mul-float/2addr v9, v10

    .line 67
    .line 68
    iget-object v10, v0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    .line 69
    .line 70
    iput v1, v10, Landroid/graphics/RectF;->left:F

    .line 71
    add-float/2addr v8, v1

    .line 72
    mul-float/2addr v4, v9

    .line 73
    add-float/2addr v8, v4

    .line 74
    .line 75
    iput v8, v10, Landroid/graphics/RectF;->right:F

    .line 76
    int-to-float v8, v2

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    .line 80
    move-result v2

    .line 81
    add-float/2addr v2, v8

    .line 82
    .line 83
    iput v2, v10, Landroid/graphics/RectF;->top:F

    .line 84
    .line 85
    iget-object v2, v0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    .line 89
    move-result v4

    .line 90
    add-float/2addr v4, v8

    .line 91
    .line 92
    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 93
    .line 94
    iget-object v2, v0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget-object v4, v0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    .line 97
    move-object v10, p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v2, v9, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 101
    const/4 v2, -0x1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    iget-object v2, v0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    const/4 v3, 0x0

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 113
    move-result v4

    .line 114
    add-float/2addr v1, v9

    .line 115
    move-object p2, v2

    .line 116
    move p3, v3

    .line 117
    move p4, v4

    .line 118
    .line 119
    move/from16 p5, v1

    .line 120
    .line 121
    move/from16 p6, v8

    .line 122
    .line 123
    move-object/from16 p7, p9

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    add-float/2addr v9, v1

    .line 129
    move-object v1, p1

    .line 130
    move-object v2, p2

    .line 131
    move v3, p3

    .line 132
    move v4, p4

    .line 133
    move v5, v9

    .line 134
    move v6, v8

    .line 135
    .line 136
    move-object/from16 v7, p9

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 140
    :goto_1
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    .line 2
    iget-object p5, p0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result p3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p5, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 13
    move-result p2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    :goto_0
    const-string/jumbo p3, "x"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 25
    move-result p1

    .line 26
    .line 27
    const/high16 p3, 0x3f000000    # 0.5f

    .line 28
    mul-float/2addr p1, p3

    .line 29
    .line 30
    const/high16 p3, 0x40000000    # 2.0f

    .line 31
    mul-float/2addr p1, p3

    .line 32
    add-float/2addr p2, p1

    .line 33
    float-to-int p1, p2

    .line 34
    return p1
.end method
