.class public Lcom/narvii/account/CommunityPushSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CommunityPushSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;
    }
.end annotation


# static fields
.field public static final API_ERR_PUSH_CAN_NOT_ENABLE_COMMUNITY_ACTIVITIES_PUSH:I = 0x9ca

.field public static final COMMUNITY_PUSH_SETTING_ID:Ljava/lang/String; = "community_push_setting_id"

.field public static final COMMUNITY_PUSH_SETTING_NAME:Ljava/lang/String; = "community_push_setting_name"


# instance fields
.field cId:I

.field cName:Ljava/lang/String;

.field myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

.field notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

.field progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field response:Lcom/narvii/master/setting/CommunityPushResponse;

.field private final switchCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsToggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cName:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/narvii/account/CommunityPushSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/account/CommunityPushSettingFragment$2;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;)V

    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/CommunityPushSettingFragment;->changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/account/CommunityPushSettingFragment;)I
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/account/CommunityPushSettingFragment;->getCid()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method private changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;I)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 242
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/user-profile/push"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 244
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pushEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object p1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 245
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v1, "pushExtensions"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 246
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 247
    new-instance v1, Lcom/narvii/account/CommunityPushSettingFragment$3;

    const-class v2, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/account/CommunityPushSettingFragment$3;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;Ljava/lang/Class;I)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private getCid()I
    .locals 2

    .line 125
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const-string v0, "config"

    .line 126
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 127
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    goto :goto_0

    :cond_0
    const-string v0, "community_push_setting_id"

    .line 129
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 131
    :goto_0
    iget v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 121
    new-instance p1, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;)V

    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommunityNotifications"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "cId"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    const-string v0, "cName"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cName:Ljava/lang/String;

    .line 71
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 72
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/account/CommunityPushSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/account/CommunityPushSettingFragment$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0550

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    const-string v1, "cId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cName:Ljava/lang/String;

    const-string v1, "cName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const-string p1, "community_push_setting_name"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f02d0

    new-array v2, v0, [Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0e48

    .line 113
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "config"

    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 116
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    return-void
.end method
