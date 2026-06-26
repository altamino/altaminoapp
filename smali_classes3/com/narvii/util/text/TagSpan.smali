.class public Lcom/narvii/util/text/TagSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TagSpan.java"


# instance fields
.field final p:Landroid/graphics/Paint;

.field final rectf:Landroid/graphics/RectF;

.field final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    .line 18
    iput-object p2, p0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    .line 20
    iget-object p2, p0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object p2, p0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object p2, p0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v7, p9

    int-to-float v3, v2

    sub-int v2, p8, v2

    int-to-float v2, v2

    .line 39
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v3, v2

    float-to-int v2, v3

    .line 41
    iget-object v3, v0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    .line 42
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v7, v3, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    move v5, p3

    move v6, p4

    move v8, v3

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 44
    invoke-virtual {v7, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v8

    :goto_0
    const-string v9, "x"

    .line 46
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    .line 47
    iget-object v10, v0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    iput v1, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v1

    mul-float v4, v4, v9

    add-float/2addr v8, v4

    .line 48
    iput v8, v10, Landroid/graphics/RectF;->right:F

    int-to-float v8, v2

    .line 49
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v2, v8

    iput v2, v10, Landroid/graphics/RectF;->top:F

    .line 50
    iget-object v2, v0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v4, v8

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 51
    iget-object v2, v0, Lcom/narvii/util/text/TagSpan;->rectf:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/narvii/util/text/TagSpan;->p:Landroid/graphics/Paint;

    move-object v10, p1

    invoke-virtual {p1, v2, v9, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v2, -0x1

    .line 52
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v2, v0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 54
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-float/2addr v1, v9

    move-object p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v1

    move/from16 p6, v8

    move-object/from16 p7, p9

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    add-float/2addr v9, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v9

    move v6, v8

    move-object/from16 v7, p9

    .line 56
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 28
    iget-object p5, p0, Lcom/narvii/util/text/TagSpan;->text:Ljava/lang/CharSequence;

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 29
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p1, p5, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    :goto_0
    const-string p3, "x"

    .line 33
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p1, p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method
