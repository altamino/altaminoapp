.class public Lcom/narvii/tipping/TippingListItemCell;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private matchRankStyle(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    const/4 v3, 0x2

    .line 6
    .line 7
    if-le p1, v3, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    .line 20
    add-int/2addr p1, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0804ed

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0804ee

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    if-ne p1, v3, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0804ef

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_1
    return-void
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
    const v0, 0x7f0a0bc6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rank:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f36

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a09f9

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0e90

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0e9d

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/tipping/TippingThanksView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a0bc8

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rankIcon:Landroid/widget/ImageView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a0e8d

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingContainer:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a0e8a

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Landroid/widget/TextView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingCoin:Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    const v0, 0x7f0a0bc7

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rankFrame:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0a0f3e

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    check-cast v0, Landroid/widget/FrameLayout;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    .line 110
    .line 111
    .line 112
    const v0, 0x7f0a0f59

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    check-cast v0, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->followedCheck:Landroid/widget/ImageView;

    .line 121
    return-void
.end method

.method public setTipLog(Lcom/narvii/tipping/model/TipLog;IZZZZ)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_c

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_a

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    move v3, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v3, v1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/tipping/TippingListItemCell;->rankFrame:Landroid/view/View;

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    move v3, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v3, v1

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/tipping/TippingListItemCell;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/tipping/TippingListItemCell;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    if-eqz p3, :cond_4

    .line 51
    .line 52
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->followedCheck:Landroid/widget/ImageView;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    iget-boolean p3, p1, Lcom/narvii/tipping/model/TipLog;->isTipperAccessible:Z

    .line 63
    .line 64
    if-nez p3, :cond_3

    .line 65
    .line 66
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->thanksView:Lcom/narvii/tipping/TippingThanksView;

    .line 78
    .line 79
    xor-int/lit8 p4, p6, 0x1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1, p4}, Lcom/narvii/tipping/TippingThanksView;->bindBebefactor(Lcom/narvii/model/Benefactor;Z)V

    .line 83
    .line 84
    :goto_2
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingContainer:Landroid/view/View;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingCoin:Landroid/widget/TextView;

    .line 95
    .line 96
    sget-object p4, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 97
    .line 98
    iget p1, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 99
    int-to-long p5, p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, p5, p6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p2}, Lcom/narvii/tipping/TippingListItemCell;->matchRankStyle(I)V

    .line 110
    .line 111
    goto/16 :goto_a

    .line 112
    .line 113
    :cond_4
    iget p2, v0, Lcom/narvii/model/User;->membershipStatus:I

    .line 114
    .line 115
    if-eq p2, v3, :cond_6

    .line 116
    const/4 p3, 0x3

    .line 117
    .line 118
    if-ne p2, p3, :cond_5

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move p2, v2

    .line 121
    goto :goto_4

    .line 122
    :cond_6
    :goto_3
    move p2, v3

    .line 123
    .line 124
    :goto_4
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->followedCheck:Landroid/widget/ImageView;

    .line 125
    .line 126
    if-nez p5, :cond_7

    .line 127
    .line 128
    if-eqz p2, :cond_7

    .line 129
    move p6, v2

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move p6, v1

    .line 132
    .line 133
    .line 134
    :goto_5
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    iget-object p3, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    .line 137
    .line 138
    if-nez p5, :cond_8

    .line 139
    .line 140
    if-nez p2, :cond_8

    .line 141
    move p2, v2

    .line 142
    goto :goto_6

    .line 143
    :cond_8
    move p2, v1

    .line 144
    .line 145
    .line 146
    :goto_6
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    .line 151
    const p3, 0x7f0a0f3f

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    if-eqz p4, :cond_9

    .line 158
    move p3, v1

    .line 159
    goto :goto_7

    .line 160
    :cond_9
    move p3, v2

    .line 161
    .line 162
    .line 163
    :goto_7
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    .line 166
    .line 167
    .line 168
    const p3, 0x7f0a0f42

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    if-eqz p4, :cond_a

    .line 175
    move p3, v1

    .line 176
    goto :goto_8

    .line 177
    :cond_a
    move p3, v2

    .line 178
    .line 179
    .line 180
    :goto_8
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->userFollow:Landroid/widget/FrameLayout;

    .line 183
    .line 184
    .line 185
    const p3, 0x7f0a0f41

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object p2

    .line 190
    .line 191
    if-eqz p4, :cond_b

    .line 192
    move p3, v2

    .line 193
    goto :goto_9

    .line 194
    :cond_b
    move p3, v1

    .line 195
    .line 196
    .line 197
    :goto_9
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingContainer:Landroid/view/View;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    iget-object p2, p0, Lcom/narvii/tipping/TippingListItemCell;->tippingDesc:Landroid/widget/TextView;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 213
    move-result-object p3

    .line 214
    .line 215
    new-array p4, v3, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 219
    move-result-object p5

    .line 220
    .line 221
    .line 222
    invoke-static {p5}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 223
    move-result-object p5

    .line 224
    .line 225
    iget-object p1, p1, Lcom/narvii/tipping/model/TipLog;->lastTippedTime:Ljava/util/Date;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p5, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    aput-object p1, p4, v2

    .line 232
    .line 233
    .line 234
    const p1, 0x7f1211bb

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p1, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_c
    :goto_a
    return-void
.end method
