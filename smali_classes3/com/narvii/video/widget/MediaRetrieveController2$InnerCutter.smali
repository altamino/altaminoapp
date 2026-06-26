.class final Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;
.super Ljava/lang/Object;
.source "MediaRetrieveController2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerCutter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaRetrieveController2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaRetrieveController2.kt\ncom/narvii/video/widget/MediaRetrieveController2$InnerCutter\n*L\n1#1,497:1\n*E\n"
.end annotation


# instance fields
.field private bitmapArrowLeft:Landroid/graphics/Bitmap;

.field private bitmapArrowRight:Landroid/graphics/Bitmap;

.field private bitmapDot:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final boundaryWidth:F

.field private final controllerColor:I

.field private final controllerIndicatorSize:I

.field private final coverColor:I

.field private cutterEndTimeText:Ljava/lang/String;

.field private cutterStartTimeText:Ljava/lang/String;

.field private final cutterTimeRect:Landroid/graphics/RectF;

.field private final handlerIndicatorRect:Landroid/graphics/RectF;

.field private final handlerPaint:Landroid/graphics/Paint;

.field private final handlerRect:Landroid/graphics/RectF;

.field private final linePaint:Landroid/graphics/Paint;

.field private pointerOffsetForDraw:F

.field private pointerPercent:F

.field private final textPaint:Landroid/graphics/Paint;

.field private final textYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_cover_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->coverColor:I

    .line 364
    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerColor:I

    .line 365
    sget v0, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 366
    sget v0, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_boundary_top_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 367
    sget v0, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_text_y_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textYOffset:I

    .line 369
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 370
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    .line 371
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    .line 372
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 375
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 376
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    const-string v0, ""

    .line 385
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 386
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 394
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 398
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 400
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 402
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 403
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_cutter_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 405
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_dot:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    if-eqz v0, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "(resources.getDrawable(R\u2026as BitmapDrawable).bitmap"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapDot:Landroid/graphics/Bitmap;

    .line 408
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 409
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowRight:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final convertMillisToTime(JZ)Ljava/lang/String;
    .locals 11

    const/16 p3, 0x3e8

    int-to-long v0, p3

    .line 482
    div-long/2addr p1, v0

    const/16 p3, 0x3c

    int-to-long v0, p3

    rem-long v2, p1, v0

    .line 483
    div-long v4, p1, v0

    rem-long/2addr v4, v0

    const/16 p3, 0xe10

    int-to-long v0, p3

    .line 484
    div-long/2addr p1, v0

    const-string p3, "java.lang.String.format(locale, format, *args)"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const-string v7, "Locale.US"

    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-lez v10, :cond_0

    .line 491
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    array-length p1, v7

    invoke-static {v7, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d:%02d:%02d"

    invoke-static {v8, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%01d:%02d"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;IZZZ)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    const-string v2, "canvas"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "baseRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cutRect"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v9

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    float-to-int v5, v4

    add-int/2addr v3, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v9

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    float-to-int v4, v4

    sub-int/2addr v1, v4

    invoke-virtual {p1, v2, v3, v5, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 416
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 417
    iget v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->coverColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    sub-float/2addr v1, v2

    const/4 v10, 0x2

    int-to-float v11, v10

    sub-float v3, v1, v11

    iget v1, v8, Landroid/graphics/RectF;->top:F

    div-float v4, v2, v11

    add-float/2addr v4, v1

    iget v5, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    add-float/2addr v5, v11

    div-float/2addr v2, v11

    add-float v6, v1, v2

    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 422
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    sub-float/2addr v1, v2

    sub-float v3, v1, v11

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    div-float v4, v2, v11

    sub-float v4, v1, v4

    iget v5, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    add-float/2addr v5, v11

    div-float/2addr v2, v11

    sub-float v6, v1, v2

    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_1

    .line 425
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 426
    iget v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerOffsetForDraw:F

    .line 427
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget v1, v8, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerOffsetForDraw:F

    sub-float v4, v1, v2

    .line 429
    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 432
    :cond_0
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerOffsetForDraw:F

    add-float v4, v1, v2

    .line 433
    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 437
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    .line 440
    :goto_0
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    int-to-float v3, v9

    sub-float v4, v2, v3

    iget v5, v8, Landroid/graphics/RectF;->top:F

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 441
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3fc00000    # 1.5f

    if-eqz p5, :cond_2

    .line 443
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v6, v10

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v11, v10

    int-to-float v11, v11

    sub-float/2addr v6, v11

    .line 444
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v12, v10

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget v13, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v13, v10

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 443
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapDot:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 447
    :cond_2
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v6, v10

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    int-to-float v11, v11

    div-float/2addr v11, v2

    sub-float/2addr v6, v11

    .line 448
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v12, v10

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget v13, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    int-to-float v13, v13

    div-float/2addr v13, v2

    add-float/2addr v12, v13

    .line 447
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 449
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 452
    :goto_1
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    iget v5, v8, Landroid/graphics/RectF;->right:F

    iget v6, v8, Landroid/graphics/RectF;->top:F

    add-float v11, v5, v3

    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 453
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_3

    .line 455
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v5, v10

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v6, v10

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 456
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v11, v10

    int-to-float v11, v11

    add-float/2addr v6, v11

    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v12, v10

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 455
    invoke-virtual {v2, v4, v5, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 457
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapDot:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 459
    :cond_3
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v6, v10

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    int-to-float v11, v11

    div-float/2addr v11, v2

    sub-float/2addr v6, v11

    .line 460
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    div-int/2addr v12, v10

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget v13, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    int-to-float v13, v13

    div-float/2addr v13, v2

    add-float/2addr v12, v13

    .line 459
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 461
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowRight:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 464
    :goto_2
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    sub-float v5, v2, v4

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textYOffset:I

    int-to-float v10, v9

    add-float/2addr v10, v6

    add-float/2addr v2, v3

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget-object v9, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    add-float/2addr v6, v9

    invoke-virtual {v1, v5, v10, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 465
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 466
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, v3

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textYOffset:I

    int-to-float v8, v6

    add-float/2addr v8, v5

    add-float/2addr v2, v4

    int-to-float v4, v6

    add-float/2addr v5, v4

    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v5, v4

    invoke-virtual {v1, v3, v8, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 467
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getCutterEndTimeText()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    return-object v0
.end method

.method public final getCutterStartTimeText()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPointerPercent()F
    .locals 1

    .line 384
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    return v0
.end method

.method public final setCutterEndTimeText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    return-void
.end method

.method public final setCutterStartTimeText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    return-void
.end method

.method public final setPointerPercent(F)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    return-void
.end method

.method public final updateTimeText(JJZ)V
    .locals 1

    .line 471
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0, p3, p4, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 473
    invoke-direct {p0, p1, p2, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    goto :goto_0

    .line 475
    :cond_0
    invoke-direct {p0, p1, p2, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 476
    invoke-direct {p0, p3, p4, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    :goto_0
    return-void
.end method
