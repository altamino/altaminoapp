.class Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/PushSettingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalNotificationAdapter"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static synthetic f(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->lambda$getView$0(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static synthetic lambda$getView$0(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    check-cast p0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method private sendPushStatusRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/user-profile/push"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "api"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;

    .line 29
    .line 30
    const-class v3, Lcom/narvii/master/setting/CommunityPushResponse;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;-><init>(Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    .line 15
    .line 16
    .line 17
    const v1, 0x7f1207d9

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 28
    .line 29
    .line 30
    const v2, 0x7f120f6f

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    const v2, 0x7f120f6c

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 45
    .line 46
    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 47
    .line 48
    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/account/PushSettingListFragment;->u(Lcom/narvii/account/PushSettingListFragment;)Lcom/narvii/util/Callback;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 57
    .line 58
    .line 59
    const v2, 0x7f1207db

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    instance-of p2, v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    move-object p2, v0

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/list/prefs/PrefsToggle;

    .line 16
    .line 17
    .line 18
    const p3, 0x7f0a09d3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Landroid/widget/TextView;

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 36
    .line 37
    const/high16 v4, 0x41800000    # 16.0f

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const p3, 0x7f0a041f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    .line 59
    const/high16 v2, 0x41400000    # 12.0f

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const p3, 0x7f0a02cb

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    check-cast p3, Landroid/widget/CheckBox;

    .line 72
    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    iget-boolean v1, p2, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    const/4 v1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    .line 84
    iget-boolean p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    .line 89
    new-instance p2, Lcom/narvii/account/k0;

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, v0}, Lcom/narvii/account/k0;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    :cond_2
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->sendPushStatusRequest()V

    .line 7
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    iput-object p2, p1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->sendPushStatusRequest()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 14
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
