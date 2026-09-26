.class public final Lcom/narvii/video/widget/MediaSpeedSelectView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSpeedSelectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSpeedSelectView.kt\ncom/narvii/video/widget/MediaSpeedSelectView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1549#2:166\n1620#2,3:167\n1864#2,3:170\n1864#2,3:173\n*S KotlinDebug\n*F\n+ 1 MediaSpeedSelectView.kt\ncom/narvii/video/widget/MediaSpeedSelectView\n*L\n50#1:166\n50#1:167,3\n72#1:170,3\n90#1:173,3\n*E\n"
.end annotation


# instance fields
.field private animateCountLeft:I

.field private animateStep:F

.field private final backgroundColor:I

.field private currentOffset:F

.field private final cursorColor:I

.field private final dp1:F

.field private final drawRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAnimating:Z

.field private lastDownX:F

.field private onSpeedUpdateListener:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljava/lang/Double;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scaleColor:I

.field private final scaleInterval:F

.field private final scaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scaleTextWidthHalf:F

.field private final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    new-array v0, p1, [Lw7/u;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Lj8/i;

    const/4 v3, 0x2

    const/16 v4, 0x28

    invoke-direct {v1, v3, v4}, Lj8/i;-><init>(II)V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lkotlin/collections/m0;

    invoke-virtual {v5}, Lkotlin/collections/m0;->nextInt()I

    move-result v5

    int-to-double v6, v5

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    rem-int/lit8 v5, v5, 0x5

    if-nez v5, :cond_0

    move v5, p1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object v5

    .line 8
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p1, "#FF222222"

    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    const-string p1, "#CCFFFFFF"

    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    const-string p1, "#CCD8D8D8"

    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    const-string p1, "#FFFFBE17"

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    const/16 v1, 0xb

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "0.1x"

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    int-to-float v0, v4

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    new-array p2, p1, [Lw7/u;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 25
    new-instance v0, Lj8/i;

    const/4 v2, 0x2

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3}, Lj8/i;-><init>(II)V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    int-to-double v5, v4

    int-to-double v7, v3

    div-double/2addr v5, v7

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_0

    move v4, p1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object v4

    .line 29
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 34
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p1, "#FF222222"

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    const-string p1, "#CCFFFFFF"

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    const-string p1, "#CCD8D8D8"

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    const-string p1, "#FFFFBE17"

    .line 38
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    const/16 v0, 0xb

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 40
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "0.1x"

    .line 41
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    int-to-float p2, v3

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    new-array p2, p1, [Lw7/u;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 46
    new-instance p3, Lj8/i;

    const/4 v1, 0x2

    const/16 v2, 0x28

    invoke-direct {p3, v1, v2}, Lj8/i;-><init>(II)V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p3, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_0

    move v3, p1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object v3

    .line 50
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 53
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p1, "#FF222222"

    .line 56
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    const-string p1, "#CCFFFFFF"

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    const-string p1, "#CCD8D8D8"

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    const-string p1, "#FFFFBE17"

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    const/16 p3, 0xb

    int-to-float p3, p3

    mul-float/2addr p3, p1

    .line 61
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p3, "0.1x"

    .line 62
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    int-to-float p2, v2

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private final drawRoundLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    int-to-float v1, v1

    .line 9
    div-float/2addr v0, v1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    .line 12
    sub-float/2addr p2, v0

    .line 13
    sub-float/2addr p3, v0

    .line 14
    add-float/2addr p4, v0

    .line 15
    add-float/2addr p5, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v0, v0, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final getOnSpeedUpdateListener()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/Double;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->onSpeedUpdateListener:Le8/l;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    const-string v0, "canvas"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v9

    .line 21
    .line 22
    iget-object v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    iget-object v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    .line 30
    int-to-float v10, v0

    .line 31
    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    .line 34
    mul-float v2, v10, v0

    .line 35
    int-to-float v11, v9

    .line 36
    .line 37
    mul-float v12, v11, v0

    .line 38
    const/4 v13, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v13, v13, v2, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    .line 43
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget-object v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 49
    .line 50
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Iterable;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v14

    .line 57
    const/4 v15, 0x0

    .line 58
    move v0, v15

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    const/high16 v2, 0x40000000    # 2.0f

    .line 65
    const/4 v3, 0x2

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    add-int/lit8 v16, v0, 0x1

    .line 74
    .line 75
    if-gez v0, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 79
    .line 80
    :cond_0
    check-cast v1, Lw7/u;

    .line 81
    .line 82
    div-float v2, v10, v2

    .line 83
    int-to-float v0, v0

    .line 84
    .line 85
    iget v4, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 86
    mul-float/2addr v0, v4

    .line 87
    add-float/2addr v2, v0

    .line 88
    .line 89
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 90
    .line 91
    sub-float v4, v2, v0

    .line 92
    .line 93
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    .line 94
    .line 95
    add-float v2, v4, v0

    .line 96
    .line 97
    cmpg-float v2, v2, v13

    .line 98
    .line 99
    if-ltz v2, :cond_3

    .line 100
    .line 101
    sub-float v0, v4, v0

    .line 102
    .line 103
    cmpl-float v0, v0, v10

    .line 104
    .line 105
    if-gtz v0, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lw7/u;->d()Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    check-cast v0, Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    move-result v0

    .line 116
    .line 117
    const/16 v2, 0xf

    .line 118
    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 122
    .line 123
    iget v5, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    .line 128
    sget-object v0, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 129
    .line 130
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 131
    const/4 v5, 0x1

    .line 132
    .line 133
    new-array v6, v5, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 137
    move-result-object v17

    .line 138
    .line 139
    aput-object v17, v6, v15

    .line 140
    .line 141
    .line 142
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 143
    move-result-object v5

    .line 144
    .line 145
    const-string v6, "%.1fx"

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    const-string v5, "format(...)"

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    iget v5, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    .line 157
    .line 158
    sub-float v5, v4, v5

    .line 159
    .line 160
    div-int/lit8 v6, v9, 0x2

    .line 161
    int-to-float v6, v6

    .line 162
    int-to-float v13, v2

    .line 163
    .line 164
    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 165
    mul-float/2addr v13, v2

    .line 166
    sub-float/2addr v6, v13

    .line 167
    .line 168
    iget-object v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v0, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    .line 173
    :cond_1
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 174
    .line 175
    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    .line 180
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 181
    .line 182
    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lw7/u;->d()Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    check-cast v0, Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    move-result v0

    .line 196
    .line 197
    if-eqz v0, :cond_2

    .line 198
    .line 199
    const/16 v2, 0xf

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    const/4 v2, 0x6

    .line 202
    :goto_1
    int-to-float v0, v2

    .line 203
    .line 204
    iget v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 205
    mul-float/2addr v0, v1

    .line 206
    .line 207
    sub-float v1, v11, v0

    .line 208
    int-to-float v2, v3

    .line 209
    .line 210
    div-float v3, v1, v2

    .line 211
    add-float/2addr v0, v11

    .line 212
    .line 213
    div-float v5, v0, v2

    .line 214
    .line 215
    iget-object v6, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 216
    .line 217
    move-object/from16 v0, p0

    .line 218
    .line 219
    move-object/from16 v1, p1

    .line 220
    move v2, v4

    .line 221
    .line 222
    .line 223
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRoundLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 224
    .line 225
    :cond_3
    move/from16 v0, v16

    .line 226
    const/4 v13, 0x0

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_4
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 231
    .line 232
    iget v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    .line 237
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 238
    int-to-float v1, v3

    .line 239
    .line 240
    iget v3, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 241
    mul-float/2addr v1, v3

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    .line 246
    div-float v4, v10, v2

    .line 247
    const/4 v3, 0x0

    .line 248
    .line 249
    iget-object v6, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 250
    .line 251
    move-object/from16 v0, p0

    .line 252
    .line 253
    move-object/from16 v1, p1

    .line 254
    move v2, v4

    .line 255
    move v5, v12

    .line 256
    .line 257
    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRoundLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 259
    .line 260
    iget-boolean v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 261
    .line 262
    if-eqz v0, :cond_6

    .line 263
    .line 264
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateCountLeft:I

    .line 265
    .line 266
    if-lez v0, :cond_5

    .line 267
    .line 268
    add-int/lit8 v0, v0, -0x1

    .line 269
    .line 270
    iput v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateCountLeft:I

    .line 271
    .line 272
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 273
    .line 274
    iget v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateStep:F

    .line 275
    add-float/2addr v0, v1

    .line 276
    .line 277
    iput v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 281
    goto :goto_2

    .line 282
    .line 283
    :cond_5
    iput-boolean v15, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 284
    .line 285
    .line 286
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 287
    move-result-object v0

    .line 288
    .line 289
    .line 290
    const-string/jumbo v1, "vibrator"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    .line 297
    .line 298
    .line 299
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    check-cast v0, Landroid/os/Vibrator;

    .line 302
    .line 303
    const-wide/16 v1, 0x14

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

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
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    move-result p1

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->lastDownX:F

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x2

    .line 42
    .line 43
    if-ne v0, v2, :cond_4

    .line 44
    .line 45
    iget v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->lastDownX:F

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    move-result v2

    .line 50
    sub-float/2addr v0, v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 54
    move-result p1

    .line 55
    .line 56
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->lastDownX:F

    .line 57
    .line 58
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 59
    add-float/2addr p1, v0

    .line 60
    .line 61
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 62
    const/4 v0, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 66
    move-result p1

    .line 67
    .line 68
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    move-result v0

    .line 75
    sub-int/2addr v0, v1

    .line 76
    int-to-float v0, v0

    .line 77
    .line 78
    iget v2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 79
    mul-float/2addr v0, v2

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 83
    move-result p1

    .line 84
    .line 85
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_4
    :goto_2
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 92
    .line 93
    iget v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 94
    div-float/2addr p1, v0

    .line 95
    float-to-double v2, p1

    .line 96
    .line 97
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 98
    add-double/2addr v2, v4

    .line 99
    double-to-int p1, v2

    .line 100
    .line 101
    if-ltz p1, :cond_5

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    move-result v0

    .line 108
    .line 109
    if-ge p1, v0, :cond_5

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    check-cast v0, Lw7/u;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Ljava/lang/Number;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 127
    move-result-wide v2

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->onSpeedUpdateListener:Le8/l;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    :cond_5
    const/16 v0, 0xa

    .line 141
    .line 142
    iput v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateCountLeft:I

    .line 143
    int-to-float p1, p1

    .line 144
    .line 145
    iget v2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 146
    mul-float/2addr p1, v2

    .line 147
    .line 148
    iget v2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 149
    sub-float/2addr p1, v2

    .line 150
    int-to-float v0, v0

    .line 151
    div-float/2addr p1, v0

    .line 152
    .line 153
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateStep:F

    .line 154
    .line 155
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 159
    :goto_3
    return v1
.end method

.method public final setOnSpeedUpdateListener(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Double;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->onSpeedUpdateListener:Le8/l;

    return-void
.end method

.method public final setSpeed(D)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 27
    .line 28
    :cond_0
    check-cast v2, Lw7/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Ljava/lang/Number;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 38
    move-result-wide v4

    .line 39
    sub-double/2addr v4, p1

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 43
    move-result-wide v4

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide v6, 0x3f50624de0000000L    # 0.0010000000474974513

    .line 49
    .line 50
    cmpg-double v2, v4, v6

    .line 51
    .line 52
    if-gez v2, :cond_1

    .line 53
    int-to-float p1, v1

    .line 54
    .line 55
    iget p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 56
    mul-float/2addr p1, p2

    .line 57
    .line 58
    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    return-void

    .line 63
    :cond_1
    move v1, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method
