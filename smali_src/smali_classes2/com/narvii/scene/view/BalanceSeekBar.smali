.class public final Lcom/narvii/scene/view/BalanceSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/BalanceSeekBar$Companion;,
        Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/view/BalanceSeekBar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I = 0x2


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgRectF$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentRectF$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:I

.field private final indicatorPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private indicatorW:I

.field private onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private orientation:I

.field private seekLocation:F

.field private seekRegionH:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/view/BalanceSeekBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/BalanceSeekBar$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/view/BalanceSeekBar;->Companion:Lcom/narvii/scene/view/BalanceSeekBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;

    .line 2
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgRectF$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;

    .line 3
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentRectF$delegate:Lw7/m;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x6

    .line 7
    invoke-static {v2}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    const/4 v2, 0x4

    .line 8
    invoke-static {v2}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->orientation:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_bg_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_content_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x106000b

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$bgRectF$2;

    .line 13
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgRectF$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;->INSTANCE:Lcom/narvii/scene/view/BalanceSeekBar$contentRectF$2;

    .line 14
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentRectF$delegate:Lw7/m;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    .line 16
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x6

    .line 18
    invoke-static {v1}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    const/4 v1, 0x4

    .line 19
    invoke-static {v1}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->orientation:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_bg_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_audio_seek_bar_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p2, p1, v2, v3}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x106000b

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/narvii/scene/view/BalanceSeekBar;->initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V

    return-void
.end method

.method private final correctSeekPercent(F)F
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    cmpl-float v1, p1, v0

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    move p1, v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    int-to-float v0, v0

    .line 16
    .line 17
    sub-float p1, v0, p1

    .line 18
    :cond_1
    return p1
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    .line 3
    int-to-float v0, v0

    .line 4
    const/4 v1, 0x2

    .line 5
    int-to-float v1, v1

    .line 6
    div-float/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getBgRectF()Landroid/graphics/RectF;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    iget v3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    .line 13
    int-to-float v4, v3

    .line 14
    .line 15
    iget v5, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    .line 16
    int-to-float v6, v5

    .line 17
    sub-float/2addr v4, v6

    .line 18
    div-float/2addr v4, v1

    .line 19
    .line 20
    iget v6, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 21
    int-to-float v6, v6

    .line 22
    int-to-float v3, v3

    .line 23
    int-to-float v5, v5

    .line 24
    add-float/2addr v3, v5

    .line 25
    div-float/2addr v3, v1

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1, v4, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getBgRectF()Landroid/graphics/RectF;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 41
    :cond_0
    return-void
.end method

