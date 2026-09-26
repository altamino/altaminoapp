.class public Lcom/narvii/prefs/UserProfilePrivilegeFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;
    }
.end annotation


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

.field private error:Ljava/lang/String;

.field isDarkTheme:Z

.field isGlobal:Z

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field privilegeKey:Ljava/lang/String;

.field public radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

.field private requestFinished:Z

.field private subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    .line 7
    return-void
.end method

.method private sendRequest(I)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string/jumbo v4, "user-profile/"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string v1, "extensions"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 75
    .line 76
    new-instance v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment$8;

    .line 77
    .line 78
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0, v3, v1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$8;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 85
    return-void
.end method

.method private sendUserProfileRequest()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 14
    if-nez v1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    const-string v1, "api"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string/jumbo v4, "user-profile/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    new-instance v3, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;

    .line 59
    .line 60
    const-class v4, Lcom/narvii/model/api/UserResponse;

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/Class;Lcom/narvii/account/AccountService;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 67
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->requestFinished:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->error:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->requestFinished:Z

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/prefs/UserProfilePrivilegeFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendRequest(I)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$1;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->subTitle:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$3;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$3;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    :goto_0
    new-instance p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment$4;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$4;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 60
    move-result v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    new-instance p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)V

    .line 83
    .line 84
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    .line 103
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 104
    return-object p1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "myCommunityList"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 17
    .line 18
    const-string p1, "privilegeKey"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "account"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    const-string/jumbo p1, "title"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    const-string/jumbo p1, "subTitle"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->subTitle:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "isDarkTheme"

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    iput-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    .line 61
    .line 62
    const-string p1, "config"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 72
    move-result p1

    .line 73
    const/4 v1, 0x1

    .line 74
    .line 75
    if-nez p1, :cond_0

    .line 76
    move v0, v1

    .line 77
    .line 78
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    .line 83
    .line 84
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    const/4 v1, 0x2

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V

    .line 94
    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->error:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V

    .line 10
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V

    .line 7
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->onResume()V

    .line 13
    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0600a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0603eb

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 85
    const/4 v0, -0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method
