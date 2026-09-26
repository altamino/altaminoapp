.class public abstract Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
        "Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

.field private needImpression:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method

.method private isMe(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    return v0
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBlog()Lcom/narvii/model/Blog;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    const-string v1, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    move-object v1, v2

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-object v0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    iget-object v4, v1, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    .line 75
    .line 76
    if-nez v4, :cond_3

    .line 77
    move-object v4, v2

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v3

    .line 87
    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_5
    return-object v0
.end method

.method public fitHoverTitleView(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBackgroundColor(Z)I

    .line 5
    move-result v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    .line 10
    instance-of v1, p1, Lcom/narvii/widget/RadiusLayout;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v2, v0, v0}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 26
    :cond_0
    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserList"

    return-object v0
.end method

.method protected getBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x19ffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract getBlog()Lcom/narvii/model/Blog;
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_b

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    const v2, 0x7f0d0457

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const p3, 0x7f0a0bcb

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    check-cast p3, Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v2, 0x7f0a0bcc

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x1

    .line 44
    add-int/2addr v3, v4

    .line 45
    const/4 v5, 0x3

    .line 46
    .line 47
    const/16 v6, 0x8

    .line 48
    const/4 v7, 0x0

    .line 49
    .line 50
    if-le v3, v5, :cond_0

    .line 51
    .line 52
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    new-array v8, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    aput-object v3, v8, v7

    .line 61
    .line 62
    const-string v3, "%02d"

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_0
    if-eq v3, v4, :cond_3

    .line 79
    const/4 v8, 0x2

    .line 80
    .line 81
    if-eq v3, v8, :cond_2

    .line 82
    .line 83
    if-eq v3, v5, :cond_1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_1
    const v3, 0x7f0805a9

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    .line 94
    :cond_2
    const v3, 0x7f0805a8

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_3
    const v3, 0x7f0805a7

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :goto_1
    const p3, 0x7f0a0c77

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object p3

    .line 118
    .line 119
    check-cast p3, Lcom/narvii/widget/Color3DTextView;

    .line 120
    .line 121
    iget v2, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->highestMode:I

    .line 122
    .line 123
    if-ne v2, v4, :cond_4

    .line 124
    .line 125
    const/16 v2, -0x87b

    .line 126
    .line 127
    const/16 v3, -0x29a1

    .line 128
    .line 129
    .line 130
    filled-new-array {v2, v3}, [I

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v2}, Lcom/narvii/widget/Color3DTextView;->setTextColors([I)V

    .line 135
    .line 136
    const/16 v2, -0x70e2

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, v2}, Lcom/narvii/widget/Color3DTextView;->setShadowColor(I)V

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const/4 v2, -0x1

    .line 142
    .line 143
    .line 144
    filled-new-array {v2, v2}, [I

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v2}, Lcom/narvii/widget/Color3DTextView;->setTextColors([I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v7}, Lcom/narvii/widget/Color3DTextView;->setShadowColor(I)V

    .line 152
    .line 153
    :goto_2
    iget v2, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->highestScore:I

    .line 154
    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 160
    .line 161
    .line 162
    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    const p3, 0x7f0a09f9

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object p3

    .line 178
    .line 179
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 180
    .line 181
    if-eqz v1, :cond_5

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 185
    .line 186
    .line 187
    const p3, 0x7f0a0f36

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object p3

    .line 192
    .line 193
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    invoke-direct {p0, v1}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->isMe(Lcom/narvii/model/User;)Z

    .line 200
    move-result p3

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p3}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBackgroundColor(Z)I

    .line 204
    move-result p3

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 211
    move-result-object p3

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 219
    move-result v2

    .line 220
    sub-int/2addr v2, v4

    .line 221
    .line 222
    .line 223
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object p3

    .line 225
    .line 226
    .line 227
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    move-result p1

    .line 229
    .line 230
    .line 231
    const p3, 0x7f0a044f

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object p3

    .line 236
    .line 237
    if-eqz p1, :cond_6

    .line 238
    move v2, v6

    .line 239
    goto :goto_3

    .line 240
    :cond_6
    move v2, v7

    .line 241
    .line 242
    .line 243
    :goto_3
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    instance-of p3, p2, Lcom/narvii/widget/RadiusLayout;

    .line 246
    .line 247
    if-eqz p3, :cond_8

    .line 248
    .line 249
    if-eqz p1, :cond_7

    .line 250
    move-object p1, p2

    .line 251
    .line 252
    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    .line 256
    move-result p3

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    .line 260
    move-result v2

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v7, v7, p3, v2}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 264
    goto :goto_4

    .line 265
    :cond_7
    move-object p1, p2

    .line 266
    .line 267
    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v7, v7, v7, v7}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 271
    .line 272
    .line 273
    :cond_8
    :goto_4
    const p1, 0x7f0a0bb0

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    move-result-object p1

    .line 278
    .line 279
    .line 280
    const p3, 0x7f0a0bb1

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    move-result-object p3

    .line 285
    .line 286
    iget-boolean v2, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->hellIsFinished:Z

    .line 287
    .line 288
    if-eqz v2, :cond_9

    .line 289
    move v3, v7

    .line 290
    goto :goto_5

    .line 291
    :cond_9
    move v3, v6

    .line 292
    .line 293
    .line 294
    :goto_5
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    iget-boolean p3, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->isFinished:Z

    .line 297
    .line 298
    if-eqz p3, :cond_a

    .line 299
    .line 300
    if-nez v2, :cond_a

    .line 301
    move v6, v7

    .line 302
    .line 303
    .line 304
    :cond_a
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, p2, v1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 308
    return-object p2

    .line 309
    :cond_b
    const/4 p1, 0x0

    .line 310
    return-object p1
.end method

.method protected getRadius()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 10
    .line 11
    const-class v1, Lcom/narvii/model/User;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, "Source"

    .line 33
    .line 34
    const-string v2, "Quiz Ranking Table"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    return-object v0
.end method

.method public setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public setNeedImpression(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    return-void
.end method

.method protected tagCellAuto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
