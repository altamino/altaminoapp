.class public Lcom/narvii/account/PushSettingListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;,
        Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;,
        Lcom/narvii/account/PushSettingListFragment$SectionAdapter;
    }
.end annotation


# instance fields
.field myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

.field notificationAdapter:Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

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
    .line 5
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/PushSettingListFragment$2;-><init>(Lcom/narvii/account/PushSettingListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->switchCallback:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method

.method private changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-boolean v1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v2, "pushEnabled"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, "pushExtensions"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v1, "api"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 64
    .line 65
    new-instance v2, Lcom/narvii/account/PushSettingListFragment$3;

    .line 66
    .line 67
    const-class v3, Lcom/narvii/master/setting/CommunityPushResponse;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/PushSettingListFragment$3;-><init>(Lcom/narvii/account/PushSettingListFragment;Ljava/lang/Class;Lcom/narvii/master/setting/CommunityPushResponse;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 74
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/account/PushSettingListFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/PushSettingListFragment;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/account/PushSettingListFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/PushSettingListFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/PushSettingListFragment;->changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;-><init>(Lcom/narvii/account/PushSettingListFragment;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->notificationAdapter:Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p0}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;-><init>(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$1;

    .line 26
    .line 27
    .line 28
    const v1, 0x7f12030a

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lcom/narvii/account/PushSettingListFragment$1;-><init>(Lcom/narvii/account/PushSettingListFragment;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->notificationAdapter:Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "global_notifications"

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120de4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/account/g0;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/account/g0;-><init>(Lcom/narvii/account/PushSettingListFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/util/NotificationManagerHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 40
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
    const p1, 0x7f0d05fa

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 26
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
