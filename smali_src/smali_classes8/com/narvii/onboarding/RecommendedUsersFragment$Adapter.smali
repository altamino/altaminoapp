.class Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/RecommendedUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onboarding/RecommendedUsersFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onboarding/RecommendedUsersFragment;->users:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/onboarding/RecommendedUsersFragment;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0d0699

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0a0f36

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 24
    .line 25
    .line 26
    const p3, 0x7f0a09f9

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 36
    .line 37
    .line 38
    const p3, 0x7f0a0189

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    const/4 v3, 0x0

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    :cond_0
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    :cond_1
    move v1, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v1, v2

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/narvii/onboarding/RecommendedUsersFragment;->n(Lcom/narvii/onboarding/RecommendedUsersFragment;)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    const p3, 0x7f0a0bef

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p3

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    move-result v1

    .line 118
    .line 119
    if-nez v1, :cond_3

    .line 120
    move v1, v3

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    move v1, v2

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    const p3, 0x7f0a0b8a

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 135
    .line 136
    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 140
    move-result v1

    .line 141
    .line 142
    if-eqz v1, :cond_4

    .line 143
    move v1, v3

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move v1, v2

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const/4 p3, 0x3

    .line 150
    div-int/2addr p1, p3

    .line 151
    move v1, v3

    .line 152
    .line 153
    :goto_3
    if-ge v1, p3, :cond_6

    .line 154
    .line 155
    mul-int/lit8 v4, p1, 0x3

    .line 156
    add-int/2addr v4, v1

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getCount()I

    .line 160
    move-result v5

    .line 161
    .line 162
    if-ge v4, v5, :cond_5

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v4}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 170
    move-result v4

    .line 171
    .line 172
    if-eqz v4, :cond_5

    .line 173
    const/4 p1, 0x1

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    move p1, v3

    .line 179
    .line 180
    .line 181
    :goto_4
    const p3, 0x7f0a0c4b

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object p3

    .line 186
    .line 187
    check-cast p3, Landroid/widget/TextView;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 191
    move-result v1

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    goto :goto_5

    .line 205
    .line 206
    :cond_7
    if-eqz p1, :cond_8

    .line 207
    const/4 v2, 0x4

    .line 208
    .line 209
    .line 210
    :cond_8
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :goto_5
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/User;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    return p2

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lcom/narvii/onboarding/RecommendedUsersFragment;->unfollow(Lcom/narvii/model/User;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Lcom/narvii/onboarding/RecommendedUsersFragment;->follow(Lcom/narvii/model/User;)V

    .line 40
    :goto_0
    return p2

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 44
    move-result p1

    .line 45
    return p1
.end method
