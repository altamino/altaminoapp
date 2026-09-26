.class public final Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/FeaturedUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfluencerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic g(Lcom/narvii/amino/FeaturedUserRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->onBindViewHolder$lambda$0(Lcom/narvii/amino/FeaturedUserRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->onBindViewHolder$lambda$1(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/narvii/amino/FeaturedUserRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    const-string/jumbo p2, "send_notification"

    .line 24
    const/4 v0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    :cond_1
    return-void
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-class p1, Lcom/narvii/members/PeopleListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "Source"

    .line 15
    .line 16
    const-string v1, "Home Featured Members"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->getListSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->getListSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final getListSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getList()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/model/User;

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    :goto_0
    move-object v0, p1

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getMoodView()Lcom/narvii/widget/MoodView;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getMoodView()Lcom/narvii/widget/MoodView;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p2}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getMoodView()Lcom/narvii/widget/MoodView;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/narvii/model/User;->isOnline()Z

    .line 68
    move-result v4

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

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
    if-nez v4, :cond_1

    .line 81
    move v4, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v4, v1

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-static {v3, v4}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getOnlineDot()Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/narvii/model/User;->isOnline()Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 106
    move-result v3

    .line 107
    .line 108
    if-eqz v3, :cond_2

    .line 109
    move v1, v2

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 113
    .line 114
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 117
    .line 118
    new-instance v1, Lcom/narvii/amino/b;

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v0, p2}, Lcom/narvii/amino/b;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Lcom/narvii/model/User;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_3
    instance-of p2, p1, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;

    .line 128
    .line 129
    if-eqz p2, :cond_6

    .line 130
    .line 131
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getCommunityService()Lcom/narvii/community/CommunityService;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getCid()I

    .line 141
    move-result v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    if-eqz p2, :cond_4

    .line 148
    .line 149
    iget p2, p2, Lcom/narvii/model/Community;->membersCount:I

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move p2, v1

    .line 152
    .line 153
    :goto_2
    check-cast p1, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->getMemberCount()Landroid/widget/TextView;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->getMemberCount()Landroid/widget/TextView;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    if-lez p2, :cond_5

    .line 171
    move v1, v2

    .line 172
    .line 173
    .line 174
    :cond_5
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->getAllMembers()Landroid/view/View;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 181
    .line 182
    new-instance v0, Lcom/narvii/amino/c;

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, p2}, Lcom/narvii/amino/c;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_6
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "parent"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0d0369

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V

    .line 38
    return-object p2

    .line 39
    .line 40
    :cond_0
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0d0368

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V

    .line 66
    return-object p2
.end method
