.class public final Lcom/narvii/influencer/CommonInfluencerPostIndicator;
.super Lcom/narvii/influencer/InfluencerPostIndicator;
.source "CommonInfluencerPostIndicator.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/influencer/CommonInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/narvii/influencer/CommonInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/CommonInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/influencer/CommonInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/influencer/CommonInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/influencer/CommonInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/CommonInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/CommonInfluencerPostIndicator;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public setIsFansOnly(Z)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_influencer_post_lock:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/narvii/lib/R$drawable;->ic_influencer_post_unlock:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    move-result-object v0

    if-eqz p1, :cond_1

    sget v1, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/narvii/lib/R$color;->selector_influencer_post_unlock:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColorStateList(I)V

    .line 12
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    sget v2, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/narvii/lib/R$color;->selector_influencer_post_unlock:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_3

    sget p1, Lcom/narvii/lib/R$string;->fans_only:I

    goto :goto_3

    :cond_3
    sget p1, Lcom/narvii/lib/R$string;->free:I

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
