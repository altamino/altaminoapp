.class public final Lcom/narvii/master/home/widgets/AdsModuleIndicator;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INDICATOR_INTERVAL:F = 5.0f

.field private static final INDICATOR_SIZE:F = 3.0f

.field private static final SELECTED_COLOR:I

.field private static final UNSELECTED_COLOR:I


# instance fields
.field private indexCount:I

.field private final indicatorInterval:F

.field private final indicatorSize:F

.field private selectedIndex:I

.field private final selectedPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unSelectedPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->Companion:Lcom/narvii/master/home/widgets/AdsModuleIndicator$Companion;

    .line 9
    .line 10
    const-string v0, "#80FFFFFF"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    sput v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    .line 17
    .line 18
    const-string v0, "#FFFFFF"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    sput v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    .line 6
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget p1, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 16
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget p1, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    .line 20
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 27
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    sget p3, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->SELECTED_COLOR:I

    .line 28
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x1

    .line 29
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget p1, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->UNSELECTED_COLOR:I

    .line 31
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final getIndexCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    return v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
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
    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    .line 19
    int-to-float v3, v2

    .line 20
    .line 21
    iget v4, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 22
    mul-float/2addr v3, v4

    .line 23
    sub-float/2addr v0, v3

    .line 24
    .line 25
    add-int/lit8 v3, v2, 0x1

    .line 26
    int-to-float v3, v3

    .line 27
    .line 28
    iget v4, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 29
    mul-float/2addr v3, v4

    .line 30
    sub-float/2addr v0, v3

    .line 31
    const/4 v3, 0x2

    .line 32
    int-to-float v3, v3

    .line 33
    div-float/2addr v0, v3

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    :goto_0
    if-ge v3, v2, :cond_2

    .line 37
    .line 38
    mul-int/lit8 v4, v3, 0x2

    .line 39
    sub-int/2addr v4, v1

    .line 40
    int-to-float v4, v4

    .line 41
    .line 42
    iget v5, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 43
    mul-float/2addr v4, v5

    .line 44
    add-float/2addr v4, v0

    .line 45
    .line 46
    add-int/lit8 v5, v3, 0x1

    .line 47
    int-to-float v6, v5

    .line 48
    .line 49
    iget v7, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorInterval:F

    .line 50
    mul-float/2addr v6, v7

    .line 51
    add-float/2addr v4, v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v6

    .line 56
    int-to-float v6, v6

    .line 57
    .line 58
    const/high16 v7, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v6, v7

    .line 60
    .line 61
    iget v7, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indicatorSize:F

    .line 62
    .line 63
    iget v8, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    .line 64
    .line 65
    if-ne v3, v8, :cond_1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    iget-object v3, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->unSelectedPaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p1, v4, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    move v3, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method public final setIndexCount(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->indexCount:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->selectedIndex:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method
