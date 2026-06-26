.class public final Lcom/narvii/influencer/StoryInfluencerPostIndicator;
.super Lcom/narvii/influencer/InfluencerPostIndicator;
.source "StoryInfluencerPostIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryInfluencerPostIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryInfluencerPostIndicator.kt\ncom/narvii/influencer/StoryInfluencerPostIndicator\n*L\n1#1,39:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final check$delegate:Lkotlin/Lazy;

.field private switchOffColor:I

.field private switchOnColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "check"

    const-string v4, "getCheck()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    sget p1, Lcom/narvii/lib/R$id;->check:I

    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->check$delegate:Lkotlin/Lazy;

    .line 12
    sget p1, Lcom/narvii/lib/R$drawable;->switch_on:I

    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    .line 17
    sget p1, Lcom/narvii/lib/R$drawable;->switch_off:I

    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCheck()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->check$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getSwitchOffColor()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    return v0
.end method

.method public final getSwitchOnColor()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    return v0
.end method

.method public setIsFansOnly(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_influencer_post_lock:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColorStateList(I)V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->fans_only:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 29
    invoke-direct {p0}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->getCheck()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_influencer_post_lock:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 33
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->fans_only:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 35
    invoke-direct {p0}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->getCheck()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final setSwitchOffColor(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setSwitchOnColor(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
