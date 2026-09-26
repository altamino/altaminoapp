.class Lcom/narvii/influencer/FansListFragment$FansListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FansListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FansListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/influencer/FansInfo;",
        "Lcom/narvii/influencer/FansInfoListResponse;",
        ">;",
        "Lcom/narvii/user/follow/IUserFollow;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation
.end field

.field private myFansClub:Lcom/narvii/influencer/FansInfo;

.field source:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/influencer/FansListFragment;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/FansListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "Fans List"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->source:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 17
    .line 18
    const-string p1, "account"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 27
    return-void
.end method

.method private canChat(Lcom/narvii/model/User;)Z
    .locals 5

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    return v2

    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_4

    .line 31
    .line 32
    const-string v0, "privilegeOfChatInviteRequest"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v3, 0x3

    .line 39
    const/4 v4, 0x2

    .line 40
    .line 41
    if-eq v0, v4, :cond_2

    .line 42
    .line 43
    if-eq v0, v3, :cond_1

    .line 44
    return v2

    .line 45
    :cond_1
    return v1

    .line 46
    .line 47
    :cond_2
    iget p1, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 48
    .line 49
    if-eq p1, v4, :cond_4

    .line 50
    .line 51
    if-ne p1, v3, :cond_3

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v2, v1

    .line 54
    :cond_4
    :goto_0
    return v2
.end method

.method private getFansInfoByUser(Lcom/narvii/model/User;)Lcom/narvii/influencer/FansInfo;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/influencer/FansInfo;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    return-object v1

    .line 47
    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    return-object p1
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

.method private sendLikeRequest(Lcom/narvii/influencer/FansInfo;)V
    .locals 5
    .param p1    # Lcom/narvii/influencer/FansInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v3, "/influencer/"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 28
    .line 29
    const-string v4, "id"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "/fans/"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->uid()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "/thank"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 71
    .line 72
    new-instance v0, Ljava/util/Date;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    .line 77
    iput-object v0, p1, Lcom/narvii/influencer/FansInfo;->lastThankedTime:Ljava/util/Date;

    .line 78
    return-void
.end method

.method private startChat(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->canChat(Lcom/narvii/model/User;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f121230

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 36
    .line 37
    .line 38
    const v0, 0x104000a

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, "chatInvite"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v0, "chat"

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 81
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "influencer/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "/fans"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const-string p1, "start0"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/influencer/FansInfo;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/influencer/FansListFragment;->u(Lcom/narvii/influencer/FansListFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    .line 6
    .line 7
    const-string p1, "statistics"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 14
    .line 15
    const-string v0, "Follow User"

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "Number of Friends"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->source:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 31
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
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/influencer/FansInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/influencer/FansInfo;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    iput-boolean v0, p1, Lcom/narvii/influencer/FansInfo;->isTipperAccessible:Z

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0d03f7

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/influencer/FansListItemCell;

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result p3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/influencer/FansListFragment;->u(Lcom/narvii/influencer/FansListFragment;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/narvii/influencer/FansListItemCell;->setFansInfo(Lcom/narvii/influencer/FansInfo;ZZZ)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0a0566

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    const p1, 0x7f0a0f3e

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object p2

    .line 95
    :cond_1
    return-object v1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->c(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->myFansClub:Lcom/narvii/influencer/FansInfo;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->myFansClub:Lcom/narvii/influencer/FansInfo;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/influencer/FansInfo;->uid()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/influencer/FansInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz p5, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0566

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    check-cast p3, Lcom/narvii/influencer/FansInfo;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/narvii/influencer/FansInfo;->isThanksSent()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->startChat(Lcom/narvii/model/User;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    check-cast p5, Lcom/narvii/tipping/TippingThanksView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p5}, Lcom/narvii/tipping/TippingThanksView;->startLikeAnimation()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p3}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->sendLikeRequest(Lcom/narvii/influencer/FansInfo;)V

    .line 41
    .line 42
    const-string p1, "statistics"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 49
    .line 50
    const-string p2, "Thanks Fan"

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    const-string p2, "Thanks Fan Total"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    :goto_0
    return v2

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    const v1, 0x7f0a0f3e

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    new-instance p1, Landroid/content/Intent;

    .line 72
    .line 73
    const-string p2, "follow"

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    check-cast p3, Lcom/narvii/influencer/FansInfo;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    const-string p3, "user"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 95
    return v2

    .line 96
    :cond_2
    move-object v0, p3

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/influencer/FansInfo;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    const-string p1, "Source"

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->source:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 119
    return v2

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 123
    move-result p1

    .line 124
    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

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
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "user"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-class v1, Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/model/User;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->follow(Lcom/narvii/model/User;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/User;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->getFansInfoByUser(Lcom/narvii/model/User;)Lcom/narvii/influencer/FansInfo;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/User;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/influencer/FansInfo;->fansUserProfile:Lcom/narvii/model/User;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "update"

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const-string v1, "edit"

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    instance-of v1, v0, Lcom/narvii/influencer/FanClub;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/narvii/influencer/FansListFragment;->t(Lcom/narvii/influencer/FansListFragment;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "new"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 74
    :cond_4
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FansInfoListResponse;I)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 3
    iget-object v1, p2, Lcom/narvii/influencer/FansInfoListResponse;->influencerUserProfile:Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/influencer/FansListFragment;->v(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/model/User;)V

    .line 4
    iget-object v0, p2, Lcom/narvii/influencer/FansInfoListResponse;->myFanClub:Lcom/narvii/influencer/FansInfo;

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->myFansClub:Lcom/narvii/influencer/FansInfo;

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/influencer/FansListFragment;->w(Lcom/narvii/influencer/FansListFragment;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/influencer/FansInfoListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FansInfoListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/influencer/FansInfoListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/influencer/FansInfoListResponse;

    return-object v0
.end method
