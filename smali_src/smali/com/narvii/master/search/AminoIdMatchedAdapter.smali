.class public Lcom/narvii/master/search/AminoIdMatchedAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/search/AminoIdInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->customObjectType:I

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/community/CommunityLayoutHelper;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/user/list/UserItemLayoutHelper;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/narvii/user/list/UserItemLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userItemLayoutHelper:Lcom/narvii/user/list/UserItemLayoutHelper;

    .line 40
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/master/search/AminoIdMatchedAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->customObjectType:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/master/search/AminoIdMatchedAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic h()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->validObjectId:Ljava/util/ArrayList;

    return-object v0
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

.method private sendRequest(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 19
    .line 20
    const-string/jumbo v1, "search/amino-id-and-link"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "q"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->searchId:Ljava/lang/String;

    .line 33
    .line 34
    const-string/jumbo v1, "searchId"

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 68
    .line 69
    const-string p1, "api"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 78
    .line 79
    new-instance v1, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;

    .line 80
    .line 81
    const-class v2, Lcom/narvii/master/search/AminoIdMatchListResponse;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0, v2}, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;-><init>(Lcom/narvii/master/search/AminoIdMatchedAdapter;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

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

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MatchedAminoID"

    return-object v0
.end method

.method protected getCommunityLayoutId()I
    .locals 1

    const v0, 0x7f0d0423

    return v0
.end method

.method public getMappedCommunity()Lcom/narvii/model/Community;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 28
    .line 29
    instance-of v1, v0, Lcom/narvii/model/Community;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/model/Community;

    .line 34
    return-object v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public getMappedUser()Lcom/narvii/model/User;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 28
    .line 29
    instance-of v1, v0, Lcom/narvii/model/User;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/model/User;

    .line 34
    return-object v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/master/search/AminoIdInfo;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    .line 9
    .line 10
    .line 11
    const v1, 0x7f08095e

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-nez v0, :cond_b

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0d0425

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, p3, p2, v4}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/User;

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userItemLayoutHelper:Lcom/narvii/user/list/UserItemLayoutHelper;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p2, p1}, Lcom/narvii/user/list/UserItemLayoutHelper;->configLayout(Landroid/view/View;Lcom/narvii/model/User;)V

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p3

    .line 49
    .line 50
    iget v0, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 51
    const/4 v4, 0x1

    .line 52
    .line 53
    if-eq v0, v4, :cond_1

    .line 54
    .line 55
    iget v0, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 56
    const/4 v5, 0x3

    .line 57
    .line 58
    if-ne v0, v5, :cond_0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v4, v3

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    const v5, 0x7f0a0f59

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    if-nez p3, :cond_2

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    move v6, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v6, v2

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    const v5, 0x7f0a0f3e

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    if-eqz v5, :cond_8

    .line 93
    .line 94
    if-nez p3, :cond_4

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->showFollowView()Z

    .line 100
    move-result p3

    .line 101
    .line 102
    if-eqz p3, :cond_4

    .line 103
    move p3, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move p3, v2

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    const p3, 0x7f0a0f3f

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p3

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    move v4, v2

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move v4, v3

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    const p3, 0x7f0a0f42

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p3

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    move v4, v2

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    move v4, v3

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    const p3, 0x7f0a0f41

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object p3

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    move v2, v3

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_8
    const p3, 0x7f0a0858

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    .line 178
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object p3

    .line 186
    .line 187
    if-eqz p3, :cond_a

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .line 200
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    :cond_a
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 207
    return-object p2

    .line 208
    .line 209
    :cond_b
    const/16 v3, 0x10

    .line 210
    .line 211
    if-ne v0, v3, :cond_e

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getCommunityLayoutId()I

    .line 215
    move-result v0

    .line 216
    .line 217
    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v3

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v0, p3, p2, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    iget-object p1, p1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 226
    .line 227
    check-cast p1, Lcom/narvii/model/Community;

    .line 228
    .line 229
    .line 230
    const p3, 0x7f0a0364

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    move-result-object p3

    .line 235
    .line 236
    if-eqz p3, :cond_c

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    :cond_c
    const p3, 0x7f0a0857

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object p3

    .line 247
    .line 248
    if-eqz p3, :cond_d

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    .line 261
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    :cond_d
    iget-object v4, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 267
    const/4 v7, 0x1

    .line 268
    const/4 v8, 0x1

    .line 269
    const/4 v9, 0x0

    .line 270
    move-object v5, p2

    .line 271
    move-object v6, p1

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {v4 .. v9}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 278
    return-object p2

    .line 279
    :cond_e
    const/4 p1, 0x0

    .line 280
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->c(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public notifyKeyChange(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyKeyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->searchId:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    iget-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz p2, :cond_1

    const-string p2, "api"

    .line 4
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 5
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/NVObject;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 22
    .line 23
    const-string/jumbo v1, "search_key"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->sendRequest(Ljava/lang/String;)V

    .line 9
    return-void
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
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/master/search/AminoIdInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    .line 8
    .line 9
    iget v1, v0, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/User;

    .line 17
    .line 18
    if-eqz p5, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    const v3, 0x7f0a0f3e

    .line 26
    .line 27
    if-ne v1, v3, :cond_0

    .line 28
    .line 29
    sget-object v1, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 33
    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v2, "follow"

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    const-string/jumbo v2, "user"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    return v2

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 68
    return v2

    .line 69
    .line 70
    :cond_2
    const/16 v3, 0x10

    .line 71
    .line 72
    if-ne v1, v3, :cond_3

    .line 73
    .line 74
    iget-object p1, v0, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/model/Community;

    .line 77
    .line 78
    new-instance p2, Lcom/narvii/master/CommunityHelper;

    .line 79
    .line 80
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, p3}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1, p4}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    .line 87
    .line 88
    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 92
    return v2

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 96
    move-result p1

    .line 97
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
    const-string/jumbo p1, "user"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-class p2, Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/model/User;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->follow(Lcom/narvii/model/User;)V

    .line 34
    :cond_0
    return-void

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const-string/jumbo v0, "update"

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "edit"

    .line 19
    .line 20
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/narvii/master/search/AminoIdInfo;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 49
    .line 50
    instance-of v3, v2, Lcom/narvii/model/User;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    iget-object v3, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    iget-object v2, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 67
    .line 68
    instance-of v3, v2, Lcom/narvii/model/StrategyObject;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    check-cast v2, Lcom/narvii/model/StrategyObject;

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v2, 0x0

    .line 79
    .line 80
    :goto_1
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lcom/narvii/model/User;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    iput-object v3, v1, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    .line 89
    .line 90
    instance-of v1, v3, Lcom/narvii/model/StrategyObject;

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    check-cast v3, Lcom/narvii/model/StrategyObject;

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v2}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    return-void
.end method

.method public setCustomObjectType(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->customObjectType:I

    return-void
.end method

.method protected showFollowView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
