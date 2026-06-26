.class public final Lcom/narvii/master/home/widgets/AdsModuleIndicator;
.super Landroid/view/View;
.source "AdsModuleIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;

.field private static final INDICATOR_INTERVAL:F = 5.0f

.field private static final INDICATOR_SIZE:F = 3.0f

.field private static final SELECTED_COLOR:I

.field private static final UNSELECTED_COLOR:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private indexCount:I

.field private final indicatorInterval:F

.field private final indicatorSize:F

.field private selectedIndex:I

.field private final selectedPaint:Landroid/graphics/Paint;

.field private final unSelectedPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->Companion:Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;

    const-string v0, "#80FFFFFF"

    .line 60
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    const-string v0, "#FFFFFF"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    .line 38
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    sget v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    .line 38
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    sget p2, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    .line 38
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    sget p2, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget p3, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getIndexCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    return v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 48
    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    int-to-float v3, v2

    iget v4, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v1

    int-to-float v4, v4

    .line 53
    iget v5, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    mul-float v4, v4, v5

    add-float/2addr v4, v0

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    iget v7, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 55
    iget v7, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    iget v8, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v4, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v3, v5

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final setIndexCount(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 1

    .line 30
    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 33
    :cond_0
    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
