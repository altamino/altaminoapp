.class Lcom/narvii/account/PushSettingListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/PushSettingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/PushSettingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/account/PushSettingListFragment$2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/PushSettingListFragment$2;->lambda$call$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/PushSettingListFragment$2;->lambda$call$1(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/account/PushSettingListFragment$2;->lambda$call$2(Lcom/narvii/master/setting/CommunityPushResponse;[ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$call$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/account/PushSettingListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/account/PushSettingListFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 12
    return-void
.end method

.method private synthetic lambda$call$1(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method

.method private synthetic lambda$call$2(Lcom/narvii/master/setting/CommunityPushResponse;[ILandroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lcom/narvii/account/PushSettingListFragment;->v(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    aget p1, p2, p1

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    const-string p1, "Turn off all notifications"

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x3

    .line 16
    .line 17
    if-ne p1, p2, :cond_1

    .line 18
    .line 19
    const-string p1, "Turn of broadcast notifications"

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    .line 23
    :goto_0
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 26
    .line 27
    const-string p3, "statistics"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    iget-object p3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 40
    .line 41
    const-string v0, "Source"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p1, " Total"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    :cond_2
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 8

    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120f78

    .line 4
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/high16 v4, 0x1040000

    .line 5
    invoke-virtual {v0, v4, v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 6
    new-instance v2, Lcom/narvii/account/h0;

    invoke-direct {v2, p0}, Lcom/narvii/account/h0;-><init>(Lcom/narvii/account/PushSettingListFragment$2;)V

    const v3, 0x7f120f77

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 8
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 10
    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {v0}, Lcom/narvii/master/setting/CommunityPushResponse;->clone()Lcom/narvii/master/setting/CommunityPushResponse;

    move-result-object v0

    .line 11
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v4, 0x7f120f72

    .line 12
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v3, Lcom/narvii/account/i0;

    invoke-direct {v3, p0, v2}, Lcom/narvii/account/i0;-><init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/util/dialog/AlertDialog;)V

    const v4, 0x7f1201e2

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, -0xb56f1e

    .line 14
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-array v3, v1, [I

    .line 15
    new-instance v6, Lcom/narvii/account/j0;

    invoke-direct {v6, p0, v0, v3}, Lcom/narvii/account/j0;-><init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V

    const v7, 0x7f1212a7

    invoke-virtual {v2, v7, v5, v6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 16
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v4, 0x7f120f6c

    const/4 v5, 0x0

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 18
    iget-object v4, p1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v6, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    xor-int/2addr v6, v1

    iput-boolean v6, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 19
    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    if-eqz v4, :cond_1

    const v0, 0x7f120f76

    .line 20
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v0, 0x7f120f75

    .line 21
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v1, v3, v5

    goto/16 :goto_2

    .line 23
    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/account/PushSettingListFragment;->v(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto/16 :goto_2

    :cond_2
    const v4, 0x7f120f6d

    if-ne p1, v4, :cond_4

    .line 24
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v4, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v6, v4, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v6, v6, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v7, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    xor-int/2addr v1, v7

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    .line 25
    iget-boolean p1, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    if-eqz p1, :cond_3

    const p1, 0x7f120f74

    .line 26
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x3

    aput p1, v3, v5

    goto :goto_2

    .line 28
    :cond_3
    invoke-static {v4, v0}, Lcom/narvii/account/PushSettingListFragment;->v(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto :goto_2

    :cond_4
    const v3, 0x7f120f6a

    if-ne p1, v3, :cond_a

    .line 29
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v4, v3, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    xor-int/2addr v1, v4

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const-string p1, "community"

    .line 30
    invoke-virtual {v3, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 31
    invoke-virtual {p1, v5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 32
    iget-object v3, v1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v3, v3, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v3, v3, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const/16 v4, 0x19

    if-eqz v3, :cond_7

    if-eqz p1, :cond_6

    .line 33
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-gt p1, v4, :cond_5

    goto :goto_0

    .line 34
    :cond_5
    invoke-static {v1, v0}, Lcom/narvii/account/PushSettingListFragment;->v(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto :goto_2

    :cond_6
    :goto_0
    const p1, 0x7f120f70

    .line 35
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    .line 37
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-le p1, v4, :cond_8

    goto :goto_1

    .line 38
    :cond_8
    invoke-static {v1, v0}, Lcom/narvii/account/PushSettingListFragment;->v(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto :goto_2

    :cond_9
    :goto_1
    const p1, 0x7f120f71

    .line 39
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    :cond_a
    :goto_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/account/PushSettingListFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
