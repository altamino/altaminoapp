.class public Lcom/narvii/util/image/NVDebugImageDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    iput-boolean p4, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugging:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->density:F

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    const/4 p1, 0x1

    .line 25
    .line 26
    if-eq p3, p1, :cond_1

    .line 27
    const/4 p1, 0x2

    .line 28
    .line 29
    if-eq p3, p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    const/high16 p1, -0x10000

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    const p1, -0xffff01

    .line 39
    .line 40
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, -0x1

    .line 43
    .line 44
    iput p1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    .line 45
    :goto_0
    return-void
.end method

.method private drawDebugIndicator(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/image/NVDebugImageDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    .line 8
    const/high16 v1, 0x41800000    # 16.0f

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->density:F

    .line 11
    mul-float/2addr v2, v1

    .line 12
    float-to-int v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v2, v1}, Lcom/narvii/util/image/NVDebugImageDrawable;->getTrianglePath(III)Landroid/graphics/Path;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->debugColor:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    const/high16 v1, 0x41700000    # 15.0f

    .line 28
    .line 29
    iget v3, p0, Lcom/narvii/util/image/NVDebugImageDrawable;->density:F

    .line 30
    mul-float/2addr v3, v1

    .line 31
    float-to-int v1, v3

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v2, v1}, Lcom/narvii/util/image/NVDebugImageDrawable;->getTrianglePath(III)Landroid/graphics/Path;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method private static getTrianglePath(III)Landroid/graphics/Path;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    int-to-float v1, p0

    .line 7
    int-to-float v2, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    add-int/2addr p0, p2

    .line 12
    int-to-float p0, p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    add-int/2addr p1, p2

    .line 17
    int-to-float p0, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/util/image/NVDebugImageDrawable;->drawDebugIndicator(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method
