.class public abstract Lcom/narvii/members/HorizontalMemberAdapter;
.super Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;,
        Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/widget/recycleview/NVRecycleAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ITEM_TYPE_END:I = 0x1

.field protected static final ITEM_TYPE_NORMAL:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected bindCustomViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    move-object v0, p1

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    instance-of v3, v2, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    check-cast v2, Lcom/narvii/model/User;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->shouldShakeMoods()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/narvii/widget/MoodView;->shakeCrazily()V

    .line 37
    .line 38
    :cond_1
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 39
    .line 40
    iget v5, v2, Lcom/narvii/model/User;->onlineStatus:I

    .line 41
    const/4 v6, 0x4

    .line 42
    .line 43
    if-ne v5, v4, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 51
    move-result v5

    .line 52
    .line 53
    if-nez v5, :cond_2

    .line 54
    move v5, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v5, v6

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 65
    .line 66
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->onlineView:Landroid/view/View;

    .line 67
    .line 68
    iget v5, v2, Lcom/narvii/model/User;->onlineStatus:I

    .line 69
    .line 70
    if-ne v5, v4, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 78
    move-result v4

    .line 79
    .line 80
    if-eqz v4, :cond_3

    .line 81
    move v6, v1

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 92
    .line 93
    :cond_4
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 97
    .line 98
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 102
    .line 103
    if-nez p2, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    .line 121
    move-result p2

    .line 122
    .line 123
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_5
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    .line 136
    move-result p2

    .line 137
    .line 138
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_6
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    .line 149
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 150
    .line 151
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    .line 159
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 160
    goto :goto_1

    .line 161
    .line 162
    :cond_7
    instance-of v0, p1, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;

    .line 163
    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    check-cast p1, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;

    .line 167
    .line 168
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 175
    move-result-object p2

    .line 176
    .line 177
    instance-of v0, p2, Lcom/narvii/model/User;

    .line 178
    .line 179
    if-nez v0, :cond_8

    .line 180
    return-void

    .line 181
    .line 182
    :cond_8
    check-cast p2, Lcom/narvii/model/User;

    .line 183
    .line 184
    iget-object v0, p1, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;->avatar:Lcom/narvii/widget/NVImageView;

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 190
    move-result-object p2

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 197
    move-result p2

    .line 198
    .line 199
    if-eqz p2, :cond_a

    .line 200
    .line 201
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    .line 211
    move-result p2

    .line 212
    .line 213
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 214
    goto :goto_1

    .line 215
    .line 216
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    .line 226
    move-result p2

    .line 227
    .line 228
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 229
    :cond_b
    :goto_1
    return-void
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method protected getDefaultPadding()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f070128

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method protected getEndItemLayoutId()I
    .locals 1

    const v0, 0x7f0d0505

    return v0
.end method

.method protected getItemType(ILjava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getEndItemLayoutId()I

    .line 4
    move-result p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p2, v0

    .line 13
    .line 14
    if-lt p1, p2, :cond_0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getNormalItemLayoutId()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;-><init>(Lcom/narvii/members/HorizontalMemberAdapter;Landroid/view/View;)V

    .line 27
    return-object p2

    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 29
    .line 30
    if-ne p2, v1, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getEndItemLayoutId()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    new-instance p2, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;-><init>(Lcom/narvii/members/HorizontalMemberAdapter;Landroid/view/View;)V

    .line 54
    return-object p2

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method protected abstract getNormalItemLayoutId()I
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method protected abstract shouldShakeMoods()Z
.end method
