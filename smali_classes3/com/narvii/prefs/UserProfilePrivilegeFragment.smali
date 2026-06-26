.class public Lcom/narvii/prefs/UserProfilePrivilegeFragment;
.super Lcom/narvii/list/NVListFragment;
.source "UserProfilePrivilegeFragment.java"

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

    .line 55
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->requestFinished:Z

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->requestFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/prefs/UserProfilePrivilegeFragment;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendRequest(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method private sendRequest(I)V
    .locals 5

    const-string v0, "api"

    .line 387
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 388
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 390
    iget-object v3, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 391
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "extensions"

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 392
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 394
    new-instance v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment$8;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3, v1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$8;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v0, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendUserProfileRequest()V
    .locals 5

    const-string v0, "account"

    .line 358
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 359
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "api"

    .line 362
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 363
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 364
    new-instance v3, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;

    const-class v4, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/Class;Lcom/narvii/account/AccountService;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 121
    new-instance p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$1;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 132
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->subTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$3;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    :goto_0
    new-instance p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment$4;

    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$4;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 156
    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;

    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    .line 171
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    .line 172
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    if-eqz p1, :cond_1

    .line 175
    new-instance p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)V

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    .line 176
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;

    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;-><init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "myCommunityList"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 76
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    const-string p1, "privilegeKey"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    const-string p1, "account"

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "title"

    .line 79
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "subTitle"

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->subTitle:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "isDarkTheme"

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    const-string v0, "config"

    .line 82
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 83
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    .line 84
    iget-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    if-eqz p1, :cond_1

    .line 85
    iput-boolean v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    .line 87
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isDarkTheme:Z

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    .line 88
    invoke-direct {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->error:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V

    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 101
    invoke-direct {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 107
    iget-boolean v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->isGlobal:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    invoke-virtual {v0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->onResume()V

    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 427
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 430
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 431
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 432
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 434
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060181

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 435
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 436
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 437
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
