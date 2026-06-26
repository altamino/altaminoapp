.class public Lcom/narvii/widget/shadow/ShadowHelper;
.super Ljava/lang/Object;
.source "ShadowHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawShadow(Landroid/graphics/Canvas;Lcom/narvii/widget/shadow/ShadowConfig;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    return-void

    .line 15
    :cond_0
    iget v8, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v0, v8

    iget v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    int-to-float v1, v1

    sub-float v9, v0, v1

    .line 17
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v10, v8, v1

    sub-float/2addr v0, v10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 18
    :goto_0
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v0, v10

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-nez v11, :cond_3

    if-nez v12, :cond_3

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 21
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    int-to-float v0, v0

    iget v2, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    int-to-float v2, v2

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v7, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, v7, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->circleShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 26
    :cond_3
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    const/high16 v1, 0x3e800000    # 0.25f

    if-nez v0, :cond_4

    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-nez v0, :cond_4

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 27
    :goto_2
    iget v2, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    int-to-float v3, v2

    mul-float v3, v3, v0

    int-to-float v4, v2

    mul-float v4, v4, v0

    int-to-float v0, v2

    mul-float v0, v0, v1

    add-float/2addr v4, v8

    div-float v13, v8, v4

    add-float/2addr v3, v8

    div-float v14, v8, v3

    add-float/2addr v0, v8

    div-float v15, v8, v0

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 35
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v8

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v8

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 37
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v11, :cond_6

    div-float v0, v4, v13

    .line 39
    invoke-virtual {v6, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v1, 0x0

    .line 40
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-ltz v0, :cond_5

    move v2, v9

    goto :goto_3

    :cond_5
    int-to-float v0, v0

    add-float/2addr v0, v9

    move v2, v0

    :goto_3
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v3, v0, v10

    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v0, v0

    move/from16 v16, v5

    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v4, v17

    move/from16 v17, v14

    move/from16 v14, v16

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    move/from16 v17, v14

    move v14, v5

    .line 42
    :goto_4
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 45
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v8

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    .line 47
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 48
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRB:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_8

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v4, v11, v13

    .line 50
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v1, 0x0

    .line 51
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    if-ltz v0, :cond_7

    int-to-float v0, v0

    sub-float v0, v9, v0

    move v2, v0

    goto :goto_5

    :cond_7
    move v2, v9

    :goto_5
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v3, v0, v10

    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v4, v0

    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRB:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .line 53
    :goto_6
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 56
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v8

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v0, 0x43870000    # 270.0f

    .line 58
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 59
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLB:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_a

    div-float v4, v11, v15

    .line 61
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v1, 0x0

    .line 62
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    if-ltz v0, :cond_9

    move v2, v9

    goto :goto_7

    :cond_9
    int-to-float v0, v0

    add-float/2addr v0, v9

    move v2, v0

    :goto_7
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v3, v0, v10

    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v4, v0

    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLB:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    :cond_a
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 67
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v8

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v8

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v8, v17

    .line 68
    invoke-virtual {v6, v13, v8}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 69
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRT:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_c

    div-float v4, v11, v8

    .line 72
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v1, 0x0

    .line 73
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    if-ltz v0, :cond_b

    int-to-float v0, v0

    sub-float/2addr v9, v0

    :cond_b
    move v2, v9

    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v3, v0, v10

    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    neg-float v4, v0

    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRT:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    :cond_c
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
