.class public Lcom/narvii/widget/Top3UserLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "Top3UserLayout.java"


# instance fields
.field avatar:Lcom/narvii/widget/UserAvatarLayout;

.field ivNo:Landroid/widget/ImageView;

.field rankingTitleView:Lcom/narvii/widget/RankingTitleView;

.field tvName:Lcom/narvii/widget/NicknameView;

.field tvNo:Landroid/widget/TextView;

.field tvQuizNoPlayed:Landroid/widget/TextView;

.field tvScore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Top3UserLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/Top3UserLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getRankingNoDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060198

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060197

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 107
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0806c2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f090bb0

    .line 108
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 109
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private getRankingNoResource(I)I
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f0803ca

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0803cc

    goto :goto_0

    :cond_1
    const v1, 0x7f0803cb

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090c10

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090c36

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvNo:Landroid/widget/TextView;

    const v0, 0x7f090c30

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->ivNo:Landroid/widget/ImageView;

    const v0, 0x7f09074b

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvName:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f09090c

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/RankingTitleView;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    const v0, 0x7f090910

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvScore:Landroid/widget/TextView;

    const v0, 0x7f0908f4

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvQuizNoPlayed:Landroid/widget/TextView;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvScore:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;ILcom/narvii/app/NVContext;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    const-string v3, "#c0000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    .line 62
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvNo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    add-int/lit8 v2, p2, 0x1

    .line 67
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvNo:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/narvii/widget/Top3UserLayout;->getRankingNoDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->ivNo:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    add-int/2addr p2, v2

    .line 72
    invoke-direct {p0, p2}, Lcom/narvii/widget/Top3UserLayout;->getRankingNoResource(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/Top3UserLayout;->tvName:Lcom/narvii/widget/NicknameView;

    if-eqz p2, :cond_4

    .line 76
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 78
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/Top3UserLayout;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    if-eqz p2, :cond_5

    .line 79
    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 81
    :cond_5
    iget-object p2, p0, Lcom/narvii/widget/Top3UserLayout;->tvQuizNoPlayed:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f0e70

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/User;->totalQuizPlayedTimes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p3, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
