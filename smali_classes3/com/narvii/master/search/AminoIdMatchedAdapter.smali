.class public Lcom/narvii/master/search/AminoIdMatchedAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "AminoIdMatchedAdapter.java"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/master/search/AminoIdInfo;",
        ">;",
        "Lcom/narvii/user/follow/IUserFollow;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# static fields
.field private static validObjectId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

.field private customObjectType:I

.field public isRequestFinished:Z

.field public ketword:Ljava/lang/String;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private searchId:Ljava/lang/String;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

.field private userItemLayoutHelper:Lcom/narvii/user/list/UserItemLayoutHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    .line 54
    sget-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 61
    const-class v0, Lcom/narvii/master/search/AminoIdInfo;

    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->customObjectType:I

    const-string v0, "account"

    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 63
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 64
    new-instance v0, Lcom/narvii/community/CommunityLayoutHelper;

    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 65
    new-instance v0, Lcom/narvii/user/list/UserItemLayoutHelper;

    invoke-direct {v0, p1}, Lcom/narvii/user/list/UserItemLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userItemLayoutHelper:Lcom/narvii/user/list/UserItemLayoutHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/AminoIdMatchedAdapter;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->customObjectType:I

    return p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 40
    sget-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/narvii/master/search/AminoIdMatchedAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 3

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 234
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "search/amino-id-and-link"

    .line 235
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "q"

    .line 236
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->searchId:Ljava/lang/String;

    const-string v1, "searchId"

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 242
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    const-string p1, "api"

    .line 243
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 244
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;

    const-class v2, Lcom/narvii/master/search/AminoIdMatchListResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;-><init>(Lcom/narvii/master/search/AminoIdMatchedAdapter;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    return-void
.end method

.method public synthetic followFail()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$followFail(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public synthetic followSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$followSuccess(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MatchedAminoID"

    return-object v0
.end method

.method protected getCommunityLayoutId()I
    .locals 1

    const v0, 0x7f0b03ed

    return v0
.end method

.method public getMappedCommunity()Lcom/narvii/model/Community;
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/Community;

    if-eqz v1, :cond_0

    .line 330
    check-cast v0, Lcom/narvii/model/Community;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMappedUser()Lcom/narvii/model/User;
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    .line 320
    check-cast v0, Lcom/narvii/model/User;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/search/AminoIdInfo;

    .line 89
    iget v0, p1, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    const v1, 0x7f080761

    const/16 v2, 0x8

    if-nez v0, :cond_b

    const v0, 0x7f0b03ef

    const/4 v3, 0x0

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, p3, p2, v4}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 92
    iget-object p1, p1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/User;

    .line 93
    iget-object p3, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userItemLayoutHelper:Lcom/narvii/user/list/UserItemLayoutHelper;

    invoke-virtual {p3, p2, p1}, Lcom/narvii/user/list/UserItemLayoutHelper;->configLayout(Landroid/view/View;Lcom/narvii/model/User;)V

    .line 94
    iget-object p3, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    .line 95
    iget v0, p1, Lcom/narvii/model/User;->followingStatus:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    iget v0, p1, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result v0

    const v5, 0x7f090c37

    .line 97
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez p3, :cond_2

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    .line 99
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v5, 0x7f090c18

    .line 101
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    if-nez p3, :cond_4

    if-nez v4, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->showFollowView()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    goto :goto_2

    :cond_4
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {v5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090c1b

    .line 105
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz v0, :cond_5

    const/16 v4, 0x8

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090c1e

    .line 107
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz v0, :cond_6

    const/16 v4, 0x8

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090c1d

    .line 109
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const p3, 0x7f0906c8

    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 119
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_a
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2

    :cond_b
    const/16 v3, 0x10

    if-ne v0, v3, :cond_e

    .line 125
    invoke-virtual {p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getCommunityLayoutId()I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, p3, p2, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 126
    iget-object p1, p1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Community;

    const p3, 0x7f09029c

    .line 127
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 129
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const p3, 0x7f0906c7

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 133
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_d
    iget-object v4, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 137
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$needUpdateUserAfterFollow(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public notifyKeyChange(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyKeyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->searchId:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 168
    iget-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz p2, :cond_1

    const-string p2, "api"

    .line 169
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 170
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 p2, 0x0

    .line 171
    iput-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 76
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/NVObject;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 77
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Lcom/narvii/app/NVFragment;

    const-string v1, "search_key"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 224
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 225
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    .line 291
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 183
    instance-of v0, p3, Lcom/narvii/master/search/AminoIdInfo;

    if-eqz v0, :cond_3

    .line 184
    move-object v0, p3

    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    iget v1, v0, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 185
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/User;

    if-eqz p5, :cond_0

    .line 186
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f090c18

    if-ne v1, v3, :cond_0

    .line 187
    sget-object v1, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "follow"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 193
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 199
    iget-object p1, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Community;

    .line 200
    new-instance p2, Lcom/narvii/master/CommunityHelper;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, p3}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 201
    invoke-virtual {p2, p1, p4}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    .line 202
    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return v2

    .line 206
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "user"

    .line 212
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    const-class p2, Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->follow(Lcom/narvii/model/User;)V

    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 296
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "edit"

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/master/search/AminoIdInfo;

    .line 300
    iget-object v2, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    instance-of v3, v2, Lcom/narvii/model/User;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 302
    iget-object v3, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    instance-of v4, v3, Lcom/narvii/model/StrategyObject;

    if-eqz v4, :cond_2

    .line 303
    check-cast v3, Lcom/narvii/model/StrategyObject;

    invoke-interface {v3}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v2

    .line 305
    :cond_2
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 306
    iget-object v1, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    instance-of v3, v1, Lcom/narvii/model/StrategyObject;

    if-eqz v3, :cond_3

    .line 307
    check-cast v1, Lcom/narvii/model/StrategyObject;

    invoke-interface {v1, v2}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V

    .line 309
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setCustomObjectType(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->customObjectType:I

    return-void
.end method

.method protected showFollowView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
