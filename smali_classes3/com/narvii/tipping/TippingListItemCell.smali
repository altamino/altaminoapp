.class public Lcom/narvii/tipping/TippingListItemCell;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "TippingListItemCell.java"


# instance fields
.field avatar:Lcom/narvii/widget/UserAvatarLayout;

.field followedCheck:Landroid/widget/ImageView;

.field nicknameView:Lcom/narvii/widget/NicknameView;

.field rank:Landroid/widget/TextView;

.field rankFrame:Landroid/view/View;

.field rankIcon:Landroid/widget/ImageView;

.field thanksView:Lcom/narvii/tipping/TippingThanksView;

.field tippingCoin:Landroid/widget/TextView;

.field tippingContainer:Landroid/view/View;

.field tippingDesc:Landroid/widget/TextView;

.field userFollow:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private matchRankStyle(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-le p1, v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    const v0, 0x7f0803ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 117
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    const v0, 0x7f0803cb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 119
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    const v0, 0x7f0803cc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090909

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    const v0, 0x7f090c10

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090764

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->nicknameView:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f090b8b

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    const v0, 0x7f090b99

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/tipping/TippingThanksView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    const v0, 0x7f09090b

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    const v0, 0x7f090b88

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingContainer:Landroid/view/View;

    const v0, 0x7f090b85

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingCoin:Landroid/widget/TextView;

    const v0, 0x7f09090a

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rankFrame:Landroid/view/View;

    const v0, 0x7f090c18

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    const v0, 0x7f090c37

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->followedCheck:Landroid/widget/ImageView;

    return-void
.end method

.method public setTipLog(Lcom/narvii/tipping/model/TipLog;IZZZZ)V
    .locals 4

    if-eqz p1, :cond_c

    .line 67
    invoke-virtual {p1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rankFrame:Landroid/view/View;

    if-eqz p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {p1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    .line 75
    iget-object v3, p0, Lcom/narvii/tipping/TippingListItemCell;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 76
    iget-object v3, p0, Lcom/narvii/tipping/TippingListItemCell;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v3, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 78
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 79
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->followedCheck:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-boolean p3, p1, Lcom/narvii/tipping/model/TipLog;->isTipperAccessible:Z

    if-nez p3, :cond_3

    .line 81
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 83
    :cond_3
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    xor-int/lit8 p4, p6, 0x1

    invoke-virtual {p3, p1, p4}, Lcom/narvii/tipping/TippingThanksView;->bindBebefactor(Lcom/narvii/model/Benefactor;Z)V

    .line 86
    :goto_2
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingContainer:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingCoin:Landroid/widget/TextView;

    sget-object p4, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget p1, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    int-to-long p5, p1

    invoke-virtual {p4, p5, p6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0, p2}, Lcom/narvii/tipping/TippingListItemCell;->matchRankStyle(I)V

    goto/16 :goto_a

    .line 91
    :cond_4
    iget p2, v0, Lcom/narvii/model/User;->membershipStatus:I

    if-eq p2, v3, :cond_6

    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p2, 0x1

    .line 92
    :goto_4
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->followedCheck:Landroid/widget/ImageView;

    if-nez p5, :cond_7

    if-eqz p2, :cond_7

    const/4 p6, 0x0

    goto :goto_5

    :cond_7
    const/16 p6, 0x8

    :goto_5
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    if-nez p5, :cond_8

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_6

    :cond_8
    const/16 p2, 0x8

    :goto_6
    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    const p3, 0x7f090c1b

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p4, :cond_9

    const/16 p3, 0x8

    goto :goto_7

    :cond_9
    const/4 p3, 0x0

    :goto_7
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    const p3, 0x7f090c1e

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p4, :cond_a

    const/16 p3, 0x8

    goto :goto_8

    :cond_a
    const/4 p3, 0x0

    :goto_8
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    const p3, 0x7f090c1d

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    goto :goto_9

    :cond_b
    const/16 p3, 0x8

    :goto_9
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingContainer:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f0f10c0

    new-array p5, v3, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p6

    iget-object p1, p1, Lcom/narvii/tipping/model/TipLog;->lastTippedTime:Ljava/util/Date;

    invoke-virtual {p6, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v1

    .line 103
    invoke-virtual {p3, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_a
    return-void
.end method
