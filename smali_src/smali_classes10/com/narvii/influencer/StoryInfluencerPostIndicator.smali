.class public final Lcom/narvii/influencer/StoryInfluencerPostIndicator;
.super Lcom/narvii/influencer/InfluencerPostIndicator;
.source "SourceFile"


# instance fields
.field private final check$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private switchOffColor:I

.field private switchOnColor:I


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

    invoke-direct/range {v1 .. v6}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

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

    sget p1, Lcom/narvii/lib/R$id;->check:I

    .line 4
    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->check$delegate:Lw7/m;

    sget p1, Lcom/narvii/lib/R$drawable;->ic_switch_on:I

    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    sget p1, Lcom/narvii/lib/R$drawable;->ic_switch_off:I

    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

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

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCheck()Landroid/widget/ImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->check$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getSwitchOffColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    return v0
.end method

.method public final getSwitchOnColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    return v0
.end method

.method public setIsFansOnly(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$drawable;->ic_influencer_post_lock:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    sget v0, Lcom/narvii/lib/R$color;->selector_influencer_post_lock:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColorStateList(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    sget v0, Lcom/narvii/lib/R$string;->fans_only:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->getCheck()Landroid/widget/ImageView;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    sget v0, Lcom/narvii/lib/R$drawable;->ic_influencer_post_lock:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getLockIndicator()Lcom/narvii/widget/TintButton;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getDefaultColor()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getDefaultColor()I

    .line 86
    move-result v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/influencer/InfluencerPostIndicator;->getTvFansOnly()Landroid/widget/TextView;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    sget v0, Lcom/narvii/lib/R$string;->fans_only:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->getCheck()Landroid/widget/ImageView;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    iget v0, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_0
    return-void
.end method

.method public final setSwitchOffColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOffColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public final setSwitchOnColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/influencer/StoryInfluencerPostIndicator;->switchOnColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
