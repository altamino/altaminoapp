.class public Lcom/narvii/widget/ShinyTitle;
.super Landroid/widget/LinearLayout;
.source "ShinyTitle.java"


# instance fields
.field cache:Landroid/graphics/Bitmap;

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    .line 27
    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v3, v3, v7

    float-to-int v3, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x898

    rem-long/2addr v5, v8

    long-to-float v5, v5

    const v6, 0x3fe66666    # 1.8f

    mul-float v5, v5, v6

    const v6, 0x45098000    # 2200.0f

    div-float/2addr v5, v6

    .line 53
    iget-object v6, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v4, v4

    mul-float v5, v5, v4

    float-to-int v4, v5

    .line 57
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v6, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 59
    invoke-super {v0, v5}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 60
    new-instance v6, Landroid/graphics/RadialGradient;

    int-to-float v10, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    int-to-float v12, v3

    const v13, 0x60ffffff

    const/4 v14, -0x1

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 62
    iget-object v2, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    iget-object v2, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v4, 0x0

    const/4 v2, 0x0

    int-to-float v6, v1

    .line 64
    iget-object v8, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    move-object v3, v5

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v1, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    iget-object v1, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    iget-object v1, v0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/narvii/widget/ShinyTitle;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v4, p1

    .line 54
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 70
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 34
    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, p5, :cond_2

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;

    .line 40
    :cond_1
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ShinyTitle;->cache:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
