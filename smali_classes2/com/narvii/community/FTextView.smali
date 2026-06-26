.class public Lcom/narvii/community/FTextView;
.super Landroid/widget/TextView;
.source "FTextView.java"


# instance fields
.field hash:I

.field markColor:I

.field final paint:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;

.field final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 28
    iget-object p1, p0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object p1, p0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 46
    iget v1, v0, Lcom/narvii/community/FTextView;->markColor:I

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 48
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/narvii/community/FTextView;->markColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v3, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float v4, v3, v2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v5

    .line 53
    iget-object v5, v0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    iget v6, v0, Lcom/narvii/community/FTextView;->hash:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Random;->setSeed(J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 57
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    sub-float/2addr v9, v4

    .line 58
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v10, v4

    .line 59
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v8

    int-to-float v8, v8

    add-float v11, v8, v2

    add-float/2addr v8, v3

    .line 62
    iget-object v12, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    if-nez v6, :cond_0

    .line 63
    iget-object v7, v0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    move-result v7

    goto :goto_1

    :cond_0
    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v7, :cond_2

    div-float v13, v4, v12

    goto :goto_2

    :cond_2
    neg-float v13, v4

    div-float/2addr v13, v12

    .line 71
    :goto_2
    iget-object v14, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    add-float v15, v9, v13

    invoke-virtual {v14, v15, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    iget-object v14, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    sub-float/2addr v9, v13

    invoke-virtual {v14, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    iget-object v9, v0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextBoolean()Z

    move-result v9

    if-eqz v9, :cond_3

    div-float v9, v4, v12

    goto :goto_3

    :cond_3
    neg-float v9, v4

    div-float/2addr v9, v12

    .line 79
    :goto_3
    iget-object v12, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    add-float v13, v10, v9

    invoke-virtual {v12, v13, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    iget-object v8, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    sub-float/2addr v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    iget-object v8, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 82
    iget-object v8, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v10, p1

    .line 85
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setMarkColor(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/community/FTextView;->markColor:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/narvii/community/FTextView;->hash:I

    return-void
.end method
