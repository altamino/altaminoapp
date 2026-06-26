.class public Lcom/narvii/leaderboard/RankingUserListAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "RankingUserListAdapter.java"


# instance fields
.field private final TYPE_NORMAL:I

.field private final TYPE_NORMAL_QUIZ:I

.field private final TYPE_TOP3:I

.field private final TYPE_TOP3_QUIZ:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_TOP3:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_NORMAL:I

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_TOP3_QUIZ:I

    const/4 p1, 0x2

    .line 32
    iput p1, p0, Lcom/narvii/leaderboard/RankingUserListAdapter;->TYPE_NORMAL_QUIZ:I

    const-string p1, "Leaderboard"

    .line 36
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method

.method private getUserScoreInfo(Lcom/narvii/model/User;)Ljava/lang/String;
    .locals 5

    .line 143
    iget v0, p1, Lcom/narvii/model/User;->activeTime:I

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0ba4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->getMinsFormat(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 146
    iget p1, p1, Lcom/narvii/model/User;->reputation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " REP"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 150
    iget p1, p1, Lcom/narvii/model/User;->totalQuizHighestScore:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 151
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0c02

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 154
    iget p1, p1, Lcom/narvii/model/User;->consecutiveCheckInDays:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 155
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0c07

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 57
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/leaderboard"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rankingType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    xor-int/lit8 p1, p1, 0x1

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 46
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x5

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->rankingType()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

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

    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7f0b0422

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0425

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0423

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0424

    .line 113
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    if-eq v0, v4, :cond_6

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-ne v0, v3, :cond_7

    :cond_5
    const p3, 0x7f090c36

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090c10

    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    const v1, 0x7f090c2e

    .line 123
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NicknameView;

    const v2, 0x7f0909af

    .line 124
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0908f4

    .line 125
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 130
    invoke-virtual {v1, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;->getUserScoreInfo(Lcom/narvii/model/User;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_7

    .line 134
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f0e70

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Lcom/narvii/model/User;->totalQuizPlayedTimes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 115
    :cond_6
    :goto_1
    instance-of p3, p2, Lcom/narvii/widget/Top3UserLayout;

    if-eqz p3, :cond_7

    .line 116
    move-object p3, p2

    check-cast p3, Lcom/narvii/widget/Top3UserLayout;

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p3, v0, p1, v1}, Lcom/narvii/widget/Top3UserLayout;->setUser(Lcom/narvii/model/User;ILcom/narvii/app/NVContext;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/narvii/leaderboard/RankingUserListAdapter;->getUserScoreInfo(Lcom/narvii/model/User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/narvii/widget/Top3UserLayout;->setScore(Ljava/lang/String;)V

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

    .line 51
    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method
