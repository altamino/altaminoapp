.class public final Lcom/narvii/video/widget/MediaRetrieveController;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final baseRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapArrowLeft:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapArrowRight:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapDot:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controllerColor:I

.field private final controllerIndicatorSize:I

.field private controllerMovedCallback:Lcom/narvii/video/interfaces/ITimeLineControllerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cornerRadius:F

.field private final cornerRadiusArray:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curMediaSectionStartTimeMs:I

.field private final cutRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cutterEndTimeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cutterInitWidth:I

.field private cutterStartTimeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cutterTimeRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private endOffsetInMs:I

.field private frameCellWidth:I

.field private final handlerIndicatorRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private handlerWidth:I

.field private isLeftHandlerActive:Z

.field private isRightHandlerActive:Z

.field private final linePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxCutRectRight:I

.field private maxVideoLengthPresentedByController:I

.field private minControllerWidth:F

.field private minCutRectLeft:I

.field private minVideoLengthPresentedByController:I

.field private pointerOffset:F

.field private startOffsetInMs:I

.field private final textPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 9
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 10
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 11
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    const-string v5, ""

    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    const/4 v5, 0x1

    .line 15
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v6, 0x41000000    # 8.0f

    .line 18
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 25
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_dot:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "getBitmap(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapDot:Landroid/graphics/Bitmap;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_right:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 40
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerColor:I

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    const-string v4, ""

    iput-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    iput-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    const/4 v4, 0x1

    .line 46
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 49
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 56
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_dot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "getBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapDot:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_right:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic initComponent$default(Lcom/narvii/video/widget/MediaRetrieveController;IILcom/narvii/video/interfaces/ITimeLineControllerCallback;IIILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x8

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    move v5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p4

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p4, p6, 0x10

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    move v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v6, p5

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move v2, p1

    .line 18
    move v3, p2

    .line 19
    move-object v4, p3

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/MediaRetrieveController;->initComponent(IILcom/narvii/video/interfaces/ITimeLineControllerCallback;II)V

    .line 23
    return-void
.end method

