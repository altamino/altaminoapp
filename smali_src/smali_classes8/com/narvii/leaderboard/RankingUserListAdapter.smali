.class public Lcom/narvii/leaderboard/RankingUserListAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SourceFile"


# instance fields
.field private final TYPE_NORMAL:I

.field private final TYPE_NORMAL_QUIZ:I

.field private final TYPE_TOP3:I

.field private final TYPE_TOP3_QUIZ:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_TOP3:I

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_NORMAL:I

    .line 10
    const/4 p1, 0x3

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_TOP3_QUIZ:I

    .line 13
    const/4 p1, 0x2

    .line 14
    .line 15
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_NORMAL_QUIZ:I

    .line 16
    .line 17
    const-string p1, "Leaderboard"

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private getUserScoreInfo(Lcom/narvii/model/User;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/User;->activeTime:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    const v2, 0x7f120ca8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->getMinsFormat(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x3

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget p1, p1, Lcom/narvii/model/User;->reputation:I

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, " REP"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x5

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x1

    .line 66
    .line 67
    if-ne v1, v2, :cond_1

    .line 68
    .line 69
    iget p1, p1, Lcom/narvii/model/User;->totalQuizHighestScore:I

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    new-array v2, v4, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    aput-object p1, v2, v3

    .line 96
    .line 97
    .line 98
    const p1, 0x7f120d2d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    .line 107
    move-result v1

    .line 108
    const/4 v2, 0x4

    .line 109
    .line 110
    if-ne v1, v2, :cond_2

    .line 111
    .line 112
    iget p1, p1, Lcom/narvii/model/User;->consecutiveCheckInDays:I

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    new-array v2, v4, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    aput-object p1, v2, v3

    .line 139
    .line 140
    .line 141
    const p1, 0x7f120d32

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "/community/leaderboard"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "rankingType"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    .line 43
    xor-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object p1

    .line 55
    return-object p1
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

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x3

    .line 21
    .line 22
    if-ge p1, v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-ne p1, v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    .line 35
    move-result p1

    .line 36
    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    const/4 p1, 0x2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_1
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0d0458

    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    if-eq v0, v4, :cond_2

    .line 15
    .line 16
    if-eq v0, v3, :cond_1

    .line 17
    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    const v1, 0x7f0d045b

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    const v1, 0x7f0d0459

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_2
    const v1, 0x7f0d045a

    .line 31
    .line 32
    .line 33
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    if-eq v0, v4, :cond_6

    .line 37
    .line 38
    if-ne v0, v2, :cond_4

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_4
    if-eqz v0, :cond_5

    .line 42
    .line 43
    if-ne v0, v3, :cond_7

    .line 44
    .line 45
    .line 46
    :cond_5
    const p3, 0x7f0a0f58

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    check-cast p3, Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0f36

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0a0f50

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Lcom/narvii/widget/NicknameView;

    .line 71
    .line 72
    .line 73
    const v2, 0x7f0a0c77

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    check-cast v2, Landroid/widget/TextView;

    .line 80
    .line 81
    .line 82
    const v3, 0x7f0a0bb3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    check-cast v3, Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    .line 95
    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 96
    move-result v5

    .line 97
    add-int/2addr v5, v4

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    check-cast p1, Lcom/narvii/model/User;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;->getUserScoreInfo(Lcom/narvii/model/User;)Ljava/lang/String;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 125
    move-result-object p3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object p3

    .line 130
    .line 131
    new-array v0, v4, [Ljava/lang/Object;

    .line 132
    .line 133
    iget p1, p1, Lcom/narvii/model/User;->totalQuizPlayedTimes:I

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object p1

    .line 138
    const/4 v1, 0x0

    .line 139
    .line 140
    aput-object p1, v0, v1

    .line 141
    .line 142
    .line 143
    const p1, 0x7f120f91

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    goto :goto_2

    .line 152
    .line 153
    :cond_6
    :goto_1
    instance-of p3, p2, Lcom/narvii/widget/Top3UserLayout;

    .line 154
    .line 155
    if-eqz p3, :cond_7

    .line 156
    move-object p3, p2

    .line 157
    .line 158
    check-cast p3, Lcom/narvii/widget/Top3UserLayout;

    .line 159
    move-object v0, p1

    .line 160
    .line 161
    check-cast v0, Lcom/narvii/model/User;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 169
    move-result p1

    .line 170
    .line 171
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, v0, p1, v1}, Lcom/narvii/widget/Top3UserLayout;->setUser(Lcom/narvii/model/User;ILcom/narvii/app/NVContext;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->getUserScoreInfo(Lcom/narvii/model/User;)Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, p1}, Lcom/narvii/widget/Top3UserLayout;->setScore(Ljava/lang/String;)V

    .line 182
    :cond_7
    :goto_2
    return-object p2
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected rankingType()I
    .locals 1

    const/4 v0, 0x1

    return v0
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
