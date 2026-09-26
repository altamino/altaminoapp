.class public Lcom/narvii/widget/ShinyTitle;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field cache:Landroid/graphics/Bitmap;

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/high16 p2, -0x1000000

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v2

    .line 11
    int-to-float v7, v2

    .line 12
    .line 13
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 14
    mul-float/2addr v3, v7

    .line 15
    float-to-int v3, v3

    .line 16
    .line 17
    mul-int/lit8 v4, v3, 0x2

    .line 18
    add-int/2addr v4, v1

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    move-result-wide v5

    .line 23
    .line 24
    const-wide/16 v8, 0x898

    .line 25
    rem-long/2addr v5, v8

    .line 26
    long-to-float v5, v5

    .line 27
    .line 28
    .line 29
    const v6, 0x3fe66666    # 1.8f

    .line 30
    mul-float/2addr v5, v6

    .line 31
    .line 32
    .line 33
    const v6, 0x45098000    # 2200.0f

    .line 34
    div-float/2addr v5, v6

    .line 35
    .line 36
    iget-object v6, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const/high16 v6, 0x3f800000    # 1.0f

    .line 41
    .line 42
    cmpl-float v6, v5, v6

    .line 43
    .line 44
    if-ltz v6, :cond_1

    .line 45
    .line 46
    :cond_0
    move-object/from16 v4, p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    int-to-float v4, v4

    .line 49
    mul-float/2addr v5, v4

    .line 50
    float-to-int v4, v5

    .line 51
    .line 52
    new-instance v5, Landroid/graphics/Canvas;

    .line 53
    .line 54
    iget-object v6, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    .line 59
    iget-object v6, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 60
    const/4 v8, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-super {v0, v5}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    new-instance v6, Landroid/graphics/RadialGradient;

    .line 69
    int-to-float v10, v4

    .line 70
    .line 71
    div-int/lit8 v2, v2, 0x2

    .line 72
    int-to-float v11, v2

    .line 73
    int-to-float v12, v3

    .line 74
    .line 75
    .line 76
    const v13, 0x60ffffff

    .line 77
    const/4 v14, -0x1

    .line 78
    .line 79
    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 80
    move-object v9, v6

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 84
    .line 85
    iget-object v2, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    .line 90
    iget-object v2, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 91
    .line 92
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 93
    .line 94
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    int-to-float v6, v1

    .line 104
    .line 105
    iget-object v8, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 106
    move-object v3, v5

    .line 107
    move v5, v2

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    .line 112
    iget-object v1, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 113
    const/4 v2, 0x0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    .line 118
    iget-object v1, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 122
    .line 123
    iget-object v1, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 124
    .line 125
    iget-object v2, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 126
    const/4 v3, 0x0

    .line 127
    .line 128
    move-object/from16 v4, p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    goto :goto_1

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    sub-int/2addr p4, p2

    .line 5
    sub-int/2addr p5, p3

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    move-result p1

    .line 14
    .line 15
    if-ne p1, p4, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eq p1, p5, :cond_2

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    const/4 p1, 0x0

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    :cond_1
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 36
    .line 37
    .line 38
    invoke-static {p4, p5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method
