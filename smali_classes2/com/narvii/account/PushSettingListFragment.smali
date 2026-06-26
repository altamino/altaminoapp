.class public Lcom/narvii/account/PushSettingListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PushSettingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;,
        Lcom/narvii/account/PushSettingListFragment$SectionAdapter;,
        Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;
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

    .line 60
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/account/PushSettingListFragment$2;-><init>(Lcom/narvii/account/PushSettingListFragment;)V

    iput-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/account/PushSettingListFragment;->changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/account/PushSettingListFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/account/PushSettingListFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method private changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 205
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/user-profile/push"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pushEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 208
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "pushExtensions"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 209
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 210
    new-instance v2, Lcom/narvii/account/PushSettingListFragment$3;

    const-class v3, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/PushSettingListFragment$3;-><init>(Lcom/narvii/account/PushSettingListFragment;Ljava/lang/Class;Lcom/narvii/master/setting/CommunityPushResponse;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 95
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;-><init>(Lcom/narvii/account/PushSettingListFragment;)V

    iput-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->notificationAdapter:Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    .line 97
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;-><init>(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 98
    new-instance v0, Lcom/narvii/account/PushSettingListFragment$1;

    const v1, 0x7f0f02bf

    invoke-direct {v0, p0, v1}, Lcom/narvii/account/PushSettingListFragment$1;-><init>(Lcom/narvii/account/PushSettingListFragment;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment;->notificationAdapter:Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GlobalNotifications"

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

.method public synthetic lambda$onCreate$0$PushSettingListFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0cc4

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 73
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 74
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2EJL5kJjkNqx799tZiMKtlk0zqw;

    invoke-direct {v0, p0}, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2EJL5kJjkNqx799tZiMKtlk0zqw;-><init>(Lcom/narvii/account/PushSettingListFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    new-instance p1, Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

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

    .line 110
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b0553

    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 457
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 460
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 461
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 462
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 465
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060181

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 466
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 467
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 468
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
