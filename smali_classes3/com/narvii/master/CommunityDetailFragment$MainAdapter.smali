.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "CommunityDetailFragment.java"


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

    .line 1054
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 1055
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 1056
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 1052
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->onInfluencerClicked(Lcom/narvii/model/User;)V

    return-void
.end method

.method private checkActivation()Z
    .locals 3

    .line 1416
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    .line 1417
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1418
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0dc9

    .line 1420
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0d7d

    .line 1421
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 1422
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0d7c

    .line 1423
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$5;

    invoke-direct {v2, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$5;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1432
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private containerInfluencer(Lcom/narvii/model/Community;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1179
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Community;->getInfluencer()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private createMoreView(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 3

    .line 1347
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1348
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private createTopicView(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 3

    .line 1359
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/widgets/StoryTopicView;

    const/4 v0, 0x1

    .line 1360
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1361
    invoke-virtual {p2, p1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 1362
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setTextMaxWidth(I)V

    .line 1363
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    return-object p2
.end method

.method private onInfluencerClicked(Lcom/narvii/model/User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-nez v0, :cond_1

    return-void

    .line 1206
    :cond_1
    const-class v1, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 1207
    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    const-string v3, "__communityId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1209
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "prefetch"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v2, "Community Detail Page (Influencer)"

    .line 1210
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$500(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1212
    new-instance p1, Lcom/narvii/master/MasterHelper;

    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p1, v2}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v1, v0}, Lcom/narvii/master/MasterHelper;->safeStartActivity(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1214
    :cond_2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f075b

    .line 1215
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0193

    const/4 v2, 0x0

    .line 1216
    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x7f0f0aa0

    .line 1217
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Landroid/content/Intent;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1223
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
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

    .line 1131
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_9

    .line 1133
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1135
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1136
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1139
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    :cond_1
    iget-object v1, v0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1142
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v2, 0x1

    const-string v3, "showJoin"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->access$1700(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1145
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    sget-object v1, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_3
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1151
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1153
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/FullCommunityResponse;

    iget-object v1, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_1

    .line 1156
    :cond_5
    iget-object v1, v0, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 1157
    sget-object v2, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    iget-object v0, v0, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1161
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1162
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1164
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1165
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/widget/NVListView;

    if-eqz p1, :cond_9

    .line 1168
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600a3

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    goto :goto_2

    .line 1154
    :cond_8
    :goto_1
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1460
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0600a3

    .line 1461
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p1
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1453
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1454
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    const v1, 0x7f090571

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1120
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "community/info"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "withInfluencerList"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "withTopicList"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "influencerListOrderStrategy"

    const-string v2, "fansCount"

    .line 1123
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget v1, v1, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 1124
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1125
    invoke-static {v0, p0}, Lcom/narvii/detail/DetailPushUtils;->addPushTrackIdInRequest(Lcom/narvii/util/http/ApiRequest$Builder;Lcom/narvii/detail/DetailAdapter;)V

    .line 1126
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
    .locals 0

    .line 1445
    invoke-super/range {p0 .. p6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0600a3

    .line 1446
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const p2, 0x7f090b5b

    .line 1447
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1229
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x2

    const v2, 0x7f090b9a

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne p1, v0, :cond_3

    const p1, 0x7f0b00f7

    .line 1230
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090562

    .line 1231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1232
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1233
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 1234
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0906e5

    .line 1235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p3}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "language"

    .line 1236
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/language/LanguageManager;

    const p3, 0x7f0902b1

    .line 1237
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09029c

    .line 1238
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommunityActivenessBar;

    .line 1239
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    iget p3, p3, Lcom/narvii/model/Community;->joinType:I

    if-eq p3, v1, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    iget p3, p3, Lcom/narvii/model/Community;->communityHeat:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 1239
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1242
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    iget p3, p3, Lcom/narvii/model/Community;->communityHeat:F

    invoke-virtual {p2, p3}, Lcom/narvii/widget/CommunityActivenessBar;->setActiveness(F)V

    const p2, 0x7f0902a8

    .line 1244
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1245
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1246
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const v1, 0x7f0f010c

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1249
    invoke-virtual {v0, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    .line 1250
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, p3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1251
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v0, v5, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1252
    new-instance v0, Lcom/narvii/util/AlignSuperscriptSpan;

    const v6, 0x3eb33333    # 0.35f

    invoke-direct {v0, v6, v2}, Lcom/narvii/util/AlignSuperscriptSpan;-><init>(FF)V

    invoke-virtual {v1, v0, v5, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1254
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902af

    .line 1257
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p3}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 1260
    :cond_3
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_5

    const p1, 0x7f0b00fa

    .line 1261
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1262
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    iget-object p2, p2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1263
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    iget-object p2, p2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 1266
    :cond_5
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_6

    const p1, 0x7f0b0138

    .line 1267
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1270
    :cond_6
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_7

    const p1, 0x7f0b00fb

    .line 1271
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1272
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0600a3

    .line 1273
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object p1

    .line 1276
    :cond_7
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_8

    const p1, 0x7f0b00f6

    .line 1277
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903fd

    .line 1278
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09097a

    .line 1279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 1282
    :cond_8
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_9

    const p1, 0x7f0b014e

    .line 1283
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1285
    :cond_9
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_b

    const p1, 0x7f0b03ad

    .line 1286
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1287
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const p3, 0x7f09060d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/narvii/master/CommunityDetailFragment;->access$1902(Lcom/narvii/master/CommunityDetailFragment;Landroid/view/View;)Landroid/view/View;

    const p2, 0x7f09060c

    .line 1288
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1289
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/JoinCommunityProgressLayout;

    const p3, 0x7f09060a

    .line 1290
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f09060e

    .line 1291
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1292
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object v2

    invoke-static {v1, v2, p2, p3, v0}, Lcom/narvii/master/CommunityDetailFragment;->access$2000(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V

    .line 1293
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p3}, Lcom/narvii/master/CommunityDetailFragment;->access$2100(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1294
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p3}, Lcom/narvii/master/CommunityDetailFragment;->access$2200(Lcom/narvii/master/CommunityDetailFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    goto :goto_2

    .line 1296
    :cond_a
    invoke-virtual {p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->cancelProgress()V

    :goto_2
    return-object p1

    .line 1300
    :cond_b
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_c

    const p1, 0x7f0b03ae

    .line 1301
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1304
    :cond_c
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_f

    const p1, 0x7f0b03ac

    .line 1305
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1306
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    const p3, 0x7f090599

    .line 1307
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/InfluencerRecyclerView;

    if-nez p2, :cond_d

    const/4 p2, 0x0

    goto :goto_3

    .line 1308
    :cond_d
    iget-object p2, p2, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    :goto_3
    invoke-virtual {p3, p2}, Lcom/narvii/widget/InfluencerRecyclerView;->updateInfluencerList(Ljava/util/List;)V

    .line 1309
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, p2, Lcom/narvii/master/CommunityDetailFragment;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    if-nez v0, :cond_e

    .line 1310
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;-><init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V

    iput-object v0, p2, Lcom/narvii/master/CommunityDetailFragment;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    .line 1317
    :cond_e
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p2, p2, Lcom/narvii/master/CommunityDetailFragment;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    invoke-virtual {p3, p2}, Lcom/narvii/widget/InfluencerRecyclerView;->setOnUserClickListener(Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;)V

    return-object p1

    .line 1321
    :cond_f
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_14

    const p1, 0x7f0b00fc

    .line 1322
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09049c

    .line 1323
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 1324
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1325
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean p3, p3, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    if-eqz p3, :cond_10

    goto :goto_4

    :cond_10
    const v1, 0x7fffffff

    :goto_4
    invoke-virtual {p2, v1}, Lcom/narvii/util/layouts/NVFlowLayout;->setMaxTagLines(I)V

    .line 1326
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean p3, p3, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    invoke-virtual {p2, p3}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    .line 1327
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    if-eqz p3, :cond_12

    .line 1329
    iget-object p3, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    if-eqz p3, :cond_12

    .line 1330
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    .line 1331
    invoke-direct {p0, v0, p2}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->createTopicView(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v5, v3

    const/16 v0, 0xa

    if-ne v5, v0, :cond_11

    .line 1338
    :cond_12
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean p3, p3, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    if-eqz p3, :cond_13

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-eqz p3, :cond_13

    .line 1339
    invoke-direct {p0, p2}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->createMoreView(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/util/layouts/NVFlowLayout;->addMoreView(Landroid/view/View;)V

    :cond_13
    return-object p1

    .line 1343
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

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

    .line 1184
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 1185
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    sget-object v0, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 1071
    const-class v0, Lcom/narvii/model/Community;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1377
    instance-of v0, p3, Lcom/narvii/model/Media;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1378
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1379
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_2

    .line 1381
    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1382
    check-cast p3, Lcom/narvii/model/Media;

    invoke-virtual {p3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1383
    invoke-static {p3}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1385
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1387
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "parent"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-class p2, Lcom/narvii/model/Community;

    const-string p3, "parentClass"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1389
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "list"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "position"

    .line 1390
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1391
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v1

    :cond_2
    if-eqz p5, :cond_3

    .line 1396
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f09097a

    if-ne v0, v2, :cond_3

    .line 1397
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->onErrorRetry()V

    :cond_3
    if-eqz p5, :cond_4

    .line 1399
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0902a8

    if-ne v0, v2, :cond_4

    .line 1401
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 1402
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p2}, Lcom/narvii/master/CommunityDetailFragment;->access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0fb2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    :cond_4
    if-eqz p5, :cond_5

    .line 1408
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f09060c

    if-ne v0, v2, :cond_5

    .line 1409
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$200(Lcom/narvii/master/CommunityDetailFragment;)V

    return v1

    .line 1412
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 2

    .line 1467
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$1702(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1468
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 1469
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1470
    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1052
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

    .line 1076
    const-class v0, Lcom/narvii/community/FullCommunityResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/model/Community;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1062
    :cond_0
    new-instance v0, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v0}, Lcom/narvii/community/FullCommunityResponse;-><init>()V

    .line 1063
    iput-object p1, v0, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 1064
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$500(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    .line 1065
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "isRequested"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/community/FullCommunityResponse;->hasPendingMembershipRequestWithCurrentUser:Z

    .line 1066
    invoke-virtual {p0, v0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->setResponse(Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1052
    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->setObject(Lcom/narvii/model/Community;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/community/FullCommunityResponse;)V
    .locals 3

    .line 1081
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    if-eqz p1, :cond_5

    .line 1083
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$1202(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;)Lcom/narvii/model/Community;

    .line 1087
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean v1, p1, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$502(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1088
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$500(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v0

    const-string v1, "affiliations"

    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 1090
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget v2, v2, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {v0, v2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$100(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$100(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v2}, Lcom/narvii/master/CommunityDetailFragment;->access$500(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->setCurrentUserJoinedStatus(Z)V

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean v2, p1, Lcom/narvii/community/FullCommunityResponse;->hasPendingMembershipRequestWithCurrentUser:Z

    invoke-static {v0, v2}, Lcom/narvii/master/CommunityDetailFragment;->access$602(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1097
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$500(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1098
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 1099
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1100
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment;->access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 1104
    :cond_3
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1105
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object p1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1106
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 1108
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1110
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$1400(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 1111
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$1500(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 1112
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean v0, p1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberListRequested:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1113
    iput-boolean v0, p1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberListRequested:Z

    .line 1114
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$1600(Lcom/narvii/master/CommunityDetailFragment;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1052
    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->setResponse(Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method

.method public showShareMediaBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
