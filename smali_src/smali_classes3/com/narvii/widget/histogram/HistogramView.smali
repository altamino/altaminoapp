.class public final Lcom/narvii/widget/histogram/HistogramView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
    }
.end annotation


# instance fields
.field private final backgroundLineLevels:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinFormat:Ljava/text/NumberFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dateLabelRect$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final decimalFormatOne$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawConfig$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gestureDetector:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasEndDateMarked:Z

.field private hasStartDateMarked:Z

.field private final hintRect$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hintViewHeight:I

.field private final hintViewWidth:I

.field private itemConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/HistogramItemConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemCount:I

.field private final labelTextSize:F

.field private final labelTextSizeSmall:F

.field private final labelViewSize:I

.field private maxValue:I

.field private final onItemClickListeners$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final percentageAnimator$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedIndex:I

.field private tempItemConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/HistogramItemConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final textRect$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->backgroundLineLevels:[F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramTextSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramTextSizeSmall:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSizeSmall:F

    const/16 p1, 0xa

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramLabelViewSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramHintViewHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramHintViewWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 9
    new-instance p1, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->drawConfig$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;

    .line 10
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->percentageAnimator$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$textRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$textRect$2;

    .line 11
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->textRect$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$hintRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$hintRect$2;

    .line 12
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintRect$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;

    .line 13
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->dateLabelRect$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;

    .line 14
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->decimalFormatOne$delegate:Lw7/m;

    .line 15
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const-string v0, "getInstance(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    sget-object v0, Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;

    .line 16
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->onItemClickListeners$delegate:Lw7/m;

    .line 17
    new-instance v0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    .line 18
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p1, v1}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const/4 v1, 0x2

    .line 19
    invoke-virtual {p1, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 20
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureDetector:Landroid/view/GestureDetector;

    .line 21
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 22
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/narvii/widget/histogram/a;

    invoke-direct {v0, p0}, Lcom/narvii/widget/histogram/a;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->backgroundLineLevels:[F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramTextSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramTextSizeSmall:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSizeSmall:F

    const/16 p1, 0xa

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramLabelViewSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramHintViewHeight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramHintViewWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 33
    new-instance p1, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->drawConfig$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;

    .line 34
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->percentageAnimator$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$textRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$textRect$2;

    .line 35
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->textRect$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$hintRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$hintRect$2;

    .line 36
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintRect$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;

    .line 37
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->dateLabelRect$delegate:Lw7/m;

    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;

    .line 38
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->decimalFormatOne$delegate:Lw7/m;

    .line 39
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const-string p2, "getInstance(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    sget-object p2, Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;

    .line 40
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView;->onItemClickListeners$delegate:Lw7/m;

    .line 41
    new-instance p2, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    iput-object p2, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    .line 42
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const/4 v0, 0x2

    .line 43
    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 44
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureDetector:Landroid/view/GestureDetector;

    .line 45
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 46
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/narvii/widget/histogram/a;

    invoke-direct {p2, p0}, Lcom/narvii/widget/histogram/a;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final _init_$lambda$1(Lcom/narvii/widget/histogram/HistogramView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "animation"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    check-cast p1, Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->setPercentage(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/widget/histogram/HistogramView;->invalidate()V

    .line 37
    return-void
.end method

.method public static synthetic a(Lcom/narvii/widget/histogram/HistogramView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->_init_$lambda$1(Lcom/narvii/widget/histogram/HistogramView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getItemConfigs$p(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLabelTextSize$p(Lcom/narvii/widget/histogram/HistogramView;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    .line 3
    return p0
.end method

.method public static final synthetic access$getOnItemClickListeners(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getOnItemClickListeners()Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 3
    return-void
.end method

.method private final drawBackgroundLines(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 5
    int-to-float v1, v1

    .line 6
    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    div-float/2addr v1, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    move-result v4

    .line 17
    sub-int/2addr v3, v4

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    move-result v4

    .line 22
    sub-int/2addr v3, v4

    .line 23
    .line 24
    iget v4, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 25
    sub-int/2addr v3, v4

    .line 26
    int-to-float v3, v3

    .line 27
    sub-float/2addr v3, v1

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    move-result v4

    .line 38
    int-to-float v4, v4

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 43
    move-result v4

    .line 44
    int-to-float v4, v4

    .line 45
    .line 46
    iget v5, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 47
    int-to-float v5, v5

    .line 48
    add-float/2addr v4, v5

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 58
    move-result v5

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 62
    move-result v6

    .line 63
    sub-int/2addr v5, v6

    .line 64
    .line 65
    iget v6, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 66
    :goto_1
    sub-int/2addr v5, v6

    .line 67
    int-to-float v5, v5

    .line 68
    move v11, v5

    .line 69
    goto :goto_2

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 73
    move-result v5

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 77
    move-result v6

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 88
    move-result v5

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 92
    move-result v6

    .line 93
    sub-int/2addr v5, v6

    .line 94
    .line 95
    iget v6, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 96
    sub-int/2addr v5, v6

    .line 97
    :goto_3
    move v12, v5

    .line 98
    goto :goto_4

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 102
    move-result v5

    .line 103
    goto :goto_3

    .line 104
    .line 105
    .line 106
    :goto_4
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 107
    move-result v5

    .line 108
    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 113
    move-result v5

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 117
    move-result v6

    .line 118
    sub-int/2addr v5, v6

    .line 119
    :goto_5
    move v13, v5

    .line 120
    goto :goto_6

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 124
    move-result v5

    .line 125
    .line 126
    iget v6, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 127
    add-int/2addr v5, v6

    .line 128
    goto :goto_5

    .line 129
    .line 130
    :goto_6
    iget v5, v0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 131
    .line 132
    if-nez v5, :cond_4

    .line 133
    .line 134
    const/16 v5, 0x64

    .line 135
    :cond_4
    move v14, v5

    .line 136
    .line 137
    iget-object v15, v0, Lcom/narvii/widget/histogram/HistogramView;->backgroundLineLevels:[F

    .line 138
    array-length v10, v15

    .line 139
    const/4 v5, 0x0

    .line 140
    move v9, v5

    .line 141
    .line 142
    :goto_7
    if-ge v9, v10, :cond_6

    .line 143
    .line 144
    aget v16, v15, v9

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 148
    move-result v5

    .line 149
    int-to-float v5, v5

    .line 150
    add-float/2addr v5, v1

    .line 151
    .line 152
    mul-float v8, v3, v16

    .line 153
    .line 154
    add-float v7, v5, v8

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 158
    move-result v5

    .line 159
    int-to-float v5, v5

    .line 160
    add-float/2addr v5, v1

    .line 161
    .line 162
    add-float v17, v5, v8

    .line 163
    .line 164
    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 166
    move-result-object v5

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLinePaint()Landroid/graphics/Paint;

    .line 170
    move-result-object v18

    .line 171
    .line 172
    move-object/from16 v5, p1

    .line 173
    move v6, v4

    .line 174
    move v2, v8

    .line 175
    move v8, v11

    .line 176
    .line 177
    move/from16 v19, v9

    .line 178
    .line 179
    move/from16 v9, v17

    .line 180
    .line 181
    move/from16 v17, v10

    .line 182
    .line 183
    move-object/from16 v10, v18

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    .line 188
    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    .line 190
    move-result-object v5

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 194
    move-result v6

    .line 195
    float-to-int v7, v2

    .line 196
    add-int/2addr v6, v7

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 200
    move-result v7

    .line 201
    int-to-float v7, v7

    .line 202
    add-float/2addr v7, v2

    .line 203
    .line 204
    iget v2, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 205
    int-to-float v2, v2

    .line 206
    add-float/2addr v7, v2

    .line 207
    float-to-int v2, v7

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v12, v6, v13, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    .line 212
    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 217
    .line 218
    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    .line 220
    move-result-object v5

    .line 221
    .line 222
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 223
    add-int/2addr v2, v5

    .line 224
    .line 225
    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 227
    move-result-object v5

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 231
    move-result-object v5

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 235
    move-result-object v5

    .line 236
    .line 237
    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 238
    sub-int/2addr v2, v5

    .line 239
    .line 240
    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 242
    move-result-object v5

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 246
    move-result-object v5

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 250
    move-result-object v5

    .line 251
    .line 252
    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 253
    sub-int/2addr v2, v5

    .line 254
    int-to-float v2, v2

    .line 255
    .line 256
    const/high16 v5, 0x40000000    # 2.0f

    .line 257
    div-float/2addr v2, v5

    .line 258
    int-to-float v6, v14

    .line 259
    const/4 v7, 0x1

    .line 260
    int-to-float v7, v7

    .line 261
    .line 262
    sub-float v7, v7, v16

    .line 263
    mul-float/2addr v6, v7

    .line 264
    .line 265
    .line 266
    const v7, 0x47c34f80    # 99999.0f

    .line 267
    .line 268
    cmpl-float v7, v6, v7

    .line 269
    .line 270
    if-lez v7, :cond_5

    .line 271
    .line 272
    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 274
    move-result-object v7

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 278
    move-result-object v7

    .line 279
    .line 280
    iget v8, v0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSizeSmall:F

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 284
    goto :goto_8

    .line 285
    .line 286
    .line 287
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 288
    move-result-object v7

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 292
    move-result-object v7

    .line 293
    .line 294
    iget v8, v0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    .line 299
    .line 300
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDecimalFormatOne()Ljava/text/DecimalFormat;

    .line 301
    move-result-object v7

    .line 302
    .line 303
    .line 304
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 305
    move-result-object v6

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    move-result-object v6

    .line 310
    .line 311
    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    .line 313
    move-result-object v7

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    .line 317
    move-result v7

    .line 318
    int-to-float v7, v7

    .line 319
    .line 320
    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 322
    move-result-object v8

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 326
    move-result-object v8

    .line 327
    .line 328
    move-object/from16 v9, p1

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 332
    .line 333
    add-int/lit8 v2, v19, 0x1

    .line 334
    move v9, v2

    .line 335
    move v2, v5

    .line 336
    .line 337
    move/from16 v10, v17

    .line 338
    .line 339
    goto/16 :goto_7

    .line 340
    :cond_6
    return-void
.end method

.method private final drawDateLabel(Landroid/graphics/Canvas;Lcom/narvii/widget/histogram/HistogramItemConfig;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p2, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    iget v4, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 15
    add-int/2addr v4, v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 31
    add-int/2addr v0, v1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 46
    sub-int/2addr v0, v1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 61
    sub-int/2addr v0, v1

    .line 62
    int-to-float v0, v0

    .line 63
    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    .line 65
    div-float/2addr v0, v1

    .line 66
    .line 67
    const-string v1, "M/d"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v1}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 84
    :goto_0
    int-to-float v1, v1

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method private final drawPillars(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getCurPercentage()F

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v5

    .line 22
    .line 23
    if-eqz v5, :cond_6

    .line 24
    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v6

    .line 30
    .line 31
    check-cast v6, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 32
    .line 33
    if-eqz v6, :cond_5

    .line 34
    .line 35
    iget v7, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 36
    const/4 v8, 0x1

    .line 37
    .line 38
    if-ne v4, v7, :cond_0

    .line 39
    move v7, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v7, v3

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {v6, v0, v7}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getRectToDraw(FZ)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    const-string v9, "getRectToDraw(...)"

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    iget-boolean v9, p0, Lcom/narvii/widget/histogram/HistogramView;->hasStartDateMarked:Z

    .line 53
    .line 54
    if-nez v9, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, v6}, Lcom/narvii/widget/histogram/HistogramView;->drawDateLabel(Landroid/graphics/Canvas;Lcom/narvii/widget/histogram/HistogramItemConfig;)V

    .line 58
    .line 59
    iput-boolean v8, p0, Lcom/narvii/widget/histogram/HistogramView;->hasStartDateMarked:Z

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_1
    iget-boolean v9, p0, Lcom/narvii/widget/histogram/HistogramView;->hasEndDateMarked:Z

    .line 63
    .line 64
    if-nez v9, :cond_2

    .line 65
    .line 66
    iget-object v9, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v9

    .line 71
    sub-int/2addr v9, v8

    .line 72
    .line 73
    if-ne v4, v9, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v6}, Lcom/narvii/widget/histogram/HistogramView;->drawDateLabel(Landroid/graphics/Canvas;Lcom/narvii/widget/histogram/HistogramItemConfig;)V

    .line 77
    .line 78
    iput-boolean v8, p0, Lcom/narvii/widget/histogram/HistogramView;->hasEndDateMarked:Z

    .line 79
    .line 80
    :cond_2
    :goto_2
    iget-object v8, v7, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    .line 81
    .line 82
    const-string v9, "rectToDraw"

    .line 83
    .line 84
    .line 85
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    array-length v9, v8

    .line 87
    move v10, v3

    .line 88
    .line 89
    :goto_3
    if-ge v10, v9, :cond_4

    .line 90
    .line 91
    aget-object v11, v8, v10

    .line 92
    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 100
    move-result-object v12

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getPillarPaint()Landroid/graphics/Paint;

    .line 104
    move-result-object v12

    .line 105
    .line 106
    iget-object v13, v7, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    .line 107
    .line 108
    aget v13, v13, v10

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 115
    move-result-object v12

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getPillarPaint()Landroid/graphics/Paint;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    .line 124
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_4
    iget v7, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 128
    .line 129
    if-ne v4, v7, :cond_5

    .line 130
    .line 131
    const/high16 v4, 0x3f800000    # 1.0f

    .line 132
    .line 133
    cmpg-float v4, v0, v4

    .line 134
    .line 135
    if-nez v4, :cond_5

    .line 136
    move-object v2, v6

    .line 137
    :cond_5
    move v4, v5

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_6
    if-eqz v2, :cond_7

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    iget-object v1, v2, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 150
    move-result v1

    .line 151
    .line 152
    iget v3, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 153
    .line 154
    div-int/lit8 v3, v3, 0x2

    .line 155
    sub-int/2addr v1, v3

    .line 156
    .line 157
    iget-object v3, v2, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 158
    .line 159
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    iget v4, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    .line 162
    sub-int/2addr v3, v4

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    const/high16 v5, 0x40a00000    # 5.0f

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 172
    move-result v4

    .line 173
    sub-int/2addr v3, v4

    .line 174
    .line 175
    iget-object v4, v2, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 179
    move-result v4

    .line 180
    .line 181
    iget v6, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 182
    .line 183
    div-int/lit8 v6, v6, 0x2

    .line 184
    add-int/2addr v4, v6

    .line 185
    .line 186
    iget-object v6, v2, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 187
    .line 188
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 192
    move-result-object v7

    .line 193
    .line 194
    .line 195
    invoke-static {v7, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 196
    move-result v5

    .line 197
    sub-int/2addr v6, v5

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    sget v1, Lcom/narvii/lib/R$id;->hint_date:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    check-cast v0, Landroid/widget/TextView;

    .line 217
    .line 218
    const-string v1, "MMM d"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    sget v1, Lcom/narvii/lib/R$id;->hint_coins:I

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    check-cast v0, Landroid/widget/TextView;

    .line 242
    .line 243
    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 244
    .line 245
    iget-wide v2, v2, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 246
    double-to-int v2, v2

    .line 247
    .line 248
    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v2

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 268
    .line 269
    const/high16 v2, 0x40000000    # 2.0f

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 273
    move-result v1

    .line 274
    .line 275
    iget v3, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    .line 276
    .line 277
    .line 278
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 279
    move-result v2

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 283
    .line 284
    .line 285
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    .line 290
    move-result-object v0

    .line 291
    .line 292
    .line 293
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 297
    .line 298
    .line 299
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 300
    move-result-object v2

    .line 301
    .line 302
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 303
    .line 304
    .line 305
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 306
    move-result-object v3

    .line 307
    .line 308
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 309
    .line 310
    .line 311
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 312
    move-result-object v4

    .line 313
    .line 314
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    .line 322
    .line 323
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 327
    int-to-float v0, v0

    .line 328
    .line 329
    .line 330
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 334
    int-to-float v1, v1

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    .line 339
    .line 340
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 341
    move-result-object v0

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    .line 345
    move-result-object v0

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 352
    :cond_7
    return-void
.end method

.method private final getDateLabelRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->dateLabelRect$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Rect;

    .line 9
    return-object v0
.end method

.method private final getDecimalFormatOne()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->decimalFormatOne$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/text/DecimalFormat;

    .line 9
    return-object v0
.end method

.method private final getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->drawConfig$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    .line 9
    return-object v0
.end method

.method private final getFixedMaxValue(I)I
    .locals 4

    .line 1
    .line 2
    if-gtz p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    const/16 v0, 0xa

    .line 7
    .line 8
    if-gt p1, v0, :cond_1

    .line 9
    move p1, v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_1
    const/16 v1, 0x64

    .line 13
    .line 14
    if-ge p1, v1, :cond_2

    .line 15
    .line 16
    div-int/lit8 p1, p1, 0xa

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    mul-int/2addr p1, v0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_2
    if-ne p1, v1, :cond_3

    .line 23
    move p1, v1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_3
    const/16 v0, 0x3e8

    .line 27
    .line 28
    if-ge p1, v0, :cond_4

    .line 29
    .line 30
    div-int/lit8 p1, p1, 0x64

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    mul-int/2addr p1, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    int-to-double v0, p1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 43
    move-result-wide v0

    .line 44
    .line 45
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 46
    sub-double/2addr v0, v2

    .line 47
    .line 48
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 52
    move-result-wide v0

    .line 53
    double-to-int v0, v0

    .line 54
    .line 55
    rem-int v1, p1, v0

    .line 56
    .line 57
    if-nez v1, :cond_5

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    div-int/2addr p1, v0

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    mul-int/2addr p1, v0

    .line 63
    :goto_0
    return p1
.end method

.method private final getHintRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->hintRect$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Rect;

    .line 9
    return-object v0
.end method

.method private final getOnItemClickListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/OnItemClickListener;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->onItemClickListeners$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    return-object v0
.end method

.method private final getPercentageAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->percentageAnimator$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 14
    return-object v0
.end method

.method private final getTextRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->textRect$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Rect;

    .line 9
    return-object v0
.end method

.method private final prepareRects(IIII)V
    .locals 10

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
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 18
    sub-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 26
    add-int/2addr v0, v1

    .line 27
    :goto_0
    sub-int/2addr p3, p1

    .line 28
    int-to-double v1, p3

    .line 29
    .line 30
    iget p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 31
    .line 32
    add-int/lit8 p3, p1, -0x1

    .line 33
    int-to-double v3, p3

    .line 34
    .line 35
    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    .line 36
    mul-double/2addr v3, v5

    .line 37
    const/4 p3, 0x1

    .line 38
    int-to-double v5, p3

    .line 39
    add-double/2addr v3, v5

    .line 40
    div-double/2addr v1, v3

    .line 41
    .line 42
    const/high16 p3, 0x3f000000    # 0.5f

    .line 43
    float-to-double v3, p3

    .line 44
    add-double/2addr v1, v3

    .line 45
    double-to-int v1, v1

    .line 46
    .line 47
    div-int/lit8 v2, v1, 0x2

    .line 48
    int-to-float v2, v2

    .line 49
    add-float/2addr v2, p3

    .line 50
    float-to-int p3, v2

    .line 51
    .line 52
    iget v2, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 53
    int-to-float v2, v2

    .line 54
    .line 55
    const/high16 v3, 0x40000000    # 2.0f

    .line 56
    div-float/2addr v2, v3

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    :goto_1
    if-ge v3, p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v5, Landroid/graphics/Rect;

    .line 70
    .line 71
    sub-int v6, v0, v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 75
    move-result v7

    .line 76
    int-to-float v7, v7

    .line 77
    add-float/2addr v7, v2

    .line 78
    float-to-int v7, v7

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 82
    move-result v8

    .line 83
    add-int/2addr v8, p4

    .line 84
    sub-int/2addr v8, p2

    .line 85
    .line 86
    iget v9, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 87
    sub-int/2addr v8, v9

    .line 88
    .line 89
    .line 90
    invoke-direct {v5, v6, v7, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    add-int v4, v1, p3

    .line 96
    sub-int/2addr v0, v4

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_1
    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    .line 100
    .line 101
    new-instance v5, Landroid/graphics/Rect;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 105
    move-result v6

    .line 106
    int-to-float v6, v6

    .line 107
    add-float/2addr v6, v2

    .line 108
    float-to-int v6, v6

    .line 109
    .line 110
    add-int v7, v0, v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 114
    move-result v8

    .line 115
    add-int/2addr v8, p4

    .line 116
    sub-int/2addr v8, p2

    .line 117
    .line 118
    iget v9, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 119
    sub-int/2addr v8, v9

    .line 120
    .line 121
    .line 122
    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    add-int v4, v1, p3

    .line 128
    add-int/2addr v0, v4

    .line 129
    .line 130
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    return-void
.end method

.method private final processItemConfigs(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/HistogramItemConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 8
    move v2, v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    add-int/lit8 v3, v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    check-cast v4, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 23
    .line 24
    iget-wide v4, v4, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 25
    .line 26
    iget v6, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 27
    int-to-double v6, v6

    .line 28
    .line 29
    cmpl-double v6, v4, v6

    .line 30
    .line 31
    if-ltz v6, :cond_0

    .line 32
    .line 33
    iput v2, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 34
    .line 35
    const/high16 v2, 0x3f000000    # 0.5f

    .line 36
    float-to-double v6, v2

    .line 37
    add-double/2addr v4, v6

    .line 38
    double-to-int v2, v4

    .line 39
    .line 40
    iput v2, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 41
    :cond_0
    move v2, v3

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    const/4 v2, -0x1

    .line 48
    .line 49
    iput v2, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-direct {p0, v1}, Lcom/narvii/widget/histogram/HistogramView;->getFixedMaxValue(I)I

    .line 53
    move-result v1

    .line 54
    .line 55
    iput v1, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v1

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 67
    .line 68
    if-le v1, v2, :cond_3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v2

    .line 74
    .line 75
    :goto_1
    if-ge v0, v2, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v1

    .line 80
    .line 81
    add-int/lit8 v1, v1, -0x1

    .line 82
    sub-int/2addr v1, v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    const-string v3, "get(...)"

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v1, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 94
    .line 95
    new-instance v3, Landroid/graphics/Rect;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    .line 98
    .line 99
    iget v5, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 100
    .line 101
    add-int/lit8 v5, v5, -0x1

    .line 102
    sub-int/2addr v5, v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    check-cast v4, Landroid/graphics/Rect;

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    iget v4, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 114
    .line 115
    if-nez v4, :cond_4

    .line 116
    .line 117
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 121
    int-to-double v4, v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 125
    move-result v6

    .line 126
    int-to-double v6, v6

    .line 127
    .line 128
    iget-wide v8, v1, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 129
    .line 130
    iget v10, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 131
    int-to-float v10, v10

    .line 132
    .line 133
    const/high16 v11, 0x3f800000    # 1.0f

    .line 134
    mul-float/2addr v10, v11

    .line 135
    float-to-double v10, v10

    .line 136
    div-double/2addr v8, v10

    .line 137
    mul-double/2addr v6, v8

    .line 138
    sub-double/2addr v4, v6

    .line 139
    double-to-int v4, v4

    .line 140
    .line 141
    :goto_2
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Lcom/narvii/widget/histogram/HistogramItemConfig;->setDisplayRect(Landroid/graphics/Rect;)V

    .line 145
    .line 146
    iget-object v3, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/collections/t;->X(Ljava/util/List;)V

    .line 158
    return-void
.end method


# virtual methods
.method public final addOnItemClickListener(Lcom/narvii/widget/histogram/OnItemClickListener;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/histogram/OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getOnItemClickListeners()Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public final hasData()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/histogram/HistogramView;->hasStartDateMarked:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/narvii/widget/histogram/HistogramView;->hasEndDateMarked:Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    :cond_0
    return-void
.end method

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
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->drawBackgroundLines(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->drawPillars(Landroid/graphics/Canvas;)V

    .line 12
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 7
    move-result p1

    .line 8
    add-int/2addr p2, p1

    .line 9
    .line 10
    iget p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 11
    add-int/2addr p2, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 15
    move-result p1

    .line 16
    add-int/2addr p3, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result p1

    .line 21
    sub-int/2addr p4, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    move-result p1

    .line 26
    sub-int/2addr p5, p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/widget/histogram/HistogramView;->prepareRects(IIII)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->tempItemConfigs:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result p2

    .line 38
    .line 39
    if-lez p2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    move-result p2

    .line 44
    .line 45
    if-lez p2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result p2

    .line 50
    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->processItemConfigs(Ljava/util/ArrayList;)V

    .line 55
    const/4 p1, 0x0

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->tempItemConfigs:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    :cond_0
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
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureDetector:Landroid/view/GestureDetector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 24
    :goto_1
    return p1
.end method

.method public final removeOnItemClickListener(Lcom/narvii/widget/histogram/OnItemClickListener;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/histogram/OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getOnItemClickListeners()Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public final setItemConfigs(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/HistogramItemConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemConfigs"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->processItemConfigs(Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->tempItemConfigs:Ljava/util/ArrayList;

    .line 32
    return-void
.end method
