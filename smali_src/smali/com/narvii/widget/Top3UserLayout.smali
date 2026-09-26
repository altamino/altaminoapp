.class public Lcom/narvii/widget/Top3UserLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Top3UserLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/Top3UserLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getRankingNoDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f060404

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-eq p1, v2, :cond_2

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    const/4 v1, 0x3

    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    const v0, 0x7f060406

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    const v0, 0x7f060405

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    const v1, 0x7f0808bd

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 67
    .line 68
    .line 69
    const v1, 0x7f0a0ecd

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 79
    return-object p1
.end method

.method private getRankingNoResource(I)I
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f0804ed

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0804ef

    goto :goto_0

    :cond_1
    const v1, 0x7f0804ee

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f58

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvNo:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0f52

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->ivNo:Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a09d3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvName:Lcom/narvii/widget/NicknameView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0bc9

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/widget/RankingTitleView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a0bcd

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvScore:Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a0bb3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvQuizNoPlayed:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvScore:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;ILcom/narvii/app/NVContext;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    const/high16 v3, 0x40a00000    # 5.0f

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 18
    move-result v2

    .line 19
    .line 20
    const-string v3, "#c0000000"

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 30
    .line 31
    const/high16 v2, 0x40400000    # 3.0f

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvNo:Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    add-int/lit8 v2, p2, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->tvNo:Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2}, Lcom/narvii/widget/Top3UserLayout;->getRankingNoDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Top3UserLayout;->ivNo:Landroid/widget/ImageView;

    .line 64
    const/4 v2, 0x1

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    add-int/2addr p2, v2

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p2}, Lcom/narvii/widget/Top3UserLayout;->getRankingNoResource(I)I

    .line 71
    move-result p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    .line 76
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/Top3UserLayout;->tvName:Lcom/narvii/widget/NicknameView;

    .line 77
    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 82
    .line 83
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/Top3UserLayout;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 89
    .line 90
    :cond_5
    iget-object p2, p0, Lcom/narvii/widget/Top3UserLayout;->tvQuizNoPlayed:Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    new-array v0, v2, [Ljava/lang/Object;

    .line 103
    .line 104
    iget p1, p1, Lcom/narvii/model/User;->totalQuizPlayedTimes:I

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    aput-object p1, v0, v1

    .line 111
    .line 112
    .line 113
    const p1, 0x7f120f91

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_6
    return-void
.end method
