.class public final Lcom/narvii/master/widget/MasterBottomItemView;
.super Landroid/widget/LinearLayout;
.source "MasterBottomItemView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/widget/MasterBottomItemView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMasterBottomItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MasterBottomItemView.kt\ncom/narvii/master/widget/MasterBottomItemView\n*L\n1#1,146:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/master/widget/MasterBottomItemView$Companion;

.field public static final TEXT_COLOR_SELECTED:I = -0x1

.field public static final TEXT_COLOR_UNSELECTED:I = -0x666667

.field private static final scaleArray:[F

.field private static final timeArray:[I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final badge$delegate:Lkotlin/Lazy;

.field private final icon$delegate:Lkotlin/Lazy;

.field private final iconSelected$delegate:Lkotlin/Lazy;

.field private final tvTitle$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "iconSelected"

    const-string v4, "getIconSelected()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "icon"

    const-string v4, "getIcon()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "badge"

    const-string v4, "getBadge()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomItemView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvTitle"

    const-string v4, "getTvTitle()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/master/widget/MasterBottomItemView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->Companion:Lcom/narvii/master/widget/MasterBottomItemView$Companion;

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 34
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/master/widget/MasterBottomItemView;->scaleArray:[F

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->timeArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f8ccccd    # 1.1f
        0x3f733333    # 0.95f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
        0xb9
        0xfa
        0x118
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/narvii/master/widget/MasterBottomItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f090b3c

    .line 25
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->iconSelected$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b3b

    .line 26
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->icon$delegate:Lkotlin/Lazy;

    const p1, 0x7f090115

    .line 27
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->badge$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b41

    .line 28
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->tvTitle$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/widget/MasterBottomItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getScaleArray$cp()[F
    .locals 1

    .line 23
    sget-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->scaleArray:[F

    return-object v0
.end method

.method public static final synthetic access$getTimeArray$cp()[I
    .locals 1

    .line 23
    sget-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->timeArray:[I

    return-object v0
.end method

.method private final cancelTabIconAnimation(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090ce6

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 86
    :cond_2
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0900a7

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/animation/Animator;

    if-nez v2, :cond_3

    move-object v1, v3

    :cond_3
    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 89
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 92
    :cond_4
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0909a2

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/narvii/util/ScaleBounceHelper;

    if-nez v2, :cond_5

    move-object v1, v3

    :cond_5
    check-cast v1, Lcom/narvii/util/ScaleBounceHelper;

    if-eqz v1, :cond_6

    .line 96
    invoke-virtual {v1}, Lcom/narvii/util/ScaleBounceHelper;->cancel()V

    .line 97
    :cond_6
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method private final iconFadeIn(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeIn(Landroid/view/View;I)V

    return-void
.end method

.method private final iconFadeIn(Landroid/view/View;I)V
    .locals 3

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    const-string v1, "animator"

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 109
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const p2, 0x7f0900a7

    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private final iconFadeOut(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;I)V

    return-void
.end method

.method private final iconFadeOut(Landroid/view/View;I)V
    .locals 3

    .line 119
    invoke-direct {p0, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->cancelTabIconAnimation(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;

    invoke-direct {v1, v0, p1}, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;-><init>(Landroid/animation/Animator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v1, "animator"

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 133
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const p2, 0x7f0900a7

    .line 134
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final animateTextColor(Landroid/widget/TextView;II)V
    .locals 3

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-string p3, "colorAnimator"

    .line 141
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    new-instance p3, Lcom/narvii/master/widget/MasterBottomItemView$animateTextColor$1;

    invoke-direct {p3, p1}, Lcom/narvii/master/widget/MasterBottomItemView$animateTextColor$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final animationItemSelected()V
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->cancelTabIconAnimation(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    new-instance v0, Lcom/narvii/util/ScaleBounceHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/narvii/master/widget/MasterBottomItemView;->scaleArray:[F

    sget-object v4, Lcom/narvii/master/widget/MasterBottomItemView;->timeArray:[I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/narvii/util/ScaleBounceHelper;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/ScaleBounceHelper;->playSeq()V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0909a2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x666667

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/master/widget/MasterBottomItemView;->animateTextColor(Landroid/widget/TextView;II)V

    return-void
.end method

.method public final animationItemUnSelected()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->cancelTabIconAnimation(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeIn(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    const v2, -0x666667

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/master/widget/MasterBottomItemView;->animateTextColor(Landroid/widget/TextView;II)V

    return-void
.end method

.method public final configTabItem(III)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final configTabItem(Lkotlin/Triple;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(III)V

    return-void
.end method

.method public final getBadge()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->badge$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIcon()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->icon$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIconSelected()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->iconSelected$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->tvTitle$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomItemView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final setItemSelected()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 76
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
