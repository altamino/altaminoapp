.class public final Lcom/narvii/video/widget/FrameItemMaskView;
.super Landroid/widget/FrameLayout;
.source "FrameItemMaskView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private clipRadius:F

.field private clipRightEnd:F

.field private isLeftEdge:Z

.field private isRightEdge:Z

.field private isShowBorder:Z

.field private isShowRound:Z

.field private final path:Landroid/graphics/Path;

.field private final pathPaint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p1}, Lkotlin/jvm/internal/FloatCompanionObject;->getMIN_VALUE()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    .line 30
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p1}, Lkotlin/jvm/internal/FloatCompanionObject;->getMIN_VALUE()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    .line 30
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p1}, Lkotlin/jvm/internal/FloatCompanionObject;->getMIN_VALUE()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    .line 30
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final drawBorderPath(Landroid/graphics/Canvas;)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowBorder:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static synthetic updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/high16 p5, -0x3b860000    # -1000.0f

    const/high16 v6, -0x3b860000    # -1000.0f

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder(ZZZZF)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    .line 58
    iget v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    neg-float v3, v1

    add-float/2addr v1, v0

    .line 61
    iget-boolean v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isLeftEdge:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 64
    :cond_0
    iget-boolean v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isRightEdge:Z

    if-eqz v4, :cond_1

    move v1, v0

    .line 68
    :cond_1
    iget-boolean v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowRound:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    iget v5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    const/4 v5, 0x0

    int-to-float v5, v5

    cmpl-float v6, v4, v5

    if-lez v6, :cond_3

    .line 69
    iget v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    sub-float v6, v4, v1

    cmpg-float v5, v6, v5

    if-gez v5, :cond_2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    move v3, v4

    .line 72
    :cond_2
    iget v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 75
    :cond_3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_4

    .line 76
    iget-object v4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    sub-float v3, v0, v3

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sub-float/2addr v0, v1

    add-float/2addr v0, v5

    sub-float/2addr v2, v6

    invoke-virtual {v4, v3, v6, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v1, v4

    sub-float/2addr v2, v6

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowRound:Z

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->rect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 87
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/FrameItemMaskView;->drawBorderPath(Landroid/graphics/Canvas;)V

    .line 88
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/FrameItemMaskView;->drawBorderPath(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final setBorderStyle(IF)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemMaskView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iput p2, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRadius:F

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateBorder(ZZZZF)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowRound:Z

    .line 45
    iput-boolean p2, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isShowBorder:Z

    .line 46
    iput-boolean p3, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isLeftEdge:Z

    .line 47
    iput-boolean p4, p0, Lcom/narvii/video/widget/FrameItemMaskView;->isRightEdge:Z

    .line 48
    iput p5, p0, Lcom/narvii/video/widget/FrameItemMaskView;->clipRightEnd:F

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
