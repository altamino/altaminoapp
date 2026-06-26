.class public final Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;
.super Landroid/view/View;
.source "StoryUserViewNotificationBackgroundView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryUserViewNotificationBackgroundView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryUserViewNotificationBackgroundView.kt\ncom/narvii/story/detail/StoryUserViewNotificationBackgroundView\n*L\n1#1,83:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animatorProgress:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private maxRadius:I

.field private final paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAnimatorProgress()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->animatorProgress:F

    return v0
.end method

.method public final getBackgroundDrawable(II)Lcom/narvii/widget/NVGradientDrawable;
    .locals 11

    .line 71
    new-instance v0, Lcom/narvii/widget/NVGradientDrawable;

    invoke-direct {v0, p1, p2}, Lcom/narvii/widget/NVGradientDrawable;-><init>(II)V

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    int-to-float p1, p1

    .line 74
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    new-array v1, v9, [F

    aput v10, v1, v8

    aput v10, v1, v7

    aput p1, v1, p2

    aput p1, v1, v6

    aput p1, v1, v5

    aput p1, v1, v4

    aput v10, v1, v3

    aput v10, v1, v2

    goto :goto_0

    :cond_0
    new-array v1, v9, [F

    aput p1, v1, v8

    aput p1, v1, v7

    aput v10, v1, p2

    aput v10, v1, v6

    aput v10, v1, v5

    aput v10, v1, v4

    aput p1, v1, v3

    aput p1, v1, v2

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVGradientDrawable;->setRadius([F)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->rect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget v3, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->maxRadius:I

    int-to-float v3, v3

    iget v5, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->animatorProgress:F

    mul-float v3, v3, v5

    iget-object v5, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_1
    const-string p1, "canvas bitmap is null in sizeChange"

    .line 66
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const-wide p1, 0xffffa600L

    long-to-int p2, p1

    const-wide p3, 0xffffc700L

    long-to-int p1, p3

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->getBackgroundDrawable(II)Lcom/narvii/widget/NVGradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-wide p1, 0xff7ae038L

    long-to-int p2, p1

    const-wide p3, 0xff5ed13cL

    long-to-int p1, p3

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->getBackgroundDrawable(II)Lcom/narvii/widget/NVGradientDrawable;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    iget-object p2, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 27
    new-instance p3, Landroid/graphics/Canvas;

    if-eqz p2, :cond_0

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    invoke-virtual {p1, p3}, Lcom/narvii/widget/NVGradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const-string p1, "canvas bitmap is null in sizeChange"

    .line 30
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 32
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->rect:Landroid/graphics/Rect;

    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    mul-int p1, p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->maxRadius:I

    return-void
.end method

.method public final setAnimatorProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    :cond_1
    :goto_0
    iput p1, p0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->animatorProgress:F

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
