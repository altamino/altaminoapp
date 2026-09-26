.class public Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentFooterAdapter"
.end annotation


# instance fields
.field communityService:Lcom/narvii/community/CommunityService;

.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "community"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 16
    return-void
.end method

.method public static synthetic f(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->lambda$onItemClick$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->openDetailList()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->tryJoinCommunity()V

    .line 4
    return-void
.end method

.method private openDetailList()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1, v1}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v1, v2

    .line 18
    .line 19
    const-string v3, "__interactionScope"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "community"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/community/CommunityService;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    iget v4, v4, Lcom/narvii/model/Feed;->ndcId:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-string v1, "__model"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 64
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
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 37
    .line 38
    const-string v2, "id"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getPublishNdcId()I

    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    .line 57
    :goto_0
    const-string v2, "__communityId"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 64
    move-result v1

    .line 65
    .line 66
    xor-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    const-string v2, "__model"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    xor-int/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    return v2
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
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d0329

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f0d032a

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 23
    move-result p2

    .line 24
    const/4 p3, 0x0

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 46
    .line 47
    const-string v1, "__community"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    const-class v1, Lcom/narvii/model/Community;

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Lcom/narvii/model/Community;

    .line 60
    .line 61
    :cond_1
    if-eqz p2, :cond_4

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0a0eee

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 80
    move-result v3

    .line 81
    xor-int/2addr v3, v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    .line 85
    move-result v2

    .line 86
    .line 87
    if-le v2, v0, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    aput-object v2, v0, p3

    .line 100
    .line 101
    .line 102
    const p3, 0x7f121153

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object p3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    aput-object v2, v0, p3

    .line 123
    .line 124
    .line 125
    const p3, 0x7f121157

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object p3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    const p3, 0x7f0a036b

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 142
    .line 143
    iget-object v0, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    const p3, 0x7f0a037c

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object p3

    .line 154
    .line 155
    check-cast p3, Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    goto :goto_2

    .line 167
    .line 168
    .line 169
    :cond_3
    const p2, 0x7f0a063d

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object p2

    .line 174
    const/4 v1, 0x4

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    const p2, 0x7f0a063e

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object p2

    .line 185
    .line 186
    check-cast p2, Landroid/widget/TextView;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    new-array v2, v0, [Ljava/lang/Object;

    .line 196
    .line 197
    iget-object v3, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 201
    move-result-object v3

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 205
    move-result v4

    .line 206
    xor-int/2addr v0, v4

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v0}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    .line 210
    move-result v0

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    aput-object v0, v2, p3

    .line 217
    .line 218
    .line 219
    const p3, 0x7f1207f6

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    move-result-object p3

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p5, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    const p2, 0x7f0a05f7

    .line 10
    .line 11
    if-ne p1, p2, :cond_2

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string p2, "CommunityCommentsBar"

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const-string p2, "GuestCommentsBar"

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 36
    .line 37
    const-string p1, "affiliations"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 55
    move-result p1

    .line 56
    const/4 p2, 0x1

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    const p3, 0x7f120808

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 74
    .line 75
    .line 76
    const p3, 0x7f1201e2

    .line 77
    const/4 p4, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 81
    .line 82
    new-instance p3, Lcom/narvii/detail/i;

    .line 83
    .line 84
    .line 85
    invoke-direct {p3, p0}, Lcom/narvii/detail/i;-><init>(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V

    .line 86
    .line 87
    .line 88
    const p4, 0x7f120b53

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p4, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 95
    return p2

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->openDetailList()V

    .line 99
    return p2

    .line 100
    :cond_2
    const/4 p1, 0x0

    .line 101
    return p1
.end method
