.class public Lcom/narvii/account/CommunityPushSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/account/CommunityPushSettingFragment$2;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/account/CommunityPushSettingFragment$2;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->switchCallback:Lcom/narvii/util/Callback;

    .line 14
    return-void
.end method

.method private changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 11
    .line 12
    const-string v1, "/user-profile/push"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-boolean v1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "pushEnabled"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v1, "pushExtensions"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "api"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 65
    .line 66
    new-instance v1, Lcom/narvii/account/CommunityPushSettingFragment$3;

    .line 67
    .line 68
    const-class v2, Lcom/narvii/master/setting/CommunityPushResponse;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/account/CommunityPushSettingFragment$3;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;Ljava/lang/Class;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 75
    return-void
.end method

.method private getCid()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "community_push_setting_id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 9
    return v0
.end method

.method static bridge synthetic t(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/CommunityPushSettingFragment;->changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;I)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/account/CommunityPushSettingFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/CommunityPushSettingFragment;->getCid()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    .line 8
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "community_notifications"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "cId"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 14
    .line 15
    const-string v0, "cName"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cName:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/account/CommunityPushSettingFragment$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/narvii/account/CommunityPushSettingFragment$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    const-string p1, "statistics"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 62
    .line 63
    const-string v0, "Push Notification Settings"

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const-string v0, "Source"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 77
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d05f7

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 20
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "cId"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "cName"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment;->cName:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 6
    .line 7
    const/16 p2, 0x64

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    const-string p1, "community_push_setting_name"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    new-array p2, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    aput-object p1, p2, v0

    .line 28
    .line 29
    .line 30
    const p1, 0x7f12031b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    const p1, 0x7f120f69

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    :goto_0
    const-string p1, "config"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    move v0, v1

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    .line 67
    return-void
.end method
