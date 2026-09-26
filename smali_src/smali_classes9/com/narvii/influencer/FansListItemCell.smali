.class public final Lcom/narvii/influencer/FansListItemCell;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


# instance fields
.field private final avatar$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fansThanksView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final followedCheck$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nicknameView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvAdress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userFollowView$delegate:Lw7/m;
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
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a0f36

    .line 2
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->avatar$delegate:Lw7/m;

    const p1, 0x7f0a09f9

    .line 3
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->nicknameView$delegate:Lw7/m;

    const p1, 0x7f0a00a8

    .line 4
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->tvAdress$delegate:Lw7/m;

    const p1, 0x7f0a0f59

    .line 5
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->followedCheck$delegate:Lw7/m;

    const p1, 0x7f0a0566

    .line 6
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->fansThanksView$delegate:Lw7/m;

    const p1, 0x7f0a0f3e

    .line 7
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->userFollowView$delegate:Lw7/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0a0f36

    .line 9
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->avatar$delegate:Lw7/m;

    const p1, 0x7f0a09f9

    .line 10
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->nicknameView$delegate:Lw7/m;

    const p1, 0x7f0a00a8

    .line 11
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->tvAdress$delegate:Lw7/m;

    const p1, 0x7f0a0f59

    .line 12
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->followedCheck$delegate:Lw7/m;

    const p1, 0x7f0a0566

    .line 13
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->fansThanksView$delegate:Lw7/m;

    const p1, 0x7f0a0f3e

    .line 14
    invoke-direct {p0, p0, p1}, Lcom/narvii/influencer/FansListItemCell;->bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansListItemCell;->userFollowView$delegate:Lw7/m;

    return-void
.end method

.method private final bind(Lcom/narvii/influencer/FansListItemCell;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/influencer/FansListItemCell;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/influencer/FansListItemCell$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/influencer/FansListItemCell$bind$1;-><init>(Lcom/narvii/influencer/FansListItemCell;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method


# virtual methods
.method public final getAvatar()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->avatar$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 9
    return-object v0
.end method

.method public final getFansThanksView()Lcom/narvii/tipping/TippingThanksView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->fansThanksView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/tipping/TippingThanksView;

    .line 9
    return-object v0
.end method

.method public final getFollowedCheck()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->followedCheck$delegate:Lw7/m;

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

.method public final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->nicknameView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 9
    return-object v0
.end method

.method public final getTvAdress()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->tvAdress$delegate:Lw7/m;

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

.method public final getUserFollowView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListItemCell;->userFollowView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final setFansInfo(Lcom/narvii/influencer/FansInfo;ZZZ)V
    .locals 5
    .param p1    # Lcom/narvii/influencer/FansInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_b

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_7

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    move v4, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v4, v3

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getAvatar()Lcom/narvii/widget/UserAvatarLayout;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getTvAdress()Landroid/widget/TextView;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getTvAdress()Landroid/widget/TextView;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget-object v4, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFollowedCheck()Landroid/widget/ImageView;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFollowedCheck()Landroid/widget/ImageView;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    .line 91
    iget-boolean p2, p1, Lcom/narvii/influencer/FansInfo;->isTipperAccessible:Z

    .line 92
    .line 93
    if-nez p2, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Lcom/narvii/tipping/TippingThanksView;->bindBebefactor(Lcom/narvii/model/Benefactor;)V

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFansThanksView()Lcom/narvii/tipping/TippingThanksView;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    iget p1, v0, Lcom/narvii/model/User;->membershipStatus:I

    .line 128
    const/4 p2, 0x1

    .line 129
    .line 130
    if-eq p1, p2, :cond_5

    .line 131
    const/4 v0, 0x3

    .line 132
    .line 133
    if-ne p1, v0, :cond_4

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move p2, v2

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getFollowedCheck()Landroid/widget/ImageView;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-nez p3, :cond_6

    .line 142
    .line 143
    if-eqz p2, :cond_6

    .line 144
    move v0, v2

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    move v0, v3

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    if-nez p3, :cond_7

    .line 156
    .line 157
    if-nez p2, :cond_7

    .line 158
    move p2, v2

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    move p2, v3

    .line 161
    .line 162
    .line 163
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    const p2, 0x7f0a0f3f

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    if-eqz p4, :cond_8

    .line 177
    move p2, v3

    .line 178
    goto :goto_4

    .line 179
    :cond_8
    move p2, v2

    .line 180
    .line 181
    .line 182
    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    const p2, 0x7f0a0f42

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    if-eqz p4, :cond_9

    .line 196
    move p2, v3

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    move p2, v2

    .line 199
    .line 200
    .line 201
    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListItemCell;->getUserFollowView()Landroid/view/View;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    const p2, 0x7f0a0f41

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    if-eqz p4, :cond_a

    .line 215
    goto :goto_6

    .line 216
    :cond_a
    move v2, v3

    .line 217
    .line 218
    .line 219
    :goto_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_b
    :goto_7
    return-void
.end method
