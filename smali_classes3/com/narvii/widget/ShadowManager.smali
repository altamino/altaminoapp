.class public Lcom/narvii/widget/ShadowManager;
.super Ljava/lang/Object;
.source "ShadowManager.java"


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

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/narvii/widget/ShadowManager;->cacheShadow:Landroid/util/SparseArray;

    .line 26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/ShadowManager;->empty:Landroid/graphics/Bitmap;

    .line 27
    sget-object v0, Lcom/narvii/widget/ShadowManager;->empty:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShadow(IIIII)Landroid/graphics/Bitmap;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, p0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 57
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 58
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    mul-int/lit8 v0, p0, 0x2

    add-int v3, p3, v0

    add-int/2addr v0, p4

    .line 60
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 65
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    sget-object v5, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    sget-object v5, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    add-int/2addr p3, p0

    int-to-float p3, p3

    add-int/2addr p4, p0

    int-to-float p0, p4

    invoke-direct {p1, v1, v1, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p0, p2

    sget-object p2, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, p0, p0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 71
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 74
    aget p2, p0, v3

    int-to-float p2, p2

    aget p0, p0, v6

    int-to-float p0, p0

    sget-object p3, Lcom/narvii/widget/ShadowManager;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public static getShadow(IIIII)Landroid/graphics/Bitmap;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 v0, p2, 0x1f

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p4

    xor-int/2addr v0, p1

    .line 40
    sget-object v1, Lcom/narvii/widget/ShadowManager;->cacheShadow:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v1, :cond_1

    .line 44
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/widget/ShadowManager;->createShadow(IIIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45
    sget-object p0, Lcom/narvii/widget/ShadowManager;->cacheShadow:Landroid/util/SparseArray;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 48
    sget-object p0, Lcom/narvii/widget/ShadowManager;->empty:Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    :goto_1
    return-object v1
.end method
