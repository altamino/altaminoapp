.class public Lcom/narvii/checkin/lottery/LotteryBackgroundView;
.super Landroid/view/View;
.source "LotteryBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;
    }
.end annotation


# static fields
.field public static final CIRCLE_LIVE_TIME:I = 0x2710

.field public static final COLOR_BACKGROUND:I = -0x7aca89

.field public static final MIN_DP:I = 0x19

.field public static final OVERLAY_COLOR:I = 0x32ffaba0


# instance fields
.field angleSpeed:F

.field centerX:I

.field centerY:I

.field circleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;",
            ">;"
        }
    .end annotation
.end field

.field lastDrawTime:J

.field lastOverlayColor:Z

.field maxRadius:F

.field minRadius:F

.field paint:Landroid/graphics/Paint;

.field radiusSpeed:F

.field savedLayerType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    .line 82
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    const v0, 0x32ffaba0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result p1

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->savedLayerType:I

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const p1, 0x3d1374bc    # 0.036f

    .line 90
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->angleSpeed:F

    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, -0x7aca89

    .line 142
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 143
    iget-wide v3, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 147
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 148
    iget v5, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->radiusSpeed:F

    const/high16 v6, 0x41800000    # 16.0f

    mul-float v5, v5, v6

    .line 149
    iget v7, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->angleSpeed:F

    mul-float v7, v7, v6

    .line 150
    iget-object v6, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 151
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 153
    iget-object v9, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    iget-boolean v10, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->overlayColor:Z

    if-eqz v10, :cond_2

    const v10, 0x32ffaba0

    goto :goto_1

    :cond_2
    const v10, -0x7aca89

    :goto_1
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget v9, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    add-float/2addr v9, v5

    iput v9, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 155
    iget v9, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerX:I

    int-to-float v9, v9

    iget v10, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerY:I

    int-to-float v10, v10

    iget v11, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    iget-object v12, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    iget v8, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    iget v9, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    iget v10, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 157
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v2, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 163
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 165
    iget-wide v8, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starId:I

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 168
    iget-wide v9, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v11

    .line 169
    iget v11, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerX:I

    int-to-double v11, v11

    iget v13, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    float-to-double v13, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    double-to-float v11, v11

    .line 170
    iget v12, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerY:I

    int-to-double v12, v12

    iget v5, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    float-to-double v14, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    double-to-float v5, v12

    .line 171
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v11, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float/2addr v5, v9

    invoke-virtual {v1, v8, v11, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    const/high16 v2, 0x5600000

    .line 174
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 176
    iget-object v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 177
    iget-object v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    :cond_5
    if-eqz v6, :cond_6

    .line 179
    iget v1, v6, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    iget v2, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 180
    iget-boolean v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastOverlayColor:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastOverlayColor:Z

    .line 181
    iget-object v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    new-instance v2, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    const/4 v5, 0x0

    iget-boolean v6, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastOverlayColor:Z

    invoke-direct {v2, v5, v6}, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;-><init>(FZ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 183
    :cond_6
    iput-wide v3, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 97
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 99
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v1, v1

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 103
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->drawCircles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 112
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const-wide/16 p1, 0x0

    .line 113
    iput-wide p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerX:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerY:I

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    .line 117
    iget p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->radiusSpeed:F

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 119
    iget p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    const/4 p2, 0x0

    .line 121
    :goto_0
    iget p3, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    cmpg-float p3, p1, p3

    if-gez p3, :cond_0

    .line 122
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    new-instance p4, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    invoke-direct {p4, p1, p2}, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;-><init>(FZ)V

    invoke-virtual {p3, p4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 123
    iget p3, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    add-float/2addr p1, p3

    xor-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public revertLayerType()V
    .locals 2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 130
    iget v0, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->savedLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
