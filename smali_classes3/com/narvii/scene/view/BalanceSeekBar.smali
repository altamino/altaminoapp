.class public final Lcom/narvii/scene/view/BalanceSeekBar;
.super Landroid/view/View;
.source "BalanceSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;,
        Lcom/narvii/scene/view/BalanceSeekBar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalanceSeekBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BalanceSeekBar.kt\ncom/narvii/scene/view/BalanceSeekBar\n*L\n1#1,200:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/view/BalanceSeekBar$Companion;

.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final bgPaint:Landroid/graphics/Paint;

.field private final bgRectF$delegate:Lkotlin/Lazy;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final contentRectF$delegate:Lkotlin/Lazy;

.field private h:I

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private indicatorW:I

.field private onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

.field private orientation:I

.field private seekLocation:F

.field private seekRegionH:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/view/BalanceSeekBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bgRectF"

    const-string v4, "getBgRectF()Landroid/graphics/RectF;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/view/BalanceSeekBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "contentRectF"

    const-string v4, "getContentRectF()Landroid/graphics/RectF;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/view/BalanceSeekBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/view/BalanceSeekBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/BalanceSeekBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/view/BalanceSeekBar;->Companion:Lcom/narvii/scene/view/BalanceSeekBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgRectF$delegate:Lkotlin/Lazy;

    .line 46
    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentRectF$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    const/4 p1, 0x6

    .line 55
    invoke-static {p1}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    const/4 p1, 0x4

    .line 57
    invoke-static {p1}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    const/4 p1, 0x1

    .line 61
    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->orientation:I

    .line 69
    iget-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_bg_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 70
    iget-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_content_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 71
    iget-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgRectF$delegate:Lkotlin/Lazy;

    .line 46
    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentRectF$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    const/4 p1, 0x6

    .line 55
    invoke-static {p1}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    const/4 p1, 0x4

    .line 57
    invoke-static {p1}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    const/4 p1, 0x1

    .line 61
    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->orientation:I

    .line 69
    iget-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_bg_color:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 70
    iget-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_content_color:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 71
    iget-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x106000b

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    return-void
.end method

.method private final correctSeekPercent(F)F
    .locals 2

    const/4 v0, 0x1

    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 149
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    sub-float p1, v0, p1

    :cond_1
    return p1
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 104
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    int-to-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 106
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getBgRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    int-to-float v4, v3

    iget v5, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    int-to-float v6, v5

    sub-float/2addr v4, v6

    div-float/2addr v4, v1

    iget v6, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v6, v6

    int-to-float v3, v3

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v4, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getBgRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private final drawContent(Landroid/graphics/Canvas;)V
    .locals 10

    .line 113
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    int-to-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 115
    iget v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v3, v2

    div-float/2addr v3, v1

    iget v4, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    int-to-float v2, v2

    div-float/2addr v2, v1

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getContentRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v5, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    int-to-float v6, v5

    iget v7, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    int-to-float v8, v7

    sub-float/2addr v6, v8

    div-float/2addr v6, v1

    int-to-float v5, v5

    int-to-float v7, v7

    add-float/2addr v5, v7

    div-float/2addr v5, v1

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getContentRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private final drawIndicator(Landroid/graphics/Canvas;)V
    .locals 6

    .line 130
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    iget v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    const/4 v3, 0x2

    .line 131
    div-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 132
    invoke-static {v3}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 136
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    const/4 v2, 0x0

    .line 139
    :cond_0
    iget v3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    int-to-float v0, v3

    .line 141
    iget v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    :cond_1
    if-eqz p1, :cond_2

    .line 144
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    int-to-float v5, v5

    invoke-direct {v3, v2, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private final getBgRectF()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgRectF$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/BalanceSeekBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    return-object v0
.end method

.method private final getContentRectF()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentRectF$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/BalanceSeekBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    return-object v0
.end method

.method private final initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V
    .locals 0

    .line 75
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 80
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 81
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method private static synthetic orientation$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->drawContent(Landroid/graphics/Canvas;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->drawIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int p3, p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 90
    iget p3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    if-ge p2, p3, :cond_0

    iput p2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    :cond_0
    int-to-float p1, p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 92
    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 161
    iget p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 162
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->correctSeekPercent(F)F

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeek(F)V

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 170
    iget p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 171
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->correctSeekPercent(F)F

    move-result p1

    .line 173
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeek(F)V

    goto :goto_3

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 177
    iget p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 178
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->correctSeekPercent(F)F

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeekFinish(F)V

    .line 183
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public final setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    return-void
.end method

.method public final setRange(F)V
    .locals 2

    .line 189
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v0, v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    goto :goto_0

    .line 192
    :cond_0
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 189
    :goto_0
    iput v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
