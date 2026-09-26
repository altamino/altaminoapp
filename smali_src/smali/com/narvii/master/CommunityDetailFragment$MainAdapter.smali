.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method

.method private addAdViewFriendlyObstructions(Landroid/app/Activity;Lai/medialab/medialabads2/banners/MediaLabAdView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f89

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 27
    .line 28
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/ad/MediaLabAdsUtilsKt;->findFullObstructions(Landroid/view/ViewGroup;)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method private createMoreView(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d011b

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-object p1
.end method

.method private createTopicView(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d0113

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/narvii/story/widgets/StoryTopicView;

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    mul-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    div-int/lit8 v0, v0, 0x3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setTextMaxWidth(I)V

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Lcom/narvii/model/story/StoryTopic;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 51
    return-object p2
.end method

.method static bridge synthetic n(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->onInfluencerClicked(Lcom/narvii/model/User;)V

    return-void
.end method

.method private onInfluencerClicked(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/model/Community;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    const-class v1, Lcom/narvii/user/profile/UserProfileFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "id"

    .line 21
    .line 22
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    const-string v2, "__communityId"

    .line 28
    .line 29
    iget v3, v0, Lcom/narvii/model/Community;->id:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    const-string v2, "prefetch"

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    const-string p1, "Source"

    .line 44
    .line 45
    const-string v2, "Community Detail Page (Influencer)"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->x(Lcom/narvii/master/CommunityDetailFragment;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    new-instance p1, Lcom/narvii/master/MasterHelper;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v2}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 64
    .line 65
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/narvii/master/MasterHelper;->safeStartActivity(Landroid/content/Intent;I)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    const v0, 0x7f120808

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f1201e2

    .line 88
    const/4 v2, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0, v1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    const v1, 0x7f120b53

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 106
    :goto_0
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


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/model/Community;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 67
    .line 68
    const-string/jumbo v2, "showJoin"

    .line 69
    const/4 v3, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->u(Lcom/narvii/master/CommunityDetailFragment;)Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    sget-object v2, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    :cond_3
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->AD_UNIT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_2

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    check-cast v1, Lcom/narvii/community/FullCommunityResponse;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v1, :cond_5

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_5
    iget-object v1, v0, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 131
    .line 132
    sget-object v2, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v2

    .line 140
    .line 141
    if-nez v2, :cond_6

    .line 142
    .line 143
    new-instance v2, Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    iget-object v0, v0, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 155
    move-result v0

    .line 156
    .line 157
    if-lez v0, :cond_7

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    goto :goto_0

    .line 162
    .line 163
    .line 164
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    instance-of p1, p1, Lcom/narvii/widget/NVListView;

    .line 181
    .line 182
    if-eqz p1, :cond_9

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    .line 197
    const v1, 0x7f0600c3

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 201
    move-result v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 205
    goto :goto_2

    .line 206
    .line 207
    :cond_8
    :goto_1
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_9
    :goto_2
    return-void
.end method

.method public createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0600c3

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p1
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a06eb

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "community/info"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string/jumbo v2, "withInfluencerList"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string/jumbo v1, "withTopicList"

    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "influencerListOrderStrategy"

    .line 32
    .line 33
    const-string v2, "fansCount"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 40
    .line 41
    iget v1, v1, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0}, Lcom/narvii/detail/DetailPushUtils;->addPushTrackIdInRequest(Lcom/narvii/util/http/ApiRequest$Builder;Lcom/narvii/detail/DetailAdapter;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0600c3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a0e51

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Landroid/widget/TextView;

    .line 20
    const/4 p3, -0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    const v2, 0x7f0a0e9e

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    const/4 v5, 0x0

    .line 11
    .line 12
    if-ne p1, v0, :cond_3

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0d010d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    const p2, 0x7f0a06d5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Lcom/narvii/model/Community;

    .line 35
    .line 36
    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    check-cast p3, Lcom/narvii/model/Community;

    .line 55
    .line 56
    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const p2, 0x7f0a0946

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    check-cast p3, Lcom/narvii/model/Community;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    const-string p2, "language"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    check-cast p2, Lcom/narvii/language/LanguageManager;

    .line 90
    .line 91
    .line 92
    const p3, 0x7f0a0377

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    check-cast p3, Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    check-cast v0, Lcom/narvii/model/Community;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    const p2, 0x7f0a0364

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    check-cast p2, Lcom/narvii/widget/CommunityActivenessBar;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 126
    move-result-object p3

    .line 127
    .line 128
    if-eqz p3, :cond_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    check-cast p3, Lcom/narvii/model/Community;

    .line 135
    .line 136
    iget p3, p3, Lcom/narvii/model/Community;->joinType:I

    .line 137
    .line 138
    if-eq p3, v1, :cond_0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 142
    move-result-object p3

    .line 143
    .line 144
    check-cast p3, Lcom/narvii/model/Community;

    .line 145
    .line 146
    iget p3, p3, Lcom/narvii/model/Community;->communityHeat:F

    .line 147
    const/4 v0, 0x0

    .line 148
    .line 149
    cmpl-float p3, p3, v0

    .line 150
    .line 151
    if-ltz p3, :cond_0

    .line 152
    move p3, v5

    .line 153
    goto :goto_0

    .line 154
    :cond_0
    move p3, v4

    .line 155
    .line 156
    .line 157
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 161
    move-result-object p3

    .line 162
    .line 163
    check-cast p3, Lcom/narvii/model/Community;

    .line 164
    .line 165
    iget p3, p3, Lcom/narvii/model/Community;->communityHeat:F

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Lcom/narvii/widget/CommunityActivenessBar;->setActiveness(F)V

    .line 169
    .line 170
    .line 171
    const p2, 0x7f0a036f

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object p2

    .line 176
    .line 177
    check-cast p2, Landroid/widget/TextView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 181
    move-result-object p3

    .line 182
    .line 183
    check-cast p3, Lcom/narvii/model/Community;

    .line 184
    .line 185
    iget-object p3, p3, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    move-result-object p3

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 192
    .line 193
    new-array v1, v3, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object p3, v1, v5

    .line 196
    .line 197
    .line 198
    const v2, 0x7f120141

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    new-instance v1, Landroid/text/SpannableString;

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    move-result v2

    .line 212
    .line 213
    if-nez v2, :cond_1

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 217
    move-result p3

    .line 218
    .line 219
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 220
    .line 221
    .line 222
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 226
    move-result v0

    .line 227
    .line 228
    const/16 v3, 0x21

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2, p3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 232
    .line 233
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 234
    .line 235
    .line 236
    const v2, 0x3f333333    # 0.7f

    .line 237
    .line 238
    .line 239
    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0, v5, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 243
    .line 244
    new-instance v0, Lcom/narvii/util/AlignSuperscriptSpan;

    .line 245
    .line 246
    .line 247
    const v6, 0x3eb33333    # 0.35f

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v6, v2}, Lcom/narvii/util/AlignSuperscriptSpan;-><init>(FF)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v0, v5, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 254
    .line 255
    .line 256
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    const p2, 0x7f0a0375

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    move-result-object p2

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 272
    move-result-object p3

    .line 273
    .line 274
    check-cast p3, Lcom/narvii/model/Community;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3}, Lcom/narvii/model/Community;->shouldShowLock()Z

    .line 278
    move-result p3

    .line 279
    .line 280
    if-eqz p3, :cond_2

    .line 281
    move v4, v5

    .line 282
    .line 283
    .line 284
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-object p1

    .line 286
    .line 287
    :cond_3
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 288
    .line 289
    if-ne p1, v0, :cond_5

    .line 290
    .line 291
    .line 292
    const p1, 0x7f0d0110

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 296
    move-result-object p1

    .line 297
    .line 298
    check-cast p1, Landroid/widget/TextView;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 302
    move-result-object p2

    .line 303
    .line 304
    check-cast p2, Lcom/narvii/model/Community;

    .line 305
    .line 306
    iget-object p2, p2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    move-result p2

    .line 311
    .line 312
    if-eqz p2, :cond_4

    .line 313
    goto :goto_1

    .line 314
    :cond_4
    move v4, v5

    .line 315
    .line 316
    .line 317
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 321
    move-result-object p2

    .line 322
    .line 323
    check-cast p2, Lcom/narvii/model/Community;

    .line 324
    .line 325
    iget-object p2, p2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-object p1

    .line 330
    .line 331
    :cond_5
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 332
    .line 333
    if-ne p1, v0, :cond_6

    .line 334
    .line 335
    .line 336
    const p1, 0x7f0d0157

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 340
    move-result-object p1

    .line 341
    return-object p1

    .line 342
    .line 343
    :cond_6
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 344
    .line 345
    if-ne p1, v0, :cond_7

    .line 346
    .line 347
    .line 348
    const p1, 0x7f0d0111

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 352
    move-result-object p1

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 356
    move-result-object p2

    .line 357
    .line 358
    check-cast p2, Landroid/widget/TextView;

    .line 359
    .line 360
    .line 361
    const p3, 0x7f0600c3

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 365
    return-object p1

    .line 366
    .line 367
    :cond_7
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 368
    .line 369
    if-ne p1, v0, :cond_8

    .line 370
    .line 371
    .line 372
    const p1, 0x7f0d010c

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 376
    move-result-object p1

    .line 377
    .line 378
    .line 379
    const p2, 0x7f0a04ff

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 383
    move-result-object p2

    .line 384
    .line 385
    check-cast p2, Landroid/widget/TextView;

    .line 386
    .line 387
    iget-object p3, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    const p2, 0x7f0a0c38

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 397
    move-result-object p2

    .line 398
    .line 399
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    return-object p1

    .line 404
    .line 405
    :cond_8
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 406
    .line 407
    if-ne p1, v0, :cond_9

    .line 408
    .line 409
    .line 410
    const p1, 0x7f0d016d

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 414
    move-result-object p1

    .line 415
    return-object p1

    .line 416
    .line 417
    :cond_9
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 418
    .line 419
    if-ne p1, v0, :cond_b

    .line 420
    .line 421
    .line 422
    const p1, 0x7f0d03e4

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 426
    move-result-object p1

    .line 427
    .line 428
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 429
    .line 430
    .line 431
    const p3, 0x7f0a078b

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 435
    move-result-object p3

    .line 436
    .line 437
    .line 438
    invoke-static {p2, p3}, Lcom/narvii/master/CommunityDetailFragment;->J(Lcom/narvii/master/CommunityDetailFragment;Landroid/view/View;)V

    .line 439
    .line 440
    .line 441
    const p2, 0x7f0a078a

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 445
    move-result-object p3

    .line 446
    .line 447
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 448
    .line 449
    .line 450
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    move-result-object p2

    .line 455
    .line 456
    check-cast p2, Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 457
    .line 458
    .line 459
    const p3, 0x7f0a0788

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 463
    move-result-object p3

    .line 464
    .line 465
    check-cast p3, Landroid/widget/TextView;

    .line 466
    .line 467
    .line 468
    const v0, 0x7f0a078c

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 472
    move-result-object v0

    .line 473
    .line 474
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 475
    .line 476
    .line 477
    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    .line 478
    move-result-object v2

    .line 479
    .line 480
    .line 481
    invoke-static {v1, v2, p2, p3, v0}, Lcom/narvii/master/CommunityDetailFragment;->V(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V

    .line 482
    .line 483
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 484
    .line 485
    .line 486
    invoke-static {p3}, Lcom/narvii/master/CommunityDetailFragment;->y(Lcom/narvii/master/CommunityDetailFragment;)Z

    .line 487
    move-result p3

    .line 488
    .line 489
    if-eqz p3, :cond_a

    .line 490
    .line 491
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 492
    .line 493
    .line 494
    invoke-static {p3}, Lcom/narvii/master/CommunityDetailFragment;->A(Lcom/narvii/master/CommunityDetailFragment;)I

    .line 495
    move-result p3

    .line 496
    .line 497
    .line 498
    invoke-virtual {p2, p3}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 499
    goto :goto_2

    .line 500
    .line 501
    .line 502
    :cond_a
    invoke-virtual {p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->cancelProgress()V

    .line 503
    :goto_2
    return-object p1

    .line 504
    .line 505
    :cond_b
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 506
    .line 507
    if-ne p1, v0, :cond_c

    .line 508
    .line 509
    .line 510
    const p1, 0x7f0d03e5

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 514
    move-result-object p1

    .line 515
    return-object p1

    .line 516
    .line 517
    :cond_c
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 518
    .line 519
    if-ne p1, v0, :cond_f

    .line 520
    .line 521
    .line 522
    const p1, 0x7f0d03e3

    .line 523
    .line 524
    .line 525
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 526
    move-result-object p1

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 530
    move-result-object p2

    .line 531
    .line 532
    check-cast p2, Lcom/narvii/model/Community;

    .line 533
    .line 534
    .line 535
    const p3, 0x7f0a0720

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 539
    move-result-object p3

    .line 540
    .line 541
    check-cast p3, Lcom/narvii/widget/InfluencerRecyclerView;

    .line 542
    .line 543
    if-nez p2, :cond_d

    .line 544
    const/4 p2, 0x0

    .line 545
    goto :goto_3

    .line 546
    .line 547
    :cond_d
    iget-object p2, p2, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 548
    .line 549
    .line 550
    :goto_3
    invoke-virtual {p3, p2}, Lcom/narvii/widget/InfluencerRecyclerView;->updateInfluencerList(Ljava/util/List;)V

    .line 551
    .line 552
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 553
    .line 554
    iget-object v0, p2, Lcom/narvii/master/CommunityDetailFragment;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    .line 555
    .line 556
    if-nez v0, :cond_e

    .line 557
    .line 558
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;

    .line 559
    .line 560
    .line 561
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V

    .line 562
    .line 563
    iput-object v0, p2, Lcom/narvii/master/CommunityDetailFragment;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    .line 564
    .line 565
    :cond_e
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 566
    .line 567
    iget-object p2, p2, Lcom/narvii/master/CommunityDetailFragment;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    .line 568
    .line 569
    .line 570
    invoke-virtual {p3, p2}, Lcom/narvii/widget/InfluencerRecyclerView;->setOnUserClickListener(Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;)V

    .line 571
    return-object p1

    .line 572
    .line 573
    :cond_f
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 574
    .line 575
    if-ne p1, v0, :cond_14

    .line 576
    .line 577
    .line 578
    const p1, 0x7f0d0112

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 582
    move-result-object p1

    .line 583
    .line 584
    .line 585
    const p2, 0x7f0a05de

    .line 586
    .line 587
    .line 588
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 589
    move-result-object p2

    .line 590
    .line 591
    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 595
    .line 596
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 597
    .line 598
    iget-boolean p3, p3, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    .line 599
    .line 600
    if-eqz p3, :cond_10

    .line 601
    goto :goto_4

    .line 602
    .line 603
    .line 604
    :cond_10
    const v1, 0x7fffffff

    .line 605
    .line 606
    .line 607
    :goto_4
    invoke-virtual {p2, v1}, Lcom/narvii/util/layouts/NVFlowLayout;->setMaxTagLines(I)V

    .line 608
    .line 609
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 610
    .line 611
    iget-boolean p3, p3, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    .line 612
    .line 613
    .line 614
    invoke-virtual {p2, p3}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 618
    move-result-object p3

    .line 619
    .line 620
    check-cast p3, Lcom/narvii/model/Community;

    .line 621
    .line 622
    if-eqz p3, :cond_12

    .line 623
    .line 624
    iget-object p3, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 625
    .line 626
    if-eqz p3, :cond_12

    .line 627
    .line 628
    .line 629
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 630
    move-result-object p3

    .line 631
    .line 632
    .line 633
    :cond_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    move-result v0

    .line 635
    .line 636
    if-eqz v0, :cond_12

    .line 637
    .line 638
    .line 639
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    move-result-object v0

    .line 641
    .line 642
    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    .line 643
    .line 644
    .line 645
    invoke-direct {p0, v0, p2}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->createTopicView(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;

    .line 646
    move-result-object v0

    .line 647
    .line 648
    .line 649
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 650
    add-int/2addr v5, v3

    .line 651
    .line 652
    const/16 v0, 0xa

    .line 653
    .line 654
    if-ne v5, v0, :cond_11

    .line 655
    .line 656
    :cond_12
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 657
    .line 658
    iget-boolean p3, p3, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    .line 659
    .line 660
    if-eqz p3, :cond_13

    .line 661
    .line 662
    .line 663
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 664
    move-result p3

    .line 665
    .line 666
    if-eqz p3, :cond_13

    .line 667
    .line 668
    .line 669
    invoke-direct {p0, p2}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->createMoreView(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;

    .line 670
    move-result-object p3

    .line 671
    .line 672
    .line 673
    invoke-virtual {p2, p3}, Lcom/narvii/util/layouts/NVFlowLayout;->addMoreView(Landroid/view/View;)V

    .line 674
    :cond_13
    return-object p1

    .line 675
    .line 676
    :cond_14
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->AD_UNIT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 677
    .line 678
    if-ne p1, v0, :cond_16

    .line 679
    .line 680
    .line 681
    const p1, 0x7f0d0040

    .line 682
    .line 683
    .line 684
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 685
    move-result-object p1

    .line 686
    .line 687
    .line 688
    const p2, 0x7f0a093d

    .line 689
    .line 690
    .line 691
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 692
    move-result-object p2

    .line 693
    .line 694
    check-cast p2, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 695
    .line 696
    const-string p3, "feed_2"

    .line 697
    .line 698
    sget-object v0, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2, p3, v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->initialize(Ljava/lang/String;Lai/medialab/medialabads2/data/AdSize;)V

    .line 702
    .line 703
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 704
    .line 705
    .line 706
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 707
    move-result-object p3

    .line 708
    .line 709
    .line 710
    invoke-direct {p0, p3, p2}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->addAdViewFriendlyObstructions(Landroid/app/Activity;Lai/medialab/medialabads2/banners/MediaLabAdView;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p2}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 714
    move-result p3

    .line 715
    .line 716
    if-eqz p3, :cond_15

    .line 717
    .line 718
    .line 719
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :cond_15
    return-object p1

    .line 721
    .line 722
    .line 723
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 724
    move-result-object p1

    .line 725
    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->AD_UNIT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/Community;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Media;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/model/Community;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 18
    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 23
    move-result v2

    .line 24
    const/4 v3, -0x1

    .line 25
    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    .line 28
    check-cast p3, Lcom/narvii/model/Media;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/narvii/model/Media;->isVideo()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {p3}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    const-class p3, Lcom/narvii/media/MediaGalleryActivity;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    const-string p3, "parent"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    const-string p2, "parentClass"

    .line 69
    .line 70
    const-class p3, Lcom/narvii/model/Community;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    .line 75
    const-string p2, "list"

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    const-string p2, "position"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 91
    :goto_1
    return v1

    .line 92
    .line 93
    :cond_2
    if-eqz p5, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 97
    move-result v0

    .line 98
    .line 99
    .line 100
    const v2, 0x7f0a0c38

    .line 101
    .line 102
    if-ne v0, v2, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->onErrorRetry()V

    .line 106
    .line 107
    :cond_3
    if-eqz p5, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 111
    move-result v0

    .line 112
    .line 113
    .line 114
    const v2, 0x7f0a036f

    .line 115
    .line 116
    if-ne v0, v2, :cond_4

    .line 117
    .line 118
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    const-string p2, "clipboard"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    check-cast p1, Landroid/content/ClipboardManager;

    .line 129
    .line 130
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Lcom/narvii/master/CommunityDetailFragment;->B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    const p2, 0x7f1210bd

    .line 147
    const/4 p3, 0x0

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    return v1

    .line 156
    .line 157
    :cond_4
    if-eqz p5, :cond_5

    .line 158
    .line 159
    .line 160
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 161
    move-result v0

    .line 162
    .line 163
    .line 164
    const v2, 0x7f0a078a

    .line 165
    .line 166
    if-ne v0, v2, :cond_5

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->M(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 172
    return v1

    .line 173
    .line 174
    .line 175
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 176
    move-result p1

    .line 177
    return p1
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->D(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/community/FullCommunityResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/community/FullCommunityResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/model/Community;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v0}, Lcom/narvii/community/FullCommunityResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->x(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "isRequested"

    .line 4
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/community/FullCommunityResponse;->hasPendingMembershipRequestWithCurrentUser:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->setResponse(Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->setObject(Lcom/narvii/model/Community;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/community/FullCommunityResponse;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->L(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;)V

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 6
    iget-boolean v1, p1, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->F(Lcom/narvii/master/CommunityDetailFragment;Z)V

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 7
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->x(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v0

    const-string v1, "affiliations"

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 9
    iget v2, v2, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {v0, v2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 10
    iget-boolean v2, p1, Lcom/narvii/community/FullCommunityResponse;->hasPendingMembershipRequestWithCurrentUser:Z

    invoke-static {v0, v2}, Lcom/narvii/master/CommunityDetailFragment;->I(Lcom/narvii/master/CommunityDetailFragment;Z)V

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 11
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->x(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 13
    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 14
    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    iget-object p1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_4
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 19
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->S(Lcom/narvii/master/CommunityDetailFragment;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 20
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->U(Lcom/narvii/master/CommunityDetailFragment;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 21
    iget-boolean v0, p1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberListRequested:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberListRequested:Z

    .line 23
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->O(Lcom/narvii/master/CommunityDetailFragment;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->setResponse(Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method

.method public showShareMediaBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
