.class public Lcom/narvii/chat/video/ChatTipBroadcastBackground;
.super Landroid/graphics/drawable/Drawable;
.source "ChatTipBroadcastBackground.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private color:I

.field paint:Landroid/graphics/Paint;

.field shaderPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    iput p1, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->color:I

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 24
    iget-object v0, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v0, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    .line 28
    iget-object p1, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->bounds:Landroid/graphics/Rect;

    .line 34
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 35
    iget-object v2, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v8, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v8, v2

    .line 37
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v1

    div-float v18, v6, v2

    iget v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->color:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v15

    iget v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->color:I

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v10, v3

    move/from16 v13, v18

    move/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 38
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 39
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 40
    iget-object v10, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v18

    move v5, v8

    move v11, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v11, v9

    .line 41
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v9, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    iget-object v6, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move v11, v6

    const/4 v3, 0x0

    .line 44
    iget-object v6, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v4, v11

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v9, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    iget-object v6, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
