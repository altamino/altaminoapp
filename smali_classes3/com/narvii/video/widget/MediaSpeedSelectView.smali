.class public final Lcom/narvii/video/widget/MediaSpeedSelectView;
.super Landroid/widget/FrameLayout;
.source "MediaSpeedSelectView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSpeedSelectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSpeedSelectView.kt\ncom/narvii/video/widget/MediaSpeedSelectView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1596#2,3:166\n1596#2,3:169\n1313#2:172\n1382#2,3:173\n1313#2:176\n1382#2,3:177\n1313#2:180\n1382#2,3:181\n*E\n*S KotlinDebug\n*F\n+ 1 MediaSpeedSelectView.kt\ncom/narvii/video/widget/MediaSpeedSelectView\n*L\n72#1,3:166\n90#1,3:169\n50#1:172\n50#1,3:173\n50#1:176\n50#1,3:177\n50#1:180\n50#1,3:181\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animateCountLeft:I

.field private animateStep:F

.field private final backgroundColor:I

.field private currentOffset:F

.field private final cursorColor:I

.field private final dp1:F

.field private final drawRectF:Landroid/graphics/RectF;

.field private isAnimating:Z

.field private lastDownX:F

.field private onSpeedUpdateListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final scaleColor:I

.field private final scaleInterval:F

.field private final scaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scaleTextWidthHalf:F

.field private final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    new-array v0, p1, [Lkotlin/Pair;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 50
    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v3, 0x2

    const/16 v4, 0x28

    invoke-direct {v1, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    int-to-double v6, v5

    int-to-double v8, v4

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    rem-int/lit8 v5, v5, 0x5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p1, "#FF222222"

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    const-string p1, "#CCFFFFFF"

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    const-string p1, "#CCD8D8D8"

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    const-string p1, "#FFFFBE17"

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 64
    iget-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    const/16 v1, 0xb

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    const-string v0, "0.1x"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    .line 66
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    int-to-float v0, v4

    mul-float p1, p1, v0

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 68
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    new-array p2, p1, [Lkotlin/Pair;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 50
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v2, 0x2

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    int-to-double v5, v4

    int-to-double v7, v3

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 56
    iget-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p1, "#FF222222"

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    const-string p1, "#CCFFFFFF"

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    const-string p1, "#CCD8D8D8"

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    const-string p1, "#FFFFBE17"

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 64
    iget-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    const/16 v0, 0xb

    int-to-float v0, v0

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    const-string p2, "0.1x"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    .line 66
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    int-to-float p2, v3

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 68
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    new-array p2, p1, [Lkotlin/Pair;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 50
    new-instance p3, Lkotlin/ranges/IntRange;

    const/4 v1, 0x2

    const/16 v2, 0x28

    invoke-direct {p3, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, v2

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    .line 56
    iget-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p1, "#FF222222"

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    const-string p1, "#CCFFFFFF"

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    const-string p1, "#CCD8D8D8"

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    const-string p1, "#FFFFBE17"

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    .line 64
    iget-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    const/16 p3, 0xb

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    const-string p2, "0.1x"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    .line 66
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    int-to-float p2, v2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private final drawRoundLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    sub-float/2addr p2, v0

    sub-float/2addr p3, v0

    add-float/2addr p4, v0

    add-float/2addr p5, v0

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    iget-object p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v0, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getOnSpeedUpdateListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->onSpeedUpdateListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "canvas"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    .line 86
    iget-object v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    int-to-float v10, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v2, v10, v0

    int-to-float v11, v9

    mul-float v12, v11, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v2, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 90
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 170
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v15, v0, 0x1

    if-ltz v0, :cond_4

    check-cast v1, Lkotlin/Pair;

    div-float v2, v10, v2

    int-to-float v0, v0

    .line 91
    iget v4, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    mul-float v0, v0, v4

    add-float/2addr v2, v0

    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    sub-float v4, v2, v0

    .line 93
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    add-float v2, v4, v0

    int-to-float v5, v14

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sub-float v0, v4, v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    goto/16 :goto_2

    .line 97
    :cond_1
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0xf

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget v5, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->textColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v14

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1fx"

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget v5, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleTextWidthHalf:F

    sub-float v5, v4, v5

    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    int-to-float v14, v2

    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    mul-float v14, v14, v2

    sub-float/2addr v6, v14

    iget-object v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    :cond_2
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0xf

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    :goto_1
    int-to-float v0, v2

    iget v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    mul-float v0, v0, v1

    sub-float v1, v11, v0

    int-to-float v2, v3

    div-float v3, v1, v2

    add-float/2addr v0, v11

    div-float v5, v0, v2

    .line 106
    iget-object v6, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRoundLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :goto_2
    move v0, v15

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 170
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    .line 111
    :cond_5
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->cursorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    int-to-float v1, v3

    iget v3, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->dp1:F

    mul-float v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float v4, v10, v2

    const/4 v3, 0x0

    .line 113
    iget-object v6, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/widget/MediaSpeedSelectView;->drawRoundLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 115
    iget-boolean v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    if-eqz v0, :cond_8

    .line 116
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateCountLeft:I

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 117
    iput v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateCountLeft:I

    .line 118
    iget v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    iget v1, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateStep:F

    add-float/2addr v0, v1

    iput v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, v7, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 123
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_3

    .line 123
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

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

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->lastDownX:F

    goto/16 :goto_4

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 138
    iget v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->lastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->lastDownX:F

    .line 140
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 141
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 142
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    mul-float v0, v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_4

    .line 146
    :cond_4
    :goto_2
    iget p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    iget v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    div-float/2addr p1, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 147
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez p1, :cond_5

    goto :goto_3

    :cond_5
    if-le v0, p1, :cond_6

    .line 148
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 149
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->onSpeedUpdateListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_6
    :goto_3
    const/16 v0, 0xa

    .line 151
    iput v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateCountLeft:I

    int-to-float p1, p1

    .line 152
    iget v2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    mul-float p1, p1, v2

    iget v2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    sub-float/2addr p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->animateStep:F

    .line 153
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->isAnimating:Z

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_4
    return v1
.end method

.method public final setOnSpeedUpdateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->onSpeedUpdateListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSpeed(D)V
    .locals 8

    .line 72
    iget-object v0, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleList:Ljava/util/List;

    .line 167
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lkotlin/Pair;

    .line 73
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const v2, 0x3a83126f    # 0.001f

    float-to-double v6, v2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    int-to-float p1, v1

    .line 74
    iget p2, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->scaleInterval:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaSpeedSelectView;->currentOffset:F

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