.method private final updateControllerMove(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerMovedCallback:Lcom/narvii/video/interfaces/ITimeLineControllerCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 21
    add-int/2addr v3, v4

    .line 22
    sub-int/2addr v2, v3

    .line 23
    int-to-float v2, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 30
    .line 31
    mul-int/lit8 v3, v3, 0x2

    .line 32
    sub-int/2addr v1, v3

    .line 33
    int-to-float v1, v1

    .line 34
    div-float/2addr v2, v1

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 37
    int-to-float v1, v1

    .line 38
    mul-float/2addr v2, v1

    .line 39
    float-to-int v1, v2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 51
    add-int/2addr v3, v4

    .line 52
    sub-int/2addr v1, v3

    .line 53
    int-to-float v1, v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 57
    move-result v2

    .line 58
    .line 59
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 60
    .line 61
    mul-int/lit8 v3, v3, 0x2

    .line 62
    sub-int/2addr v2, v3

    .line 63
    int-to-float v2, v2

    .line 64
    div-float/2addr v1, v2

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 67
    int-to-float v2, v2

    .line 68
    mul-float/2addr v1, v2

    .line 69
    float-to-int v1, v1

    .line 70
    .line 71
    :goto_0
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 80
    .line 81
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 84
    .line 85
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 88
    add-int/2addr v3, v4

    .line 89
    sub-int/2addr v2, v3

    .line 90
    int-to-float v2, v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 94
    move-result v1

    .line 95
    .line 96
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 97
    .line 98
    mul-int/lit8 v3, v3, 0x2

    .line 99
    sub-int/2addr v1, v3

    .line 100
    int-to-float v1, v1

    .line 101
    div-float/2addr v2, v1

    .line 102
    .line 103
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 104
    int-to-float v1, v1

    .line 105
    mul-float/2addr v2, v1

    .line 106
    float-to-int v1, v2

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 110
    .line 111
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 112
    .line 113
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 114
    .line 115
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 118
    add-int/2addr v3, v4

    .line 119
    sub-int/2addr v1, v3

    .line 120
    int-to-float v1, v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 124
    move-result v2

    .line 125
    .line 126
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 127
    .line 128
    mul-int/lit8 v3, v3, 0x2

    .line 129
    sub-int/2addr v2, v3

    .line 130
    int-to-float v2, v2

    .line 131
    div-float/2addr v1, v2

    .line 132
    .line 133
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 134
    int-to-float v2, v2

    .line 135
    mul-float/2addr v1, v2

    .line 136
    float-to-int v1, v1

    .line 137
    .line 138
    :goto_1
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    .line 139
    .line 140
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    .line 141
    .line 142
    iget-boolean v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v2, v1, v3, p1}, Lcom/narvii/video/interfaces/ITimeLineControllerCallback;->onControllerMoved(IIZZ)V

    .line 146
    .line 147
    :cond_2
    iget p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->curMediaSectionStartTimeMs:I

    .line 148
    .line 149
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    .line 150
    add-int/2addr p1, v0

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 157
    .line 158
    iget p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->curMediaSectionStartTimeMs:I

    .line 159
    .line 160
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    .line 161
    add-int/2addr p1, v0

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private final updateCornerRadiusArray(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    .line 12
    aput v2, v0, v3

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v2, v1

    .line 19
    :goto_1
    const/4 v3, 0x1

    .line 20
    .line 21
    aput v2, v0, v3

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    move v2, v1

    .line 25
    goto :goto_2

    .line 26
    .line 27
    :cond_2
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 28
    :goto_2
    const/4 v3, 0x2

    .line 29
    .line 30
    aput v2, v0, v3

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    move v2, v1

    .line 34
    goto :goto_3

    .line 35
    .line 36
    :cond_3
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 37
    :goto_3
    const/4 v3, 0x3

    .line 38
    .line 39
    aput v2, v0, v3

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    move v2, v1

    .line 43
    goto :goto_4

    .line 44
    .line 45
    :cond_4
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 46
    :goto_4
    const/4 v3, 0x4

    .line 47
    .line 48
    aput v2, v0, v3

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    move v2, v1

    .line 52
    goto :goto_5

    .line 53
    .line 54
    :cond_5
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 55
    :goto_5
    const/4 v3, 0x5

    .line 56
    .line 57
    aput v2, v0, v3

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move v2, v1

    .line 64
    :goto_6
    const/4 v3, 0x6

    .line 65
    .line 66
    aput v2, v0, v3

    .line 67
    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 71
    :cond_7
    const/4 p1, 0x7

    .line 72
    .line 73
    aput v1, v0, p1

    .line 74
    return-void
.end method


# virtual methods
.method public final getFrameCellWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->frameCellWidth:I

    return v0
.end method

.method public final initComponent(IILcom/narvii/video/interfaces/ITimeLineControllerCallback;II)V
    .locals 0
    .param p3    # Lcom/narvii/video/interfaces/ITimeLineControllerCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 5
    .line 6
    if-lez p5, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p5, p2

    .line 9
    .line 10
    :goto_0
    iput p5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    .line 11
    .line 12
    iput-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerMovedCallback:Lcom/narvii/video/interfaces/ITimeLineControllerCallback;

    .line 13
    .line 14
    iput p4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 17
    const/4 p4, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    .line 22
    iget-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 26
    .line 27
    if-lt p1, p2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius_small:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    .line 40
    const/high16 p2, 0x3f800000    # 1.0f

    .line 41
    mul-float/2addr p1, p2

    .line 42
    .line 43
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadius:F

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 47
    return-void
.end method

.method public final isTouchInSlideHandler(F)Z
    .locals 13

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    float-to-double v0, p1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 14
    int-to-double v4, v3

    .line 15
    .line 16
    iget v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 17
    int-to-double v7, v6

    .line 18
    .line 19
    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    .line 20
    mul-double/2addr v7, v9

    .line 21
    sub-double/2addr v4, v7

    .line 22
    .line 23
    cmpl-double v4, v0, v4

    .line 24
    .line 25
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 26
    const/4 v5, 0x1

    .line 27
    .line 28
    if-ltz v4, :cond_1

    .line 29
    int-to-double v3, v3

    .line 30
    int-to-double v11, v6

    .line 31
    mul-double/2addr v11, v7

    .line 32
    add-double/2addr v3, v11

    .line 33
    .line 34
    cmpg-double v3, v0, v3

    .line 35
    .line 36
    if-gtz v3, :cond_1

    .line 37
    .line 38
    iput-boolean v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 44
    int-to-double v3, p1

    .line 45
    int-to-double v11, v6

    .line 46
    mul-double/2addr v11, v7

    .line 47
    sub-double/2addr v3, v11

    .line 48
    .line 49
    cmpl-double v3, v0, v3

    .line 50
    .line 51
    if-ltz v3, :cond_2

    .line 52
    int-to-double v3, p1

    .line 53
    int-to-double v6, v6

    .line 54
    mul-double/2addr v6, v9

    .line 55
    add-double/2addr v3, v6

    .line 56
    .line 57
    cmpg-double p1, v0, v3

    .line 58
    .line 59
    if-gtz p1, :cond_2

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 62
    .line 63
    iput-boolean v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 64
    .line 65
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    :cond_3
    move v2, v5

    .line 73
    :cond_4
    return v2
.end method

.method public final layoutRect(IIIII)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iput p5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    .line 34
    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    sub-int v2, p3, p5

    .line 38
    sub-int/2addr v2, v1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    add-int v2, p1, p5

    .line 42
    .line 43
    :goto_0
    sub-int v1, p3, p5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, p2, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    add-int v1, p1, p5

    .line 52
    .line 53
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterInitWidth:I

    .line 54
    .line 55
    if-lez v2, :cond_2

    .line 56
    add-int/2addr v2, v1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    sub-int v2, p3, p5

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v1, p2, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    :goto_2
    add-int p2, p1, p5

    .line 65
    .line 66
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minCutRectLeft:I

    .line 67
    .line 68
    sub-int p2, p3, p5

    .line 69
    .line 70
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxCutRectRight:I

    .line 71
    .line 72
    iget p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 73
    int-to-float p2, p2

    .line 74
    .line 75
    iget p4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 76
    int-to-float p4, p4

    .line 77
    div-float/2addr p2, p4

    .line 78
    sub-int/2addr p3, p1

    .line 79
    .line 80
    mul-int/lit8 p5, p5, 0x2

    .line 81
    sub-int/2addr p3, p5

    .line 82
    int-to-float p1, p3

    .line 83
    mul-float/2addr p2, p1

    .line 84
    .line 85
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minControllerWidth:F

    .line 86
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->baseRect:Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_cover_color:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    const/high16 v1, 0x41000000    # 8.0f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 51
    int-to-float v3, v1

    .line 52
    .line 53
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 54
    int-to-float v2, v1

    .line 55
    .line 56
    const/high16 v8, 0x40800000    # 4.0f

    .line 57
    .line 58
    add-float v4, v2, v8

    .line 59
    .line 60
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 61
    int-to-float v5, v0

    .line 62
    int-to-float v0, v1

    .line 63
    .line 64
    add-float v6, v0, v8

    .line 65
    .line 66
    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 67
    move-object v2, p1

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 73
    .line 74
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 75
    int-to-float v3, v1

    .line 76
    .line 77
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 78
    int-to-float v2, v1

    .line 79
    .line 80
    sub-float v4, v2, v8

    .line 81
    .line 82
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 83
    int-to-float v5, v0

    .line 84
    int-to-float v0, v1

    .line 85
    .line 86
    sub-float v6, v0, v8

    .line 87
    .line 88
    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 89
    move-object v2, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 95
    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 99
    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 103
    .line 104
    const/high16 v1, 0x40a00000    # 5.0f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eqz v0, :cond_0

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 116
    .line 117
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 118
    int-to-float v1, v1

    .line 119
    .line 120
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 121
    int-to-float v0, v0

    .line 122
    .line 123
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    .line 124
    sub-float/2addr v0, v2

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 128
    move-result v5

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 131
    .line 132
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 133
    int-to-float v4, v1

    .line 134
    .line 135
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 136
    int-to-float v6, v0

    .line 137
    .line 138
    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 139
    move-object v2, p1

    .line 140
    move v3, v5

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 147
    .line 148
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 149
    int-to-float v1, v1

    .line 150
    .line 151
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 152
    int-to-float v0, v0

    .line 153
    .line 154
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    .line 155
    add-float/2addr v0, v2

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 159
    move-result v5

    .line 160
    .line 161
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 162
    .line 163
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 164
    int-to-float v4, v1

    .line 165
    .line 166
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 167
    int-to-float v6, v0

    .line 168
    .line 169
    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->linePaint:Landroid/graphics/Paint;

    .line 170
    move-object v2, p1

    .line 171
    move v3, v5

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    .line 177
    .line 178
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    .line 179
    .line 180
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 183
    .line 184
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 187
    .line 188
    sub-int v3, v2, v3

    .line 189
    int-to-float v3, v3

    .line 190
    .line 191
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 192
    int-to-float v4, v4

    .line 193
    int-to-float v2, v2

    .line 194
    .line 195
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 196
    int-to-float v1, v1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    const/4 v0, 0x1

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/MediaRetrieveController;->updateCornerRadiusArray(Z)V

    .line 204
    .line 205
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 209
    .line 210
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 213
    .line 214
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 215
    .line 216
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 220
    .line 221
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 225
    .line 226
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 232
    .line 233
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 234
    .line 235
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 236
    const/4 v2, 0x0

    .line 237
    .line 238
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    .line 239
    .line 240
    if-ge v0, v1, :cond_2

    .line 241
    .line 242
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 243
    .line 244
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 248
    move-result v1

    .line 249
    float-to-int v1, v1

    .line 250
    .line 251
    iget v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 252
    .line 253
    div-int/lit8 v6, v6, 0x2

    .line 254
    sub-int/2addr v1, v6

    .line 255
    .line 256
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    .line 260
    move-result v6

    .line 261
    float-to-double v6, v6

    .line 262
    .line 263
    iget v8, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 264
    int-to-double v8, v8

    .line 265
    div-double/2addr v8, v4

    .line 266
    sub-double/2addr v6, v8

    .line 267
    double-to-int v6, v6

    .line 268
    .line 269
    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    .line 273
    move-result v7

    .line 274
    float-to-int v7, v7

    .line 275
    .line 276
    iget v8, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 277
    .line 278
    div-int/lit8 v8, v8, 0x2

    .line 279
    add-int/2addr v7, v8

    .line 280
    .line 281
    iget-object v8, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    .line 285
    move-result v8

    .line 286
    float-to-double v8, v8

    .line 287
    .line 288
    iget v10, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 289
    int-to-double v10, v10

    .line 290
    div-double/2addr v10, v4

    .line 291
    add-double/2addr v8, v10

    .line 292
    double-to-int v8, v8

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    .line 297
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 298
    .line 299
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 300
    .line 301
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0, v2, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 305
    .line 306
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 307
    .line 308
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 309
    .line 310
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 311
    int-to-float v7, v6

    .line 312
    .line 313
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 314
    int-to-float v8, v8

    .line 315
    .line 316
    iget v9, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 317
    add-int/2addr v6, v9

    .line 318
    int-to-float v6, v6

    .line 319
    .line 320
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 321
    int-to-float v1, v1

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v7, v8, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    const/4 v0, 0x0

    .line 326
    .line 327
    .line 328
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/MediaRetrieveController;->updateCornerRadiusArray(Z)V

    .line 329
    .line 330
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 334
    .line 335
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 336
    .line 337
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 338
    .line 339
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cornerRadiusArray:[F

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1, v6, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 343
    .line 344
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 348
    .line 349
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPath:Landroid/graphics/Path;

    .line 350
    .line 351
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerPaint:Landroid/graphics/Paint;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 355
    .line 356
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 357
    .line 358
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 359
    .line 360
    if-ge v0, v1, :cond_3

    .line 361
    .line 362
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 363
    .line 364
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 368
    move-result v1

    .line 369
    float-to-int v1, v1

    .line 370
    .line 371
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 372
    .line 373
    div-int/lit8 v3, v3, 0x2

    .line 374
    sub-int/2addr v1, v3

    .line 375
    .line 376
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 380
    move-result v3

    .line 381
    float-to-double v6, v3

    .line 382
    .line 383
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 384
    int-to-double v8, v3

    .line 385
    div-double/2addr v8, v4

    .line 386
    sub-double/2addr v6, v8

    .line 387
    double-to-int v3, v6

    .line 388
    .line 389
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    .line 393
    move-result v6

    .line 394
    float-to-int v6, v6

    .line 395
    .line 396
    iget v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 397
    .line 398
    div-int/lit8 v7, v7, 0x2

    .line 399
    add-int/2addr v6, v7

    .line 400
    .line 401
    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerRect:Landroid/graphics/RectF;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    .line 405
    move-result v7

    .line 406
    float-to-double v7, v7

    .line 407
    .line 408
    iget v9, p0, Lcom/narvii/video/widget/MediaRetrieveController;->controllerIndicatorSize:I

    .line 409
    int-to-double v9, v9

    .line 410
    div-double/2addr v9, v4

    .line 411
    add-double/2addr v7, v9

    .line 412
    double-to-int v4, v7

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1, v3, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 416
    .line 417
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapArrowRight:Landroid/graphics/Bitmap;

    .line 418
    .line 419
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerIndicatorRect:Landroid/graphics/Rect;

    .line 420
    .line 421
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->bitmapPaint:Landroid/graphics/Paint;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 425
    .line 426
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 427
    .line 428
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 429
    .line 430
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 431
    .line 432
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 433
    .line 434
    mul-int/lit8 v4, v3, 0x2

    .line 435
    .line 436
    sub-int v4, v2, v4

    .line 437
    .line 438
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 439
    add-int/2addr v2, v3

    .line 440
    int-to-float v3, v1

    .line 441
    .line 442
    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 446
    move-result v5

    .line 447
    add-float/2addr v3, v5

    .line 448
    float-to-int v3, v3

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 452
    .line 453
    .line 454
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 455
    move-result v0

    .line 456
    .line 457
    if-eqz v0, :cond_4

    .line 458
    .line 459
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 460
    goto :goto_1

    .line 461
    .line 462
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 463
    .line 464
    :goto_1
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 468
    move-result v1

    .line 469
    int-to-float v1, v1

    .line 470
    .line 471
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 472
    .line 473
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 474
    int-to-float v2, v2

    .line 475
    .line 476
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 480
    .line 481
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 482
    .line 483
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 484
    .line 485
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 486
    .line 487
    iget v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->handlerWidth:I

    .line 488
    .line 489
    sub-int v4, v2, v3

    .line 490
    .line 491
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 492
    .line 493
    mul-int/lit8 v3, v3, 0x2

    .line 494
    add-int/2addr v2, v3

    .line 495
    int-to-float v3, v1

    .line 496
    .line 497
    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 501
    move-result v5

    .line 502
    add-float/2addr v3, v5

    .line 503
    float-to-int v3, v3

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 507
    .line 508
    .line 509
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 510
    move-result v0

    .line 511
    .line 512
    if-eqz v0, :cond_5

    .line 513
    .line 514
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 515
    goto :goto_2

    .line 516
    .line 517
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 518
    .line 519
    :goto_2
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 523
    move-result v1

    .line 524
    int-to-float v1, v1

    .line 525
    .line 526
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterTimeRect:Landroid/graphics/Rect;

    .line 527
    .line 528
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 529
    int-to-float v2, v2

    .line 530
    .line 531
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController;->textPaint:Landroid/graphics/Paint;

    .line 532
    .line 533
    .line 534
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 535
    return-void
.end method

.method public final onSlideHandlerMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minVideoLengthPresentedByController:I

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxVideoLengthPresentedByController:I

    .line 19
    .line 20
    if-lt v0, v2, :cond_2

    .line 21
    .line 22
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_c

    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eq v0, v2, :cond_5

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateControllerMove(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x3

    .line 44
    .line 45
    if-eq v0, v2, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-ne p1, v3, :cond_4

    .line 52
    .line 53
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 59
    goto :goto_5

    .line 60
    .line 61
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isLeftHandlerActive:Z

    .line 62
    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 71
    move-result v2

    .line 72
    .line 73
    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minCutRectLeft:I

    .line 74
    int-to-float v5, v4

    .line 75
    .line 76
    cmpg-float v2, v2, v5

    .line 77
    .line 78
    if-gtz v2, :cond_6

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 83
    move-result v2

    .line 84
    .line 85
    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 86
    .line 87
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 88
    int-to-float v5, v4

    .line 89
    .line 90
    iget v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minControllerWidth:F

    .line 91
    sub-float/2addr v5, v6

    .line 92
    .line 93
    cmpl-float v2, v2, v5

    .line 94
    .line 95
    if-ltz v2, :cond_7

    .line 96
    int-to-float p1, v4

    .line 97
    sub-float/2addr p1, v6

    .line 98
    add-float/2addr p1, v1

    .line 99
    :goto_0
    float-to-int v4, p1

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 104
    move-result p1

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :goto_1
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->isRightHandlerActive:Z

    .line 111
    .line 112
    if-eqz v0, :cond_b

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 118
    move-result v2

    .line 119
    .line 120
    iget v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->maxCutRectRight:I

    .line 121
    int-to-float v5, v4

    .line 122
    .line 123
    cmpl-float v2, v2, v5

    .line 124
    .line 125
    if-ltz v2, :cond_9

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 130
    move-result v2

    .line 131
    .line 132
    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutRect:Landroid/graphics/Rect;

    .line 133
    .line 134
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 135
    int-to-float v5, v4

    .line 136
    .line 137
    iget v6, p0, Lcom/narvii/video/widget/MediaRetrieveController;->minControllerWidth:F

    .line 138
    add-float/2addr v5, v6

    .line 139
    .line 140
    cmpg-float v2, v2, v5

    .line 141
    .line 142
    if-gtz v2, :cond_a

    .line 143
    int-to-float p1, v4

    .line 144
    add-float/2addr p1, v6

    .line 145
    add-float/2addr p1, v1

    .line 146
    :goto_2
    float-to-int v4, p1

    .line 147
    goto :goto_3

    .line 148
    .line 149
    .line 150
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 151
    move-result p1

    .line 152
    goto :goto_2

    .line 153
    .line 154
    :goto_3
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 155
    .line 156
    .line 157
    :cond_b
    :goto_4
    invoke-direct {p0, v3}, Lcom/narvii/video/widget/MediaRetrieveController;->updateControllerMove(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 161
    :cond_c
    :goto_5
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    return-void
.end method

.method public final setFrameCellWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->frameCellWidth:I

    return-void
.end method

.method public final updateMediaSectionStartTime(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->curMediaSectionStartTimeMs:I

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->startOffsetInMs:I

    .line 5
    add-int/2addr v0, p1

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterStartTimeText:Ljava/lang/String;

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->endOffsetInMs:I

    .line 14
    add-int/2addr p1, v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController;->cutterEndTimeText:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

.method public final updatePointerPosition(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->frameCellWidth:I

    .line 9
    int-to-float v0, v0

    .line 10
    mul-float/2addr v0, p1

    .line 11
    .line 12
    :goto_0
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController;->pointerOffset:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    return-void
.end method