.method private final drawContent(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    .line 3
    int-to-float v0, v0

    .line 4
    const/4 v1, 0x2

    .line 5
    int-to-float v1, v1

    .line 6
    div-float/2addr v0, v1

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 9
    int-to-float v3, v2

    .line 10
    div-float/2addr v3, v1

    .line 11
    .line 12
    iget v4, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 13
    .line 14
    cmpl-float v3, v3, v4

    .line 15
    .line 16
    if-lez v3, :cond_0

    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v2, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    int-to-float v2, v2

    .line 21
    div-float/2addr v2, v1

    .line 22
    move v9, v4

    .line 23
    move v4, v2

    .line 24
    move v2, v9

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getContentRectF()Landroid/graphics/RectF;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    iget v5, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    .line 31
    int-to-float v6, v5

    .line 32
    .line 33
    iget v7, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    .line 34
    int-to-float v8, v7

    .line 35
    sub-float/2addr v6, v8

    .line 36
    div-float/2addr v6, v1

    .line 37
    int-to-float v5, v5

    .line 38
    int-to-float v7, v7

    .line 39
    add-float/2addr v5, v7

    .line 40
    div-float/2addr v5, v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/scene/view/BalanceSeekBar;->getContentRectF()Landroid/graphics/RectF;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentPaint:Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 55
    :cond_1
    return-void
.end method

.method private final drawIndicator(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    .line 5
    .line 6
    div-int/lit8 v2, v1, 0x2

    .line 7
    int-to-float v2, v2

    .line 8
    .line 9
    sub-float v2, v0, v2

    .line 10
    const/4 v3, 0x2

    .line 11
    div-int/2addr v1, v3

    .line 12
    int-to-float v1, v1

    .line 13
    add-float/2addr v0, v1

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lcom/narvii/scene/view/BalanceSeekBarKt;->toPx(I)I

    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    cmpg-float v4, v2, v3

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    .line 26
    int-to-float v0, v0

    .line 27
    add-float/2addr v0, v3

    .line 28
    move v2, v3

    .line 29
    .line 30
    :cond_0
    iget v4, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 31
    int-to-float v5, v4

    .line 32
    .line 33
    cmpl-float v5, v0, v5

    .line 34
    .line 35
    if-lez v5, :cond_1

    .line 36
    int-to-float v0, v4

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorW:I

    .line 39
    int-to-float v2, v2

    .line 40
    .line 41
    sub-float v2, v0, v2

    .line 42
    .line 43
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    .line 45
    new-instance v4, Landroid/graphics/RectF;

    .line 46
    .line 47
    iget v5, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    .line 48
    int-to-float v5, v5

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v2, v3, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->indicatorPaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 57
    :cond_2
    return-void
.end method

.method private final getBgRectF()Landroid/graphics/RectF;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->bgRectF$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/RectF;

    .line 9
    return-object v0
.end method

.method private final getContentRectF()Landroid/graphics/RectF;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->contentRectF$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/RectF;

    .line 9
    return-object v0
.end method

.method private static synthetic getOrientation$annotations()V
    .locals 0

    return-void
.end method

.method private final initPaint(Landroid/graphics/Paint;ILandroid/graphics/Paint$Style;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 17
    .line 18
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 22
    .line 23
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
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
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->drawContent(Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 18
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    move-result p3

    .line 8
    .line 9
    sub-int p3, p2, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    move-result p4

    .line 14
    sub-int/2addr p3, p4

    .line 15
    .line 16
    iput p3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->h:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    move-result p3

    .line 21
    .line 22
    sub-int p3, p1, p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    move-result p4

    .line 27
    sub-int/2addr p3, p4

    .line 28
    .line 29
    iput p3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 30
    .line 31
    iget p3, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    .line 32
    .line 33
    if-ge p2, p3, :cond_0

    .line 34
    .line 35
    iput p2, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekRegionH:I

    .line 36
    :cond_0
    int-to-float p1, p1

    .line 37
    const/4 p2, 0x2

    .line 38
    int-to-float p2, p2

    .line 39
    div-float/2addr p1, p2

    .line 40
    .line 41
    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 29
    .line 30
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 31
    int-to-float v0, v0

    .line 32
    div-float/2addr p1, v0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->correctSeekPercent(F)F

    .line 36
    move-result p1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeek(F)V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x2

    .line 53
    .line 54
    if-ne v2, v3, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 58
    move-result p1

    .line 59
    .line 60
    iput p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 61
    .line 62
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 63
    int-to-float v0, v0

    .line 64
    div-float/2addr p1, v0

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->correctSeekPercent(F)F

    .line 68
    move-result p1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeek(F)V

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 79
    goto :goto_3

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result p1

    .line 84
    .line 85
    if-ne p1, v1, :cond_6

    .line 86
    .line 87
    iget p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 88
    .line 89
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 90
    int-to-float v0, v0

    .line 91
    div-float/2addr p1, v0

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/BalanceSeekBar;->correctSeekPercent(F)F

    .line 95
    move-result p1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeekFinish(F)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 106
    return v1
.end method

.method public final setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/BalanceSeekBar;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    return-void
.end method

.method public final setRange(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 9
    int-to-float v0, v0

    .line 10
    const/4 v1, 0x1

    .line 11
    int-to-float v1, v1

    .line 12
    sub-float/2addr v1, p1

    .line 13
    mul-float/2addr v0, v1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->w:I

    .line 17
    int-to-float v0, v0

    .line 18
    mul-float/2addr v0, p1

    .line 19
    .line 20
    :goto_0
    iput v0, p0, Lcom/narvii/scene/view/BalanceSeekBar;->seekLocation:F

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method
