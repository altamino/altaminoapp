.class public final Lcom/narvii/video/widget/ViceTimeLineCutterView;
.super Landroid/view/View;
.source "ViceTimeLineCutterView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViceTimeLineCutterView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViceTimeLineCutterView.kt\ncom/narvii/video/widget/ViceTimeLineCutterView\n*L\n1#1,213:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private active:Z

.field private baseColor:I

.field private final baseRect:Landroid/graphics/RectF;

.field private bitmapArrowLeft:Landroid/graphics/Bitmap;

.field private bitmapArrowRight:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final boxColor:I

.field private final boxPaint:Landroid/graphics/Paint;

.field private callback:Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;

.field private final cornerRadius:F

.field private fillColor:I

.field private final fillPaint:Landroid/graphics/Paint;

.field private final handlerIndicatorRect:Landroid/graphics/RectF;

.field private final handlerIndicatorSize:I

.field private handlerWidth:I

.field private final innerPath:Landroid/graphics/Path;

.field private final innerRect:Landroid/graphics/RectF;

.field private isLeftHandlerActive:Z

.field private isRightHandlerActive:Z

.field private mainTimeLineEndEdge:F

.field private mainTimeLineStartEdge:F

.field private maxCutterWidth:F

.field private minCutterWidth:F

.field private final outerRect:Landroid/graphics/RectF;

.field private final rtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 24
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxColor:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 50
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 58
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "(resources.getDrawable(R\u2026as BitmapDrawable).bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_right:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 24
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxColor:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 50
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 58
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "(resources.getDrawable(R\u2026as BitmapDrawable).bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_right:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isTouchInSlideHandler(F)V
    .locals 13

    float-to-double v0, p1

    .line 147
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, p1

    iget v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-double v5, v4

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpl-double v11, v0, v2

    if-ltz v11, :cond_0

    float-to-double v2, p1

    int-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v11

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    .line 148
    iput-boolean v6, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 149
    iput-boolean v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, p1

    iget v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v11

    cmpl-double v9, v0, v2

    if-ltz v9, :cond_1

    float-to-double v2, p1

    int-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    .line 151
    iput-boolean v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 152
    iput-boolean v6, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final onSlideHandlerMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 157
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->updateControllerMove(Z)V

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 196
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 197
    iput-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 198
    iput-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    .line 200
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    .line 164
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    if-eqz v0, :cond_8

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 166
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 167
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineEndEdge:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    sub-float/2addr v1, v3

    iget-object v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 168
    :goto_1
    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_6

    goto :goto_2

    .line 170
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    move v0, v1

    goto :goto_2

    .line 171
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 168
    :goto_2
    iput v0, v3, Landroid/graphics/RectF;->left:F

    goto :goto_6

    .line 173
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    if-eqz v0, :cond_d

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineEndEdge:F

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    add-float/2addr v0, v1

    .line 176
    :goto_3
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    add-float/2addr v1, v3

    .line 177
    :goto_4
    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_b

    goto :goto_5

    .line 179
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    move v0, v1

    goto :goto_5

    .line 180
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 177
    :goto_5
    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 190
    :cond_d
    :goto_6
    invoke-direct {p0, v2}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->updateControllerMove(Z)V

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_7
    return-void
.end method

.method private final updateControllerMove(Z)V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 207
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    :goto_0
    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    if-nez p1, :cond_1

    .line 209
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testtest onControllerMoved left = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->callback:Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1, v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;->onCutterMoved(FFZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCurrentTimelineRect()Landroid/graphics/RectF;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final layoutRect(FFFFFFFF)V
    .locals 0

    .line 68
    iput p5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    .line 69
    iput p6, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    .line 70
    iput p7, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    .line 71
    iput p8, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineEndEdge:F

    .line 72
    iget-object p5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p6

    int-to-float p6, p6

    const/4 p7, 0x0

    invoke-virtual {p5, p7, p2, p6, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    iget-object p5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    const/4 p6, 0x4

    int-to-float p6, p6

    add-float/2addr p2, p6

    sub-float/2addr p4, p6

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onActionUpInterceptedForFling(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->active:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-float v4, v3

    sub-float/2addr v2, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x4

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    add-float/2addr v6, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v5

    invoke-virtual {v0, v2, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 88
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 91
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 92
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 97
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    int-to-float v5, v3

    const/high16 v6, 0x3fc00000    # 1.5f

    div-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 98
    iget-object v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v8, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    add-float/2addr v7, v8

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v7, v3

    .line 99
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 96
    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    .line 102
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    int-to-float v7, v5

    div-float/2addr v7, v6

    sub-float/2addr v1, v7

    .line 103
    iget-object v7, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v4

    sub-float/2addr v8, v9

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v8, v5

    .line 104
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 101
    invoke-virtual {v0, v2, v1, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->active:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isTouchInSlideHandler(F)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 118
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setControllerCallback(Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->callback:Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;

    return-void
.end method

.method public final setFillColor(II)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillColor:I

    .line 127
    iput p2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseColor:I

    return-void
.end method

.method public final toggle(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->active:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
