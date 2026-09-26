.class public final Lcom/narvii/influencer/CommonInfluencerPostIndicator;
.super Lcom/narvii/influencer/InfluencerPostIndicator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/influencer/CommonInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/influencer/CommonInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/CommonInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setIsFansOnly(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget v1, Lcom/narvii/lib/R$drawable;->ic_influencer_post_lock:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v1, Lcom/narvii/lib/R$drawable;->ic_influencer_post_unlock:I

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget v1, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    sget v1, Lcom/narvii/lib/R$color;->selector_influencer_post_unlock:I

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColorStateList(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget v2, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    sget v2, Lcom/narvii/lib/R$color;->selector_influencer_post_unlock:I

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    sget p1, Lcom/narvii/lib/R$string;->fans_only:I

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :cond_3
    sget p1, Lcom/narvii/lib/R$string;->free:I

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    return-void
.end method
