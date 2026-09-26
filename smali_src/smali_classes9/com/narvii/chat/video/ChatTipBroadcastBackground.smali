.class public Lcom/narvii/chat/video/ChatTipBroadcastBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private color:I

.field paint:Landroid/graphics/Paint;

.field shaderPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->color:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->bounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->bounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result v2

    .line 21
    int-to-float v8, v2

    .line 22
    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float v9, v8, v2

    .line 26
    .line 27
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    int-to-float v6, v1

    .line 31
    .line 32
    div-float v18, v6, v2

    .line 33
    const/4 v14, 0x0

    .line 34
    .line 35
    iget v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->color:I

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 40
    move-result v15

    .line 41
    .line 42
    iget v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->color:I

    .line 43
    .line 44
    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 45
    move-object v10, v3

    .line 46
    .line 47
    move/from16 v13, v18

    .line 48
    .line 49
    move/from16 v16, v1

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 53
    .line 54
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v3, 0x0

    .line 66
    .line 67
    iget-object v10, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    move/from16 v4, v18

    .line 72
    move v5, v8

    .line 73
    move v11, v6

    .line 74
    move-object v6, v10

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    sub-float v4, v11, v9

    .line 80
    .line 81
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v4, v9, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    iget-object v6, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 87
    .line 88
    move-object/from16 v1, p1

    .line 89
    .line 90
    move/from16 v2, v18

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    move v11, v6

    .line 96
    const/4 v3, 0x0

    .line 97
    .line 98
    iget-object v6, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->shaderPaint:Landroid/graphics/Paint;

    .line 99
    .line 100
    move-object/from16 v1, p1

    .line 101
    .line 102
    move/from16 v2, v18

    .line 103
    move v4, v11

    .line 104
    move v5, v8

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    .line 109
    iget-object v1, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v9, v9, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    .line 114
    iget-object v6, v0, Lcom/narvii/chat/video/ChatTipBroadcastBackground;->paint:Landroid/graphics/Paint;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    move v2, v9

    .line 118
    .line 119
    move/from16 v4, v18

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
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
