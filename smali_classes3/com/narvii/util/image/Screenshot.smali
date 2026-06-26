.class public Lcom/narvii/util/image/Screenshot;
.super Ljava/lang/Object;
.source "Screenshot.java"


# static fields
.field private static takingScreenshot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewScreenshotFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "jpg"

    .line 107
    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12

    .line 114
    invoke-static {p0}, Lcom/narvii/util/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 115
    new-instance v0, Ljava/io/File;

    const-string v1, "screenshot"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-static {}, Lcom/narvii/util/StringUtils;->todayString()Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    const-string v5, "-"

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x64

    if-ge v2, v6, :cond_4

    .line 120
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    move-object v8, v4

    goto :goto_3

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    move-object v1, v6

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    return-object v1
.end method

.method public static takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    invoke-static {p0, v1, v0, v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static takeScreenshot(Landroid/app/Activity;F)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0, v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;
    .locals 9

    .line 49
    sget-boolean v0, Lcom/narvii/util/image/Screenshot;->takingScreenshot:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 50
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p0

    .line 54
    :cond_0
    sput-boolean v2, Lcom/narvii/util/image/Screenshot;->takingScreenshot:Z

    const v0, 0x1020002

    .line 56
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 59
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 60
    aget v5, v4, v2

    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 62
    aget v4, v4, v2

    sub-int/2addr v5, v4

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v4, :cond_7

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v6

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    if-lez p2, :cond_3

    int-to-float p2, p2

    mul-float p2, p2, v7

    .line 73
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr p2, v8

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_3
    if-lez p3, :cond_4

    int-to-float p2, p3

    mul-float p2, p2, v7

    .line 77
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_4
    int-to-float p2, v4

    mul-float p2, p2, p1

    float-to-int p2, p2

    int-to-float p3, v0

    mul-float p3, p3, p1

    float-to-int p3, p3

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    goto :goto_1

    .line 86
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    new-array p3, v2, [I

    const v0, 0x1010031

    aput v0, p3, v1

    invoke-virtual {p0, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p3, -0x1

    .line 90
    invoke-virtual {p0, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 91
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 93
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int p1, v5

    int-to-float p1, p1

    .line 95
    invoke-virtual {p0, v6, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    invoke-virtual {v3, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sput-boolean v1, Lcom/narvii/util/image/Screenshot;->takingScreenshot:Z

    return-object p2

    .line 83
    :cond_6
    :goto_1
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    sput-boolean v1, Lcom/narvii/util/image/Screenshot;->takingScreenshot:Z

    return-object p0

    .line 66
    :cond_7
    :goto_2
    :try_start_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    sput-boolean v1, Lcom/narvii/util/image/Screenshot;->takingScreenshot:Z

    return-object p0

    :catchall_0
    move-exception p0

    sput-boolean v1, Lcom/narvii/util/image/Screenshot;->takingScreenshot:Z

    .line 100
    throw p0
.end method

.method public static takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 35
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
