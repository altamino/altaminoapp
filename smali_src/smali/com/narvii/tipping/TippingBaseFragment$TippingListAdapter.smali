.class public Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/tipping/TippingBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TippingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/tipping/model/TipLog;",
        "Lcom/narvii/tipping/model/TipLogListResponse;",
        ">;",
        "Lcom/narvii/user/follow/IUserFollow;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field source:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/tipping/TippingBaseFragment;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/tipping/TippingBaseFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "Props Givers"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->source:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 24
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

.method private getItemPosition(Lcom/narvii/tipping/model/TipLog;)I
    .locals 2

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
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    return v0

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, -0x1

    .line 37
    return p1
.end method

.method private getTipLogByUser(Lcom/narvii/model/User;)Lcom/narvii/tipping/model/TipLog;
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
    check-cast v1, Lcom/narvii/tipping/model/TipLog;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

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

.method private sendLikeRequest(Lcom/narvii/tipping/model/TipLog;)V
    .locals 5
    .param p1    # Lcom/narvii/tipping/model/TipLog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/tipping/TippingBaseFragment;->isSupportGlobal()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "/g-tipping/tipped-users/"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v0, "/tipping/tipped-users/"

    .line 20
    .line 21
    :goto_0
    new-instance v1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/narvii/tipping/TippingBaseFragment;->apiTypeName:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "/"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object v4, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/narvii/tipping/TippingBaseFragment;->objectId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "/thank"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    .line 96
    new-instance v0, Ljava/util/Date;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 100
    .line 101
    iput-object v0, p1, Lcom/narvii/tipping/model/TipLog;->lastThankedTime:Ljava/util/Date;

    .line 102
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
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->canChat(Lcom/narvii/model/User;)Z

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
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

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
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/tipping/TippingBaseFragment;->isSupportGlobal()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "/g-tipping/tipped-users"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string p1, "/tipping/tipped-users"

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/narvii/tipping/TippingBaseFragment;->apiTypeName:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "/"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/narvii/tipping/TippingBaseFragment;->objectId:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/tipping/model/TipLog;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/tipping/model/TipLog;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/tipping/model/TipLog;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/tipping/model/TipLog;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/tipping/TippingBaseFragment;->isAuthor()Z

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
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    .line 6
    .line 7
    const-string/jumbo p1, "statistics"

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
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->source:Ljava/lang/String;

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

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "PropsGiverList"

    return-object v0
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
    .locals 9

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/tipping/model/TipLog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v3, p1

    .line 7
    .line 8
    check-cast v3, Lcom/narvii/tipping/model/TipLog;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    iput-boolean p1, v3, Lcom/narvii/tipping/model/TipLog;->isTipperAccessible:Z

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0d0491

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/tipping/TippingListItemCell;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v3}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->getItemPosition(Lcom/narvii/tipping/model/TipLog;)I

    .line 27
    move-result v4

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/narvii/tipping/TippingBaseFragment;->isAuthor()Z

    .line 33
    move-result v5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 41
    move-result v6

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/narvii/tipping/TippingBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v7

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 65
    move-result v8

    .line 66
    move-object v2, p1

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/tipping/TippingListItemCell;->setTipLog(Lcom/narvii/tipping/model/TipLog;IZZZZ)V

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const p2, 0x7f0a0e9d

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    check-cast p2, Lcom/narvii/tipping/TippingThanksView;

    .line 84
    .line 85
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    const p2, 0x7f0a0f3e

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object p1

    .line 102
    :cond_0
    return-object v1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

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
    .locals 5

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/tipping/model/TipLog;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/tipping/model/TipLog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 14
    .line 15
    iget v3, v1, Lcom/narvii/model/User;->ndcId:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    return v3

    .line 24
    .line 25
    :cond_0
    instance-of v2, p5, Lcom/narvii/tipping/TippingThanksView;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    const v4, 0x7f0a0e9d

    .line 35
    .line 36
    if-ne v2, v4, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->isThanksSent()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget-object p1, Lcom/narvii/logging/ActSemantic;->chat:Lcom/narvii/logging/ActSemantic;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->startChat(Lcom/narvii/model/User;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->thank:Lcom/narvii/logging/ActSemantic;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 61
    .line 62
    check-cast p5, Lcom/narvii/tipping/TippingThanksView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5}, Lcom/narvii/tipping/TippingThanksView;->startLikeAnimation()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->sendLikeRequest(Lcom/narvii/tipping/model/TipLog;)V

    .line 69
    .line 70
    const-string/jumbo p1, "statistics"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 77
    .line 78
    const-string p2, "Thanks Prop Giver"

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string p2, "Thanks Prop Giver Total"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 88
    :goto_0
    return v3

    .line 89
    .line 90
    :cond_2
    if-eqz p5, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    const v4, 0x7f0a0f3e

    .line 98
    .line 99
    if-ne v2, v4, :cond_3

    .line 100
    .line 101
    new-instance p1, Landroid/content/Intent;

    .line 102
    .line 103
    const-string p2, "follow"

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    const-string/jumbo p3, "user"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 124
    return v3

    .line 125
    .line 126
    :cond_3
    if-eqz p5, :cond_4

    .line 127
    .line 128
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    const-string p1, "Source"

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->source:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 148
    return v3

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 152
    move-result p1

    .line 153
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
    .line 17
    const-string/jumbo p1, "user"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-class p2, Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/model/User;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->follow(Lcom/narvii/model/User;)V

    .line 35
    :cond_0
    return-void

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/model/User;

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/User;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->getTipLogByUser(Lcom/narvii/model/User;)Lcom/narvii/tipping/model/TipLog;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/User;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 26
    .line 27
    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "new"

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const-string v1, "delete"

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iget-object v1, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 65
    .line 66
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "update"

    .line 70
    .line 71
    if-eq v0, v1, :cond_3

    .line 72
    .line 73
    const-string v1, "edit"

    .line 74
    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 79
    :cond_4
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    iget-object p3, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    iget-object p2, p2, Lcom/narvii/tipping/model/TipLogListResponse;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    invoke-virtual {p1, p3, p2}, Lcom/narvii/tipping/TippingBaseFragment;->onTippingSummaryUpdated(Lcom/narvii/tipping/model/TipSummary;Lcom/narvii/tipping/model/TipSummary;)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/tipping/model/TipLogListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/tipping/model/TipLogListResponse;

    return-object v0
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
