.class public final Lcom/narvii/editor/cropping/dynamic/RenderRecordView;
.super Landroid/view/View;
.source "RenderRecordView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderRecordView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderRecordView.kt\ncom/narvii/editor/cropping/dynamic/RenderRecordView\n*L\n1#1,74:1\n*E\n"
.end annotation


# static fields
.field private static final COLOR:Ljava/lang/String; = "#F5A623"

.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;

.field private static final RADIUS:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "RenderRecordView"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private maxPoint:I

.field private paint:Landroid/graphics/Paint;

.field private final pointsArray:[I

.field private radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->Companion:Lcom/narvii/editor/cropping/dynamic/RenderRecordView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    new-array v0, p1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 25
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 29
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const-string v0, "#F5A623"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    new-array p2, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 25
    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 29
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const-string p2, "#F5A623"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x64

    new-array p2, p1, [I

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 25
    aput p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    .line 29
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const-string p2, "#F5A623"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, p3}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->dptopx(Landroid/content/Context;F)F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addPoint(I)V
    .locals 2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    if-lt v0, p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final getMaxPoint()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x63

    if-gt v2, v3, :cond_3

    .line 61
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    aget v4, v4, v2

    if-lez v4, :cond_2

    if-eqz v0, :cond_0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->radius:F

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final resetPoint(I)V
    .locals 4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x63

    if-lt v0, p1, :cond_3

    .line 45
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    if-ge p1, v0, :cond_2

    add-int/lit8 v1, p1, 0x1

    if-gt v1, v0, :cond_1

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->pointsArray:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setMaxPoint(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->maxPoint:I

    return-void
.end method
