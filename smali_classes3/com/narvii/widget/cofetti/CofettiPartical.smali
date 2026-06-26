.class public Lcom/narvii/widget/cofetti/CofettiPartical;
.super Ljava/lang/Object;
.source "CofettiPartical.java"


# static fields
.field static final colors:[I

.field static final intep:Landroid/view/animation/DecelerateInterpolator;

.field static final trig:Landroid/graphics/Path;


# instance fields
.field color:I

.field flipoffset:I

.field flipv:F

.field fv:F

.field height:F

.field ptime:J

.field rot0:F

.field rot1:F

.field rotv:F

.field starttime:J

.field type:I

.field v:F

.field v0:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->intep:Landroid/view/animation/DecelerateInterpolator;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->colors:[I

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    .line 46
    sget-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    const/high16 v1, -0x3d600000    # -80.0f

    const/high16 v2, -0x3de00000    # -40.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    sget-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    sget-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    const/high16 v1, -0x3f800000    # -4.0f

    const/high16 v2, 0x42600000    # 56.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    sget-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x84a301
        -0x2d1d9
        -0xb94002
        -0x168530
        -0x13cd8
        -0x2a579
        -0x6ac601
        -0xb48101
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JLandroid/graphics/Paint;I)Z
    .locals 8

    .line 94
    iget-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->ptime:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    sub-long v0, p2, v0

    .line 96
    iget v6, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    long-to-float v0, v0

    mul-float v0, v0, v5

    div-float/2addr v0, v4

    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v:F

    mul-float v0, v0, v1

    add-float/2addr v6, v0

    iput v6, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 98
    :cond_0
    iput-wide p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->ptime:J

    .line 100
    iget-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->starttime:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    sub-long v0, p2, v0

    long-to-float v0, v0

    mul-float v0, v0, v5

    const v1, 0x451c4000    # 2500.0f

    div-float/2addr v0, v1

    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 103
    :cond_1
    sget-object v1, Lcom/narvii/widget/cofetti/CofettiPartical;->intep:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 104
    :goto_0
    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v0:F

    iget v2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->fv:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v:F

    goto :goto_1

    .line 106
    :cond_2
    iput-wide p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->starttime:J

    .line 109
    :goto_1
    iget v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    neg-float v2, v1

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->height:F

    neg-float v3, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_7

    int-to-float p5, p5

    add-float/2addr v1, p5

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_7

    add-float/2addr p5, v2

    cmpl-float p5, v0, p5

    if-lez p5, :cond_3

    goto :goto_3

    .line 113
    :cond_3
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->x:F

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipv:F

    iget v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipoffset:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-float v0, v0

    mul-float p5, p5, v0

    div-float/2addr p5, v4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p5, p5, v0

    float-to-double v1, p5

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p5, v1

    invoke-virtual {p1, v5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 115
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot0:F

    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot1:F

    add-float/2addr p5, v1

    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rotv:F

    long-to-float p2, p2

    mul-float v1, v1, p2

    div-float/2addr v1, v4

    add-float/2addr p5, v1

    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 116
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->color:I

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    const/4 p3, 0x1

    if-nez p2, :cond_4

    .line 118
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p5, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    if-ne p2, p3, :cond_5

    .line 120
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    const/high16 p5, 0x42c80000    # 100.0f

    div-float v0, p2, p5

    div-float/2addr p2, p5

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 121
    sget-object p2, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/4 p5, 0x2

    if-ne p2, p5, :cond_6

    .line 123
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    neg-float p5, p2

    div-float v2, p5, v0

    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->height:F

    neg-float v1, p5

    div-float v3, v1, v0

    div-float v4, p2, v0

    div-float v5, p5, v0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    return p3

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public reset(Ljava/util/Random;FFIIF)V
    .locals 6

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->starttime:J

    .line 55
    iput-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->ptime:J

    int-to-float p4, p4

    .line 56
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float p4, p4, v0

    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->x:F

    .line 57
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p4

    .line 58
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x41666666    # -0.3f

    const v1, 0x3f4ccccd    # 0.8f

    float-to-double v2, p4

    const-wide v4, 0x3ff1eb851eb851ecL    # 1.12

    .line 59
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p4, v2

    mul-float p4, p4, v1

    sub-float/2addr v0, p4

    int-to-float p4, p5

    mul-float v0, v0, p4

    iput v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    goto :goto_0

    :cond_0
    const v0, -0x3ff33333    # -2.2f

    float-to-double v1, p4

    const-wide v3, 0x3ff3851eb851eb85L    # 1.22

    .line 61
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p4, v1

    mul-float p4, p4, v0

    int-to-float p5, p5

    mul-float p4, p4, p5

    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 63
    :goto_0
    iget p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    float-to-double p4, p4

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v2, p6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p4, v0

    double-to-float p4, p4

    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    const/high16 p4, 0x43a00000    # 320.0f

    const/high16 p5, 0x43160000    # 150.0f

    .line 65
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p5

    add-float/2addr v0, p4

    mul-float p6, p6, v0

    iput p6, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->fv:F

    const/4 p4, 0x0

    .line 66
    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v:F

    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v0:F

    .line 68
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p4

    sub-float/2addr p3, p2

    mul-float p4, p4, p3

    add-float/2addr p4, p2

    const/4 p2, 0x5

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 73
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    float-to-double p2, p4

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    const p3, 0x4019999a    # 2.4f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 76
    iput p3, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    float-to-double p2, p4

    .line 77
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    const p3, 0x3fb33333    # 1.4f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    .line 79
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 80
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p3

    const/high16 p5, 0x40400000    # 3.0f

    mul-float p3, p3, p5

    add-float/2addr p3, p2

    div-float/2addr p4, p3

    float-to-double p4, p4

    .line 81
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    double-to-float p2, p4

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 82
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    mul-float p2, p2, p3

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->height:F

    :goto_1
    const/16 p2, 0x258

    .line 85
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipoffset:I

    const p2, 0x3f99999a    # 1.2f

    const p3, 0x3f19999a    # 0.6f

    .line 86
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p4

    mul-float p4, p4, p3

    add-float/2addr p4, p2

    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipv:F

    .line 87
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 p3, 0x43340000    # 180.0f

    mul-float p2, p2, p3

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot0:F

    .line 88
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float p2, p2, p3

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot1:F

    .line 89
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 p3, 0x42f00000    # 120.0f

    mul-float p2, p2, p3

    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rotv:F

    .line 90
    sget-object p2, Lcom/narvii/widget/cofetti/CofettiPartical;->colors:[I

    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    aget p1, p2, p1

    iput p1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->color:I

    return-void
.end method
