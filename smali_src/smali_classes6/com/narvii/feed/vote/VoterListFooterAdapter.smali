.class public Lcom/narvii/feed/vote/VoterListFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field protected community:Lcom/narvii/model/Community;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private dark:Z

.field private feed:Lcom/narvii/model/Feed;

.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p4, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    .line 10
    .line 11
    const-string p1, "affiliations"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 20
    .line 21
    if-nez p4, :cond_0

    .line 22
    .line 23
    const-string p1, "community"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 42
    .line 43
    :cond_0
    iput-boolean p3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->dark:Z

    .line 44
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/feed/vote/VoterListFooterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->tryJoinCommunity()V

    return-void
.end method

.method private getPublishNdcId()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 9
    .line 10
    instance-of v2, v0, Lcom/narvii/model/Blog;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    .line 18
    move-result v1

    .line 19
    :cond_1
    return v1
.end method

.method private getVoteCommunityFeed()Lcom/narvii/model/Feed;
    .locals 1

    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    return-object v0
.end method

.method private isCommunityJoined()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private openDetailList()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "CommunityLikesBar"

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-string v1, "GuestLikesBar"

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 25
    .line 26
    const-class v0, Lcom/narvii/feed/vote/VoterListFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    xor-int/2addr v1, v2

    .line 37
    .line 38
    const-string v3, "__interactionScope"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    .line 43
    const-string v1, "followingEnabled"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getVoteCommunityFeed()Lcom/narvii/model/Feed;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v3, "nvObject"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    .line 69
    move-result v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    .line 73
    :goto_1
    const-string v3, "__communityId"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 80
    move-result v1

    .line 81
    xor-int/2addr v1, v2

    .line 82
    .line 83
    const-string v2, "__model"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 90
    return-void
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

.method private tryJoinCommunity()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 9
    .line 10
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 11
    .line 12
    const-string v2, "id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    return v1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, v2

    .line 36
    :goto_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->dark:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d032a

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const p1, 0x7f0d0329

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 19
    move-result p2

    .line 20
    const/4 p3, 0x0

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a0eee

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    check-cast p2, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 42
    move-result v2

    .line 43
    xor-int/2addr v2, v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    .line 47
    move-result v1

    .line 48
    .line 49
    if-le v1, v0, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    aput-object v1, v0, p3

    .line 68
    .line 69
    .line 70
    const p3, 0x7f121155

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_1
    iget-object v2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    aput-object v1, v0, p3

    .line 97
    .line 98
    .line 99
    const p3, 0x7f121159

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object p3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    const p2, 0x7f0a036b

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 116
    .line 117
    iget-object p3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 118
    .line 119
    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    const p2, 0x7f0a037c

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    check-cast p2, Landroid/widget/TextView;

    .line 132
    .line 133
    iget-object p3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 134
    .line 135
    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    goto :goto_2

    .line 140
    .line 141
    .line 142
    :cond_2
    const p2, 0x7f0a063d

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p2

    .line 147
    const/4 v1, 0x4

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    const p2, 0x7f0a063e

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    check-cast p2, Landroid/widget/TextView;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 165
    .line 166
    .line 167
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    new-array v2, v0, [Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 176
    move-result v4

    .line 177
    xor-int/2addr v0, v4

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v0}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    .line 181
    move-result v0

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    aput-object v0, v2, p3

    .line 188
    .line 189
    .line 190
    const p3, 0x7f1207f8

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object p3

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a05f7

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->isCommunityJoined()Z

    .line 15
    move-result p1

    .line 16
    const/4 p2, 0x1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const p3, 0x7f120808

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 34
    .line 35
    .line 36
    const p3, 0x7f1201e2

    .line 37
    const/4 p4, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 41
    .line 42
    new-instance p3, Lcom/narvii/feed/vote/VoterListFooterAdapter$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {p3, p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter$1;-><init>(Lcom/narvii/feed/vote/VoterListFooterAdapter;)V

    .line 46
    .line 47
    .line 48
    const p4, 0x7f120b53

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p4, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 55
    return p2

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->openDetailList()V

    .line 59
    return p2

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 63
    move-result p1

    .line 64
    return p1
.end method
