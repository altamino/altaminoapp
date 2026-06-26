.class public final Lcom/narvii/widget/histogram/HistogramView;
.super Landroid/view/View;
.source "HistogramView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistogramView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistogramView.kt\ncom/narvii/widget/histogram/HistogramView\n*L\n1#1,334:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final backgroundLineLevels:[F

.field private final coinFormat:Ljava/text/NumberFormat;

.field private final dateLabelRect$delegate:Lkotlin/Lazy;

.field private final decimalFormatOne$delegate:Lkotlin/Lazy;

.field private final drawConfig$delegate:Lkotlin/Lazy;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

.field private hasEndDateMarked:Z

.field private hasStartDateMarked:Z

.field private final hintRect$delegate:Lkotlin/Lazy;

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
.end field

.field private final itemCount:I

.field private final labelTextSize:F

.field private final labelTextSizeSmall:F

.field private final labelViewSize:I

.field private maxValue:I

.field private final onItemClickListeners$delegate:Lkotlin/Lazy;

.field private final percentageAnimator$delegate:Lkotlin/Lazy;

.field private rectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
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
.end field

.field private final textRect$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "drawConfig"

    const-string v4, "getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "percentageAnimator"

    const-string v4, "getPercentageAnimator()Landroid/animation/ValueAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "textRect"

    const-string v4, "getTextRect()Landroid/graphics/Rect;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "hintRect"

    const-string v4, "getHintRect()Landroid/graphics/Rect;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dateLabelRect"

    const-string v4, "getDateLabelRect()Landroid/graphics/Rect;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "decimalFormatOne"

    const-string v4, "getDecimalFormatOne()Ljava/text/DecimalFormat;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onItemClickListeners"

    const-string v4, "getOnItemClickListeners()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    new-array p1, p1, [F

    .line 32
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->backgroundLineLevels:[F

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramTextSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramTextSizeSmall:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSizeSmall:F

    const/16 p1, 0xa

    .line 36
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramLabelViewSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramHintViewHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->histogramHintViewWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 45
    new-instance p1, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->drawConfig$delegate:Lkotlin/Lazy;

    .line 46
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->percentageAnimator$delegate:Lkotlin/Lazy;

    .line 47
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$textRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$textRect$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->textRect$delegate:Lkotlin/Lazy;

    .line 48
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$hintRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$hintRect$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintRect$delegate:Lkotlin/Lazy;

    .line 49
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->dateLabelRect$delegate:Lkotlin/Lazy;

    .line 50
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->decimalFormatOne$delegate:Lkotlin/Lazy;

    .line 51
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const-string v0, "NumberFormat.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    .line 53
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->onItemClickListeners$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    .line 91
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 93
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureDetector:Landroid/view/GestureDetector;

    .line 94
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 95
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/narvii/widget/histogram/HistogramView$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/histogram/HistogramView$1;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

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

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    new-array p1, p1, [F

    .line 32
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->backgroundLineLevels:[F

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramTextSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramTextSizeSmall:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSizeSmall:F

    const/16 p1, 0xa

    .line 36
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramLabelViewSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramHintViewHeight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->histogramHintViewWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    .line 45
    new-instance p1, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->drawConfig$delegate:Lkotlin/Lazy;

    .line 46
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->percentageAnimator$delegate:Lkotlin/Lazy;

    .line 47
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$textRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$textRect$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->textRect$delegate:Lkotlin/Lazy;

    .line 48
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$hintRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$hintRect$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintRect$delegate:Lkotlin/Lazy;

    .line 49
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$dateLabelRect$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->dateLabelRect$delegate:Lkotlin/Lazy;

    .line 50
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$decimalFormatOne$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->decimalFormatOne$delegate:Lkotlin/Lazy;

    .line 51
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const-string p2, "NumberFormat.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    .line 53
    sget-object p1, Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$onItemClickListeners$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->onItemClickListeners$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    .line 91
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p1, p2}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->coinFormat:Ljava/text/NumberFormat;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 93
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureListener:Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureDetector:Landroid/view/GestureDetector;

    .line 94
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 95
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/narvii/widget/histogram/HistogramView$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/histogram/HistogramView$1;-><init>(Lcom/narvii/widget/histogram/HistogramView;)V

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

.method public static final synthetic access$getDrawConfig$p(Lcom/narvii/widget/histogram/HistogramView;)Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemConfigs$p(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getLabelTextSize$p(Lcom/narvii/widget/histogram/HistogramView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    return p0
.end method

.method public static final synthetic access$getOnItemClickListeners$p(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getOnItemClickListeners()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    return p0
.end method

.method public static final synthetic access$setItemConfigs$p(Lcom/narvii/widget/histogram/HistogramView;Ljava/util/ArrayList;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    return-void
.end method

.method private final drawBackgroundLines(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 164
    iget v1, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 166
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 167
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    :goto_1
    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v11, v5

    .line 168
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    :goto_2
    move v12, v5

    .line 169
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    add-int/2addr v5, v6

    :goto_3
    move v13, v5

    .line 171
    iget v5, v0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    if-nez v5, :cond_4

    const/16 v5, 0x64

    const/16 v14, 0x64

    goto :goto_4

    :cond_4
    move v14, v5

    .line 173
    :goto_4
    iget-object v15, v0, Lcom/narvii/widget/histogram/HistogramView;->backgroundLineLevels:[F

    array-length v10, v15

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_6

    aget v16, v15, v9

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    mul-float v8, v3, v16

    add-float v7, v5, v8

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    add-float v17, v5, v8

    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v18

    move-object/from16 v5, p1

    move v6, v4

    move v2, v8

    move v8, v11

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v18

    .line 174
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    float-to-int v7, v2

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    iget v2, v0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    int-to-float v2, v2

    add-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {v5, v12, v6, v13, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    int-to-float v6, v14

    const/4 v7, 0x1

    int-to-float v7, v7

    sub-float v7, v7, v16

    mul-float v6, v6, v7

    const v7, 0x1869f

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget v8, v0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSizeSmall:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_6

    .line 182
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget v8, v0, Lcom/narvii/widget/histogram/HistogramView;->labelTextSize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDecimalFormatOne()Ljava/text/DecimalFormat;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getTextRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {p0 .. p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-virtual {v9, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v19, 0x1

    move v9, v2

    move/from16 v10, v17

    const/high16 v2, 0x40000000    # 2.0f

    goto/16 :goto_5

    :cond_6
    return-void
.end method

.method private final drawDateLabel(Landroid/graphics/Canvas;Lcom/narvii/widget/histogram/HistogramItemConfig;)V
    .locals 5

    .line 189
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 190
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const-string v1, "M/d"

    .line 191
    invoke-virtual {p2, v1}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDateLabelRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float v1, v1

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawPillars(Landroid/graphics/Canvas;)V
    .locals 13

    .line 195
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getCurPercentage()F

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/histogram/HistogramItemConfig;

    if-eqz v5, :cond_5

    .line 199
    iget v6, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    const/4 v7, 0x1

    if-ne v4, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v0, v6}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getRectToDraw(FZ)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    move-result-object v6

    const-string v8, "it.getRectToDraw(percent\u2026arIndex == selectedIndex)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-boolean v8, p0, Lcom/narvii/widget/histogram/HistogramView;->hasStartDateMarked:Z

    if-nez v8, :cond_1

    .line 201
    invoke-direct {p0, p1, v5}, Lcom/narvii/widget/histogram/HistogramView;->drawDateLabel(Landroid/graphics/Canvas;Lcom/narvii/widget/histogram/HistogramItemConfig;)V

    .line 202
    iput-boolean v7, p0, Lcom/narvii/widget/histogram/HistogramView;->hasStartDateMarked:Z

    goto :goto_2

    .line 203
    :cond_1
    iget-boolean v8, p0, Lcom/narvii/widget/histogram/HistogramView;->hasEndDateMarked:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_2

    .line 204
    invoke-direct {p0, p1, v5}, Lcom/narvii/widget/histogram/HistogramView;->drawDateLabel(Landroid/graphics/Canvas;Lcom/narvii/widget/histogram/HistogramItemConfig;)V

    .line 205
    iput-boolean v7, p0, Lcom/narvii/widget/histogram/HistogramView;->hasEndDateMarked:Z

    .line 207
    :cond_2
    :goto_2
    iget-object v7, v6, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    const-string v8, "itemRectConfig.rectToDraw"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    if-eqz v10, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getPillarPaint()Landroid/graphics/Paint;

    move-result-object v11

    iget-object v12, v6, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    aget v12, v12, v9

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getPillarPaint()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 213
    :cond_4
    iget v6, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    if-ne v4, v6, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v6

    if-nez v6, :cond_5

    move-object v3, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 221
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    .line 222
    iget-object v4, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v6, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v6, v5

    .line 221
    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->hint_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "drawConfig.hintView.find\u2026TextView>(R.id.hint_date)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "MMM d"

    invoke-virtual {v3, v1}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->hint_coins:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "drawConfig.hintView.find\u2026extView>(R.id.hint_coins)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-wide v2, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 226
    iget v3, p0, Lcom/narvii/widget/histogram/HistogramView;->hintViewHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 227
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getHintRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->getHintView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method private final getDateLabelRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->dateLabelRect$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private final getDecimalFormatOne()Ljava/text/DecimalFormat;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->decimalFormatOne$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    return-object v0
.end method

.method private final getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->drawConfig$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    return-object v0
.end method

.method private final getFixedMaxValue(I)I
    .locals 6

    const/16 v0, 0xa

    const/16 v1, 0x64

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-gt p1, v0, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    .line 285
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    const/16 p1, 0x64

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_4

    .line 287
    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x64

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    .line 289
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 290
    rem-int v1, p1, v0

    if-nez v1, :cond_5

    goto :goto_0

    .line 293
    :cond_5
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    mul-int p1, p1, v0

    :goto_0
    return p1
.end method

.method private final getHintRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->hintRect$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private final getOnItemClickListeners()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/OnItemClickListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->onItemClickListeners$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getPercentageAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->percentageAnimator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final getTextRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->textRect$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/histogram/HistogramView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private final prepareRects(IIII)V
    .locals 10

    .line 236
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    add-int/2addr v0, v1

    :goto_0
    sub-int/2addr p3, p1

    int-to-double v1, p3

    .line 237
    iget p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    add-int/lit8 p3, p1, -0x1

    int-to-double v3, p3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    const/4 p3, 0x1

    int-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const/high16 p3, 0x3f000000    # 0.5f

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 238
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int p3, v2

    .line 239
    iget v2, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    .line 241
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, p4

    sub-int/2addr v8, p2

    iget v9, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v4, v1, p3

    sub-int/2addr v0, v4

    goto :goto_2

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    add-int v7, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, p4

    sub-int/2addr v8, p2

    iget v9, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v4, v1, p3

    add-int/2addr v0, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

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

    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 254
    iget-wide v3, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    iget v5, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    int-to-double v5, v5

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_0

    .line 255
    iput v2, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    const/high16 v5, 0x3f000000    # 0.5f

    float-to-double v5, v5

    .line 256
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 260
    iput v1, p0, Lcom/narvii/widget/histogram/HistogramView;->selectedIndex:I

    .line 266
    :cond_2
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    invoke-direct {p0, v1}, Lcom/narvii/widget/histogram/HistogramView;->getFixedMaxValue(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    .line 268
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    if-le v1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_5

    .line 271
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "configs[configs.size - 1 - index]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 272
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView;->rectList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/narvii/widget/histogram/HistogramView;->itemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 273
    iget v4, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    if-nez v4, :cond_4

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 274
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, v1, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    iget v10, p0, Lcom/narvii/widget/histogram/HistogramView;->maxValue:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    double-to-int v4, v4

    .line 273
    :goto_2
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 275
    invoke-virtual {v1, v3}, Lcom/narvii/widget/histogram/HistogramItemConfig;->setDisplayRect(Landroid/graphics/Rect;)V

    .line 276
    iget-object v3, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addOnItemClickListener(Lcom/narvii/widget/histogram/OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getOnItemClickListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final hasData()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->itemConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/narvii/widget/histogram/HistogramView;->hasStartDateMarked:Z

    .line 107
    iput-boolean v0, p0, Lcom/narvii/widget/histogram/HistogramView;->hasEndDateMarked:Z

    .line 108
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 132
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->drawBackgroundLines(Landroid/graphics/Canvas;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->drawPillars(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 112
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/narvii/widget/histogram/HistogramView;->labelViewSize:I

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p5, p1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/widget/histogram/HistogramView;->prepareRects(IIII)V

    .line 116
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->tempItemConfigs:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->processItemConfigs(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->tempItemConfigs:Ljava/util/ArrayList;

    .line 120
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final removeOnItemClickListener(Lcom/narvii/widget/histogram/OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getOnItemClickListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setItemConfigs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/histogram/HistogramItemConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/histogram/HistogramView;->processItemConfigs(Ljava/util/ArrayList;)V

    .line 148
    invoke-direct {p0}, Lcom/narvii/widget/histogram/HistogramView;->getPercentageAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 143
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView;->tempItemConfigs:Ljava/util/ArrayList;

    return-void
.end method
