.class public final Lcom/narvii/video/widget/ViceTimeLineCutterView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;
    }
.end annotation


# instance fields
.field private active:Z

.field private baseColor:I

.field private final baseRect:Landroid/graphics/RectF;
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

.field private final bitmapPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final boxColor:I

.field private final boxPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cornerRadius:F

.field private fillColor:I

.field private final fillPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerIndicatorRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerIndicatorSize:I

.field private handlerWidth:I

.field private final innerPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final innerRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isLeftHandlerActive:Z

.field private isRightHandlerActive:Z

.field private mainTimeLineEndEdge:F

.field private mainTimeLineStartEdge:F

.field private maxCutterWidth:F

.field private minCutterWidth:F

.field private final outerRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    const/4 v3, 0x1

    .line 15
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 21
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "getBitmap(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 25
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

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 31
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxColor:I

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "getBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 50
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

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final isTouchInSlideHandler(F)V
    .locals 14

    .line 1
    float-to-double v0, p1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 6
    float-to-double v3, v2

    .line 7
    .line 8
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 9
    int-to-double v6, v5

    .line 10
    .line 11
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 12
    mul-double/2addr v6, v8

    .line 13
    sub-double/2addr v3, v6

    .line 14
    .line 15
    cmpl-double v3, v0, v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    .line 19
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    if-ltz v3, :cond_0

    .line 22
    float-to-double v2, v2

    .line 23
    int-to-double v12, v5

    .line 24
    mul-double/2addr v12, v10

    .line 25
    add-double/2addr v2, v12

    .line 26
    .line 27
    cmpg-double v2, v0, v2

    .line 28
    .line 29
    if-gtz v2, :cond_0

    .line 30
    .line 31
    iput-boolean v6, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 32
    .line 33
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 37
    float-to-double v2, p1

    .line 38
    int-to-double v12, v5

    .line 39
    mul-double/2addr v12, v10

    .line 40
    sub-double/2addr v2, v12

    .line 41
    .line 42
    cmpl-double v2, v0, v2

    .line 43
    .line 44
    if-ltz v2, :cond_1

    .line 45
    float-to-double v2, p1

    .line 46
    int-to-double v10, v5

    .line 47
    mul-double/2addr v10, v8

    .line 48
    add-double/2addr v2, v10

    .line 49
    .line 50
    cmpg-double p1, v0, v2

    .line 51
    .line 52
    if-gtz p1, :cond_1

    .line 53
    .line 54
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 55
    .line 56
    iput-boolean v6, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private final onSlideHandlerMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_e

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->updateControllerMove(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x3

    .line 29
    .line 30
    if-eq v1, v3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 34
    move-result p1

    .line 35
    .line 36
    if-ne p1, v2, :cond_2

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isLeftHandlerActive:Z

    .line 55
    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 70
    .line 71
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 72
    .line 73
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    .line 74
    sub-float/2addr v0, v1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_4
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 80
    .line 81
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 82
    .line 83
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    .line 84
    sub-float/2addr v1, v3

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 88
    move-result v0

    .line 89
    .line 90
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 97
    .line 98
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    .line 99
    sub-float/2addr v1, v3

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_5
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineEndEdge:F

    .line 103
    .line 104
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    .line 105
    sub-float/2addr v1, v3

    .line 106
    .line 107
    iget-object v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 108
    .line 109
    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 110
    sub-float/2addr v4, v3

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 114
    move-result v1

    .line 115
    .line 116
    :goto_1
    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 120
    move-result v4

    .line 121
    .line 122
    cmpg-float v4, v4, v0

    .line 123
    .line 124
    if-gtz v4, :cond_6

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 129
    move-result v0

    .line 130
    .line 131
    cmpl-float v0, v0, v1

    .line 132
    .line 133
    if-ltz v0, :cond_7

    .line 134
    move v0, v1

    .line 135
    goto :goto_2

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 139
    move-result v0

    .line 140
    .line 141
    :goto_2
    iput v0, v3, Landroid/graphics/RectF;->left:F

    .line 142
    goto :goto_6

    .line 143
    .line 144
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isRightHandlerActive:Z

    .line 145
    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 154
    .line 155
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineEndEdge:F

    .line 160
    .line 161
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    .line 162
    add-float/2addr v0, v1

    .line 163
    .line 164
    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 165
    .line 166
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 167
    add-float/2addr v3, v1

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 171
    move-result v0

    .line 172
    goto :goto_3

    .line 173
    .line 174
    :cond_9
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 175
    .line 176
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 177
    .line 178
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    .line 179
    add-float/2addr v0, v1

    .line 180
    .line 181
    :goto_3
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 182
    .line 183
    if-eqz v1, :cond_a

    .line 184
    .line 185
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    .line 186
    .line 187
    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 188
    .line 189
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 190
    .line 191
    iget v4, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    .line 192
    add-float/2addr v3, v4

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 196
    move-result v1

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_a
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 200
    .line 201
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 202
    .line 203
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    .line 204
    add-float/2addr v1, v3

    .line 205
    .line 206
    :goto_4
    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 210
    move-result v4

    .line 211
    .line 212
    cmpg-float v4, v4, v0

    .line 213
    .line 214
    if-gtz v4, :cond_b

    .line 215
    goto :goto_5

    .line 216
    .line 217
    .line 218
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 219
    move-result v0

    .line 220
    .line 221
    cmpl-float v0, v0, v1

    .line 222
    .line 223
    if-ltz v0, :cond_c

    .line 224
    move v0, v1

    .line 225
    goto :goto_5

    .line 226
    .line 227
    .line 228
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 229
    move-result v0

    .line 230
    .line 231
    :goto_5
    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 232
    .line 233
    .line 234
    :cond_d
    :goto_6
    invoke-direct {p0, v2}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->updateControllerMove(Z)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 238
    :cond_e
    :goto_7
    return-void
.end method

.method private final updateControllerMove(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->rtl:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 18
    .line 19
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    :goto_0
    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    .line 22
    sub-float/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "testtest onControllerMoved left = "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, " width = "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->callback:Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v1, v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;->onCutterMoved(FFZ)V

    .line 67
    :cond_2
    return-void
.end method


# virtual methods
.method public final getCurrentTimelineRect()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final layoutRect(FFFFFFFF)V
    .locals 0

    .line 1
    .line 2
    iput p5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->minCutterWidth:F

    .line 3
    .line 4
    iput p6, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->maxCutterWidth:F

    .line 5
    .line 6
    iput p7, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineStartEdge:F

    .line 7
    .line 8
    iput p8, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->mainTimeLineEndEdge:F

    .line 9
    .line 10
    iget-object p5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result p6

    .line 15
    int-to-float p6, p6

    .line 16
    const/4 p7, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p5, p7, p2, p6, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    .line 21
    iget-object p5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 22
    const/4 p6, 0x4

    .line 23
    int-to-float p6, p6

    .line 24
    add-float/2addr p2, p6

    .line 25
    sub-float/2addr p4, p6

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 32
    return-void
.end method

.method public final onActionUpInterceptedForFling(Landroid/view/MotionEvent;)V
    .locals 1
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
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->active:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
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
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseColor:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseRect:Landroid/graphics/RectF;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 32
    .line 33
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 34
    int-to-float v4, v3

    .line 35
    sub-float/2addr v2, v4

    .line 36
    .line 37
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 38
    const/4 v5, 0x4

    .line 39
    int-to-float v5, v5

    .line 40
    sub-float/2addr v4, v5

    .line 41
    .line 42
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 43
    int-to-float v3, v3

    .line 44
    add-float/2addr v6, v3

    .line 45
    .line 46
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 47
    add-float/2addr v1, v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerRect:Landroid/graphics/RectF;

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    .line 67
    .line 68
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 79
    .line 80
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->cornerRadius:F

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->boxPaint:Landroid/graphics/Paint;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 98
    .line 99
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillColor:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->innerPath:Landroid/graphics/Path;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillPaint:Landroid/graphics/Paint;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 114
    .line 115
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 116
    .line 117
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 118
    int-to-float v3, v3

    .line 119
    .line 120
    const/high16 v4, 0x40000000    # 2.0f

    .line 121
    div-float/2addr v3, v4

    .line 122
    add-float/2addr v2, v3

    .line 123
    .line 124
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 125
    int-to-float v3, v3

    .line 126
    div-float/2addr v3, v4

    .line 127
    sub-float/2addr v2, v3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 131
    move-result v1

    .line 132
    .line 133
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 134
    int-to-float v5, v3

    .line 135
    .line 136
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 137
    div-float/2addr v5, v6

    .line 138
    sub-float/2addr v1, v5

    .line 139
    .line 140
    iget-object v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 141
    .line 142
    iget v7, v5, Landroid/graphics/RectF;->left:F

    .line 143
    .line 144
    iget v8, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 145
    int-to-float v8, v8

    .line 146
    div-float/2addr v8, v4

    .line 147
    add-float/2addr v7, v8

    .line 148
    int-to-float v3, v3

    .line 149
    div-float/2addr v3, v4

    .line 150
    add-float/2addr v7, v3

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 154
    move-result v3

    .line 155
    .line 156
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 157
    int-to-float v5, v5

    .line 158
    div-float/2addr v5, v6

    .line 159
    add-float/2addr v3, v5

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    .line 164
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    .line 169
    const/4 v3, 0x0

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    .line 174
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 177
    .line 178
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 179
    .line 180
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 181
    int-to-float v5, v5

    .line 182
    div-float/2addr v5, v4

    .line 183
    sub-float/2addr v2, v5

    .line 184
    .line 185
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 186
    int-to-float v5, v5

    .line 187
    div-float/2addr v5, v4

    .line 188
    sub-float/2addr v2, v5

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 192
    move-result v1

    .line 193
    .line 194
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 195
    int-to-float v7, v5

    .line 196
    div-float/2addr v7, v6

    .line 197
    sub-float/2addr v1, v7

    .line 198
    .line 199
    iget-object v7, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->outerRect:Landroid/graphics/RectF;

    .line 200
    .line 201
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 202
    .line 203
    iget v9, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerWidth:I

    .line 204
    int-to-float v9, v9

    .line 205
    div-float/2addr v9, v4

    .line 206
    sub-float/2addr v8, v9

    .line 207
    int-to-float v5, v5

    .line 208
    div-float/2addr v5, v4

    .line 209
    add-float/2addr v8, v5

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    .line 213
    move-result v4

    .line 214
    .line 215
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorSize:I

    .line 216
    int-to-float v5, v5

    .line 217
    div-float/2addr v5, v6

    .line 218
    add-float/2addr v4, v5

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v2, v1, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    .line 223
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapArrowRight:Landroid/graphics/Bitmap;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 226
    .line 227
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->bitmapPaint:Landroid/graphics/Paint;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 231
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
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
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->active:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->isTouchInSlideHandler(F)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    .line 27
    :goto_0
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final setControllerCallback(Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->callback:Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;

    return-void
.end method

.method public final setFillColor(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->fillColor:I

    iput p2, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->baseColor:I

    return-void
.end method

.method public final toggle(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineCutterView;->active:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_0
    return-void
.end method
