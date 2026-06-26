.class public Lcom/narvii/util/image/NVDebugImageDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "NVDebugImageDrawable.java"


# static fields
.field private static final DEBUG_PAINT:Landroid/graphics/Paint;

.field public static final TYPE_DISK:I = 0x2

.field public static final TYPE_MEMORY:I = 0x1

.field public static final TYPE_NET:I


# instance fields
.field private debugColor:I

.field private debugging:Z

.field private density:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugging:Z

    .line 27
    iput-boolean p4, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugging:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->density:F

    if-eqz p3, :cond_2

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x10000

    .line 37
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    goto :goto_0

    :cond_1
    const p1, -0xffff01

    .line 34
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    :goto_0
    return-void
.end method

.method private drawDebugIndicator(Landroid/graphics/Canvas;)V
    .locals 3

    .line 50
    sget-object v0, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget v0, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/narvii/util/image/NVDebugImageDrawable;->getTrianglePath(III)Landroid/graphics/Path;

    move-result-object v0

    .line 52
    sget-object v2, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    sget-object v0, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget v0, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v1, v0}, Lcom/narvii/util/image/NVDebugImageDrawable;->getTrianglePath(III)Landroid/graphics/Path;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static getTrianglePath(III)Landroid/graphics/Path;
    .locals 3

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float v1, p0

    int-to-float v2, p1

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/2addr p0, p2

    int-to-float p0, p0

    .line 62
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/2addr p1, p2

    int-to-float p0, p1

    .line 63
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/util/image/NVDebugImageDrawable;->drawDebugIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method
