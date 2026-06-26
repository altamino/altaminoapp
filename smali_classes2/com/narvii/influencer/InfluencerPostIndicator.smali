.class public abstract Lcom/narvii/influencer/InfluencerPostIndicator;
.super Landroid/widget/LinearLayout;
.source "InfluencerPostIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInfluencerPostIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InfluencerPostIndicator.kt\ncom/narvii/influencer/InfluencerPostIndicator\n*L\n1#1,41:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private defaultColor:I

.field private final lockIndicator$delegate:Lkotlin/Lazy;

.field private final tvFansOnly$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/InfluencerPostIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lockIndicator"

    const-string v4, "getLockIndicator()Lcom/narvii/widget/TintButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/InfluencerPostIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "tvFansOnly"

    const-string v4, "getTvFansOnly()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/influencer/InfluencerPostIndicator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    sget p1, Lcom/narvii/lib/R$id;->influencer_lock:I

    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lkotlin/Lazy;

    .line 20
    sget p1, Lcom/narvii/lib/R$id;->fans_only:I

    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget p1, Lcom/narvii/lib/R$id;->influencer_lock:I

    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lkotlin/Lazy;

    .line 20
    sget p1, Lcom/narvii/lib/R$id;->fans_only:I

    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    sget p3, Lcom/narvii/lib/R$id;->influencer_lock:I

    invoke-virtual {p0, p0, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lkotlin/Lazy;

    .line 20
    sget p3, Lcom/narvii/lib/R$id;->fans_only:I

    invoke-virtual {p0, p0, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lkotlin/Lazy;

    const/4 p3, -0x1

    .line 21
    iput p3, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    .line 26
    sget-object v0, Lcom/narvii/lib/R$styleable;->InfluencerPostIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 27
    sget p2, Lcom/narvii/lib/R$styleable;->InfluencerPostIndicator_infulencer_default_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/influencer/InfluencerPostIndicator;->setDefaultColor(I)V

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/influencer/InfluencerPostIndicator;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/influencer/InfluencerPostIndicator$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/influencer/InfluencerPostIndicator$bind$1;-><init>(Lcom/narvii/influencer/InfluencerPostIndicator;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultColor()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return v0
.end method

.method protected final getLockIndicator()Lcom/narvii/widget/TintButton;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/InfluencerPostIndicator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    return-object v0
.end method

.method protected final getTvFansOnly()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/InfluencerPostIndicator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setDefaultColor(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return-void
.end method

.method public abstract setIsFansOnly(Z)V
.end method
