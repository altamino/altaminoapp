.class public final Lcom/narvii/video/widget/MediaRetrieveController;
.super Landroid/view/View;
.source "MediaRetrieveController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaRetrieveController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaRetrieveController.kt\ncom/narvii/video/widget/MediaRetrieveController\n*L\n1#1,268:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final baseRect:Landroid/graphics/Rect;

.field private bitmapArrowLeft:Landroid/graphics/Bitmap;

.field private bitmapArrowRight:Landroid/graphics/Bitmap;

.field private bitmapDot:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final controllerColor:I

.field private final controllerIndicatorSize:I

.field private controllerMovedCallback:Lcom/narvii/video/interfaces/ITimeLineControllerCallback;

.field private cornerRadius:F

.field private final cornerRadiusArray:[F

.field private curMediaSectionStartTimeMs:I

.field private final cutRect:Landroid/graphics/Rect;

.field private cutterEndTimeText:Ljava/lang/String;

.field private cutterInitWidth:I

.field private cutterStartTimeText:Ljava/lang/String;

.field private final cutterTimeRect:Landroid/graphics/Rect;

.field private endOffsetInMs:I

.field private frameCellWidth:I

.field private final handlerIndicatorRect:Landroid/graphics/Rect;

.field private final handlerPaint:Landroid/graphics/Paint;

.field private final handlerPath:Landroid/graphics/Path;

.field private final handlerRect:Landroid/graphics/RectF;

.field private handlerWidth:I

.field private isLeftHandlerActive:Z

.field private isRightHandlerActive:Z

.field private final linePaint:Landroid/graphics/Paint;

.field private maxCutRectRight:I

.field private maxVideoLengthPresentedByController:I

.field private minControllerWidth:F

.field private minCutRectLeft:I

.field private minVideoLengthPresentedByController:I

.field private pointerOffset:F

.field private startOffsetInMs:I

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 33
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 71
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_dot:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    if-eqz p1, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "(resources.getDrawable(R\u2026as BitmapDrawable).bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapDot:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 78
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

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2
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

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 33
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    const-string p2, ""

    .line 49
    iput-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 58
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 71
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_dot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    if-eqz p1, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "(resources.getDrawable(R\u2026as BitmapDrawable).bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapDot:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 78
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

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic initComponent$default(Lcom/narvii/video/widget/MediaRetrieveController;IILcom/narvii/video/interfaces/ITimeLineControllerCallback;IIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 157
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/MediaRetrieveController;->initComponent(IILcom/narvii/video/interfaces/ITimeLineControllerCallback;II)V

    return-void
.end method

.method private final updateControllerMove(Z)V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerMovedCallback:Lcom/narvii/video/interfaces/ITimeLineControllerCallback;

    if-eqz v0, :cond_2

    .line 252
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 252
    :goto_0
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    .line 257
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    goto :goto_1

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 257
    :goto_1
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    .line 263
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    iget-boolean v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/narvii/video/interfaces/ITimeLineControllerCallback;->onControllerMoved(IIZZ)V

    .line 265
    :cond_2
    iget p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->curMediaSectionStartTimeMs:I

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 266
    iget p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->curMediaSectionStartTimeMs:I

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    return-void
.end method

.method private final updateCornerRadiusArray(Z)V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    aput v2, v0, v3

    .line 241
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput v3, v0, v2

    .line 242
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    :goto_2
    aput v3, v0, v2

    .line 243
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x3

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    :goto_3
    aput v3, v0, v2

    .line 244
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x4

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    :goto_4
    aput v3, v0, v2

    .line 245
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x5

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    :goto_5
    aput v3, v0, v2

    .line 246
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x6

    if-eqz p1, :cond_6

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    aput v3, v0, v2

    .line 247
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    const/4 v2, 0x7

    if-eqz p1, :cond_7

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    :cond_7
    aput v1, v0, v2

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getFrameCellWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->frameCellWidth:I

    return v0
.end method

.method public final initComponent(IILcom/narvii/video/interfaces/ITimeLineControllerCallback;II)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 159
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p2

    .line 160
    :goto_0
    iput p5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    .line 161
    iput-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerMovedCallback:Lcom/narvii/video/interfaces/ITimeLineControllerCallback;

    .line 162
    iput p4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    .line 164
    iget-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    iget-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-lt p1, p2, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final isTouchInSlideHandler(F)Z
    .locals 13

    .line 190
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    float-to-double v0, p1

    .line 193
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-double v3, p1

    iget v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v10, 0x1

    cmpl-double v11, v0, v3

    if-ltz v11, :cond_1

    int-to-double v3, p1

    int-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v11

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_1

    .line 194
    iput-boolean v10, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 195
    iput-boolean v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-double v3, p1

    iget v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    int-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v11

    cmpl-double v6, v0, v3

    if-ltz v6, :cond_2

    int-to-double v3, p1

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_2

    .line 197
    iput-boolean v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 198
    iput-boolean v10, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 200
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final layoutRect(IIIII)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iput p5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 136
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    if-lez v1, :cond_0

    sub-int v2, p3, p5

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int v2, p1, p5

    :goto_0
    sub-int v1, p3, p5

    invoke-virtual {v0, v2, p2, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    add-int v1, p1, p5

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    if-lez v2, :cond_2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    sub-int v2, p3, p5

    :goto_1
    invoke-virtual {v0, v1, p2, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    add-int p2, p1, p5

    .line 150
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minCutRectLeft:I

    sub-int p2, p3, p5

    .line 151
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxCutRectRight:I

    .line 152
    iget p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    int-to-float p2, p2

    iget p4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    sub-int/2addr p3, p1

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    int-to-float p1, p3

    mul-float p2, p2, p1

    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minControllerWidth:F

    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 85
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_cover_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    const/high16 v8, 0x40800000    # 4.0f

    add-float v4, v2, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    int-to-float v0, v1

    add-float v6, v0, v8

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    sub-float v4, v2, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    int-to-float v0, v1

    sub-float v6, v0, v8

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 95
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 99
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/MediaRetrieveController;->updateCornerRadiusArray(Z)V

    .line 107
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 108
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 110
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    if-ge v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    iget v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    float-to-double v5, v5

    iget v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-int v5, v5

    .line 113
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    float-to-double v7, v7

    iget v9, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-int v7, v7

    .line 112
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v7, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/MediaRetrieveController;->updateCornerRadiusArray(Z)V

    .line 118
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 119
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 121
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    if-ge v0, v1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    iget v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    float-to-double v5, v5

    iget v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-int v5, v5

    .line 124
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    float-to-double v7, v7

    iget v9, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-int v3, v7

    .line 123
    invoke-virtual {v0, v1, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v3, v1

    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    sub-int v4, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v3, v1

    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onSlideHandlerMove(Landroid/view/MotionEvent;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    if-lt v0, v2, :cond_2

    .line 205
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 206
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    return-void

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    .line 229
    invoke-direct {p0, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateControllerMove(Z)V

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 231
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 232
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 234
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 212
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    .line 213
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minCutRectLeft:I

    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_6

    goto :goto_1

    .line 215
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v4

    iget v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minControllerWidth:F

    sub-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_7

    int-to-float p1, v4

    sub-float/2addr p1, v6

    add-float/2addr p1, v1

    goto :goto_0

    .line 216
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    float-to-int v4, p1

    .line 213
    :goto_1
    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 218
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    if-eqz v0, :cond_b

    .line 219
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxCutRectRight:I

    int-to-float v5, v4

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_9

    goto :goto_3

    .line 221
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    iget v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minControllerWidth:F

    add-float/2addr v5, v6

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_a

    int-to-float p1, v4

    add-float/2addr p1, v6

    add-float/2addr p1, v1

    goto :goto_2

    .line 222
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_2
    float-to-int v4, p1

    .line 219
    :goto_3
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 225
    :cond_b
    :goto_4
    invoke-direct {p0, v3}, Lcom/narvii/video/widget/MediaRetrieveController;->updateControllerMove(Z)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_5
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    .line 186
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    return-void
.end method

.method public final setFrameCellWidth(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->frameCellWidth:I

    return-void
.end method

.method public final updateMediaSectionStartTime(I)V
    .locals 1

    .line 178
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->curMediaSectionStartTimeMs:I

    .line 179
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 180
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updatePointerPosition(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->frameCellWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    :goto_0
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
