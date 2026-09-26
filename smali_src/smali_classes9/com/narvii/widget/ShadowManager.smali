.class public Lcom/narvii/widget/ShadowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final cacheShadow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final empty:Landroid/graphics/Bitmap;

.field private static final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/widget/ShadowManager;->cacheShadow:Landroid/util/SparseArray;

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/widget/ShadowManager;->empty:Landroid/graphics/Bitmap;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static createShadow(IIIII)Landroid/graphics/Bitmap;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    .line 3
    int-to-float v1, p0

    .line 4
    .line 5
    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 9
    .line 10
    new-instance v2, Landroid/graphics/Paint;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 17
    .line 18
    mul-int/lit8 v0, p0, 0x2

    .line 19
    .line 20
    add-int v3, p3, v0

    .line 21
    add-int/2addr v0, p4

    .line 22
    .line 23
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 34
    .line 35
    new-instance v4, Landroid/graphics/Canvas;

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    sget-object v5, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    .line 41
    const/4 v6, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    new-instance p1, Landroid/graphics/RectF;

    .line 50
    add-int/2addr p3, p0

    .line 51
    int-to-float p3, p3

    .line 52
    add-int/2addr p4, p0

    .line 53
    int-to-float p0, p4

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v1, v1, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 57
    int-to-float p0, p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p1, p0, p0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 61
    const/4 p0, 0x2

    .line 62
    .line 63
    new-array p0, p0, [I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 71
    .line 72
    aget p2, p0, v3

    .line 73
    int-to-float p2, p2

    .line 74
    .line 75
    aget p0, p0, v6

    .line 76
    int-to-float p0, p0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p1, p2, p0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    return-object v0

    .line 81
    .line 82
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 86
    throw p0
.end method

.method public static getShadow(IIIII)Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    mul-int/lit8 v0, p2, 0x1f

    .line 3
    add-int/2addr v0, p0

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    add-int/2addr v0, p3

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    add-int/2addr v0, p4

    .line 10
    xor-int/2addr v0, p1

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/widget/ShadowManager;->cacheShadow:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    const/4 v2, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :goto_0
    if-nez v2, :cond_1

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/widget/ShadowManager;->createShadow(IIIII)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    sget-object p0, Lcom/narvii/widget/ShadowManager;->empty:Landroid/graphics/Bitmap;

    .line 50
    return-object p0

    .line 51
    :cond_1
    :goto_1
    return-object v2
.end method
