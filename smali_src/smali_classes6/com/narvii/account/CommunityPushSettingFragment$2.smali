.class Lcom/narvii/account/CommunityPushSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/CommunityPushSettingFragment;
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
.field final synthetic this$0:Lcom/narvii/account/CommunityPushSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 8

    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

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
    new-instance v2, Lcom/narvii/account/CommunityPushSettingFragment$2$1;

    invoke-direct {v2, p0}, Lcom/narvii/account/CommunityPushSettingFragment$2$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$2;)V

    const v3, 0x7f120f77

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 8
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 10
    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {v0}, Lcom/narvii/master/setting/CommunityPushResponse;->clone()Lcom/narvii/master/setting/CommunityPushResponse;

    move-result-object v0

    .line 11
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v3, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v4, 0x7f120f72

    .line 12
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v3, Lcom/narvii/account/CommunityPushSettingFragment$2$2;

    invoke-direct {v3, p0, v2}, Lcom/narvii/account/CommunityPushSettingFragment$2$2;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/util/dialog/AlertDialog;)V

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
    new-instance v6, Lcom/narvii/account/CommunityPushSettingFragment$2$3;

    invoke-direct {v6, p0, v0, v3}, Lcom/narvii/account/CommunityPushSettingFragment$2$3;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V

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

    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 18
    iget-object v4, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v6, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    xor-int/2addr v6, v1

    iput-boolean v6, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 19
    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    if-eqz v4, :cond_1

    const v0, 0x7f120f73

    .line 20
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v1, v3, v5

    goto/16 :goto_2

    .line 22
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/narvii/account/CommunityPushSettingFragment;->u(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    goto/16 :goto_2

    :cond_2
    const v4, 0x7f120f6d

    if-ne p1, v4, :cond_4

    .line 23
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v4, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v6, v4, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v6, v6, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v7, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    xor-int/2addr v1, v7

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    .line 24
    iget-boolean p1, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const p1, 0x7f120f74

    .line 25
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v1, v3, v5

    goto/16 :goto_2

    .line 27
    :cond_3
    invoke-static {v4, v0, v1}, Lcom/narvii/account/CommunityPushSettingFragment;->u(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    goto :goto_2

    :cond_4
    const v4, 0x7f120f6a

    if-ne p1, v4, :cond_a

    .line 28
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v4, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v6, v4, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v6, v6, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v6, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    xor-int/2addr v1, v6

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    .line 29
    invoke-static {v4}, Lcom/narvii/account/CommunityPushSettingFragment;->v(Lcom/narvii/account/CommunityPushSettingFragment;)I

    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const-string v1, "community"

    .line 30
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 31
    iget v1, v1, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 32
    iget-object v4, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const/16 v6, 0x19

    const/4 v7, 0x2

    if-eqz v4, :cond_7

    if-eqz p1, :cond_6

    .line 33
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-gt p1, v6, :cond_5

    goto :goto_0

    .line 34
    :cond_5
    invoke-static {v1, v0, v7}, Lcom/narvii/account/CommunityPushSettingFragment;->u(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

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

    aput v7, v3, v5

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    .line 37
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-le p1, v6, :cond_8

    goto :goto_1

    .line 38
    :cond_8
    invoke-static {v1, v0, v7}, Lcom/narvii/account/CommunityPushSettingFragment;->u(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

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

    aput v7, v3, v5

    :cond_a
    :goto_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/account/CommunityPushSettingFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
