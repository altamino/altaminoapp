.class public abstract Lcom/narvii/influencer/InfluencerPostIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private defaultColor:I

.field private final lockIndicator$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvFansOnly$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/narvii/lib/R$id;->influencer_lock:I

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lw7/m;

    sget p1, Lcom/narvii/lib/R$id;->fans_only:I

    .line 3
    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lw7/m;

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/narvii/lib/R$id;->influencer_lock:I

    .line 5
    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lw7/m;

    sget p1, Lcom/narvii/lib/R$id;->fans_only:I

    .line 6
    invoke-virtual {p0, p0, p1}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lw7/m;

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p3, Lcom/narvii/lib/R$id;->influencer_lock:I

    .line 8
    invoke-virtual {p0, p0, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lw7/m;

    sget p3, Lcom/narvii/lib/R$id;->fans_only:I

    .line 9
    invoke-virtual {p0, p0, p3}, Lcom/narvii/influencer/InfluencerPostIndicator;->bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lw7/m;

    const/4 p3, -0x1

    iput p3, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    .line 10
    sget-object v0, Lcom/narvii/lib/R$styleable;->InfluencerPostIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->InfluencerPostIndicator_infulencer_default_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/influencer/InfluencerPostIndicator;->setDefaultColor(I)V

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected final bind(Lcom/narvii/influencer/InfluencerPostIndicator;I)Lw7/m;
    .locals 2
    .param p1    # Lcom/narvii/influencer/InfluencerPostIndicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/influencer/InfluencerPostIndicator;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/influencer/InfluencerPostIndicator$bind$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Lcom/narvii/influencer/InfluencerPostIndicator$bind$1;-><init>(Lcom/narvii/influencer/InfluencerPostIndicator;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getDefaultColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return v0
.end method

.method protected final getLockIndicator()Lcom/narvii/widget/TintButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->lockIndicator$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 9
    return-object v0
.end method

.method protected final getTvFansOnly()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->tvFansOnly$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    return-void
.end method

.method public setDefaultColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/influencer/InfluencerPostIndicator;->defaultColor:I

    return-void
.end method

.method public abstract setIsFansOnly(Z)V
.end method
