.class public abstract Lcom/narvii/user/list/UserListExAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;


# instance fields
.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/user/list/UserListExAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 11
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/list/UserListExAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    .line 6
    return-void
.end method

.method public synthetic followFail()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->a(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public synthetic followSuccess()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->b(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method protected followingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/narvii/model/User;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    iget-object p3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p2

    .line 26
    .line 27
    iget p3, v0, Lcom/narvii/model/User;->followingStatus:I

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    if-eq p3, v2, :cond_1

    .line 32
    const/4 v3, 0x3

    .line 33
    .line 34
    if-ne p3, v3, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p3, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    move p3, v2

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/user/list/UserListExAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    const v4, 0x7f0a0f59

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    if-eqz p3, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListExAdapter;->showFollowView()Z

    .line 61
    move-result v6

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 67
    move-result v6

    .line 68
    .line 69
    if-nez v6, :cond_2

    .line 70
    move v6, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v6, v5

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    const v4, 0x7f0a0f3e

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    if-eqz v4, :cond_8

    .line 85
    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    if-nez p3, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListExAdapter;->followingEnabled()Z

    .line 92
    move-result p2

    .line 93
    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListExAdapter;->showFollowView()Z

    .line 98
    move-result p2

    .line 99
    .line 100
    if-eqz p2, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 104
    move-result p2

    .line 105
    .line 106
    if-nez p2, :cond_4

    .line 107
    move p2, v1

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move p2, v5

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    const p2, 0x7f0a0f3f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    if-eqz v3, :cond_5

    .line 127
    move p3, v5

    .line 128
    goto :goto_4

    .line 129
    :cond_5
    move p3, v1

    .line 130
    .line 131
    .line 132
    :goto_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    const p2, 0x7f0a0f42

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    if-eqz v3, :cond_6

    .line 142
    move p3, v5

    .line 143
    goto :goto_5

    .line 144
    :cond_6
    move p3, v1

    .line 145
    .line 146
    .line 147
    :goto_5
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    const p2, 0x7f0a0f41

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    if-eqz v3, :cond_7

    .line 157
    move p3, v1

    .line 158
    goto :goto_6

    .line 159
    :cond_7
    move p3, v5

    .line 160
    .line 161
    .line 162
    :goto_6
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    :cond_8
    const p2, 0x7f0a00a8

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    if-eqz p2, :cond_a

    .line 172
    .line 173
    iget-object p3, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result p3

    .line 178
    .line 179
    if-nez p3, :cond_9

    .line 180
    move-object p3, p2

    .line 181
    .line 182
    check-cast p3, Landroid/widget/TextView;

    .line 183
    .line 184
    iget-object v3, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    :cond_a
    const p2, 0x7f0a0a5e

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    move-result-object p2

    .line 198
    .line 199
    if-eqz p2, :cond_c

    .line 200
    .line 201
    iget p3, v0, Lcom/narvii/model/User;->onlineStatus:I

    .line 202
    .line 203
    if-ne p3, v2, :cond_b

    .line 204
    goto :goto_7

    .line 205
    :cond_b
    const/4 v1, 0x4

    .line 206
    .line 207
    .line 208
    :goto_7
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_c
    return-object p1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/list/UserListExAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d076c

    return v0
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->c(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0f3e

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string p2, "follow"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p2, "user"

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "follow"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    const-string/jumbo p1, "user"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-class p2, Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/model/User;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;->follow(Lcom/narvii/model/User;)V

    .line 35
    .line 36
    :cond_0
    const-string p1, "statistics"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 43
    .line 44
    const-string p2, "Follow User"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string p2, "Number of Friends"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    return-void

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected showFollowView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
