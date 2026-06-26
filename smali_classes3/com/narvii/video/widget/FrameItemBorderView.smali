.class public final Lcom/narvii/video/widget/FrameItemBorderView;
.super Landroid/view/View;
.source "FrameItemBorderView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private borderColor:I

.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderRect:Landroid/graphics/RectF;

.field private final frameItemCornerRadius:I

.field private final frameItemOffset:I

.field private hide:Z

.field private final rtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 21
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    .line 30
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 21
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    .line 30
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static final synthetic access$innerUpdateBorderRect(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->innerUpdateBorderRect(ZZZ)V

    return-void
.end method

.method private final innerUpdateBorderRect(ZZZ)V
    .locals 2

    .line 45
    iput-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->hide:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 47
    iget-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    if-eqz p1, :cond_2

    .line 48
    :cond_1
    iget p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    goto :goto_0

    .line 50
    :cond_2
    iget p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    neg-int p1, p1

    :goto_0
    if-eqz p3, :cond_3

    .line 52
    iget-boolean p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    if-eqz p3, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    if-eqz p2, :cond_5

    .line 53
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    sub-int/2addr p2, p3

    goto :goto_1

    .line 55
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    add-int/2addr p2, p3

    .line 57
    :goto_1
    iget-object p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float p2, p2

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    invoke-virtual {p3, p1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 59
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 61
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic innerUpdateBorderRect$default(Lcom/narvii/video/widget/FrameItemBorderView;ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->innerUpdateBorderRect(ZZZ)V

    return-void
.end method

.method public static synthetic updateBorderRect$default(Lcom/narvii/video/widget/FrameItemBorderView;ZZZIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, -0x1

    .line 35
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/FrameItemBorderView;->updateBorderRect(ZZZI)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->hide:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final updateBorderRect(ZZZI)V
    .locals 0

    .line 36
    iput p4, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    if-lez p4, :cond_0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->innerUpdateBorderRect(ZZZ)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p4, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView$updateBorderRect$1;-><init>(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V

    const-wide/16 p1, 0x64

    invoke-static {p4, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
