.class Lcom/narvii/account/PushSettingListFragment$2;
.super Ljava/lang/Object;
.source "PushSettingListFragment.java"

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

    .line 117
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

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

    .line 121
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0e57

    .line 122
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/high16 v2, 0x1040000

    const/16 v3, 0x20

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0e56

    const/4 v3, 0x4

    .line 124
    new-instance v4, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$-VzC8DPKiRdKjTyv25K44GInM0w;

    invoke-direct {v4, p0}, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$-VzC8DPKiRdKjTyv25K44GInM0w;-><init>(Lcom/narvii/account/PushSettingListFragment$2;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 125
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 126
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 127
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {v0}, Lcom/narvii/master/setting/CommunityPushResponse;->clone()Lcom/narvii/master/setting/CommunityPushResponse;

    move-result-object v0

    .line 134
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v4, 0x7f0f0e51

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0193

    .line 136
    new-instance v4, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$oArEzO21FC1vpIZoVbwoZS_0dgM;

    invoke-direct {v4, p0, v2}, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$oArEzO21FC1vpIZoVbwoZS_0dgM;-><init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/util/dialog/AlertDialog;)V

    const/16 v5, 0x40

    invoke-virtual {v2, v3, v5, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, -0xb56f1e

    .line 140
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    new-array v3, v1, [I

    const v6, 0x7f0f119f

    .line 143
    new-instance v7, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;

    invoke-direct {v7, p0, v0, v3}, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;-><init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V

    invoke-virtual {v2, v6, v5, v7}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 156
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v4, 0x7f0f0e4b

    const/4 v5, 0x0

    if-ne p1, v4, :cond_2

    .line 159
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v4, p1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v6, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    xor-int/2addr v6, v1

    iput-boolean v6, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 160
    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    if-eqz v4, :cond_1

    const v0, 0x7f0f0e55

    .line 161
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v0, 0x7f0f0e54

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v1, v3, v5

    goto/16 :goto_2

    .line 166
    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/account/PushSettingListFragment;->access$000(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto/16 :goto_2

    :cond_2
    const v4, 0x7f0f0e4c

    if-ne p1, v4, :cond_4

    .line 170
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v4, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v6, v4, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v6, v6, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v7, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    xor-int/2addr v1, v7

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    .line 171
    iget-boolean p1, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    if-eqz p1, :cond_3

    const p1, 0x7f0f0e53

    .line 172
    invoke-virtual {v4, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x3

    aput p1, v3, v5

    goto/16 :goto_2

    .line 176
    :cond_3
    invoke-static {v4, v0}, Lcom/narvii/account/PushSettingListFragment;->access$000(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto :goto_2

    :cond_4
    const v3, 0x7f0f0e49

    if-ne p1, v3, :cond_a

    .line 179
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v3, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v4, v3, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    xor-int/2addr v1, v4

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const-string p1, "community"

    .line 180
    invoke-virtual {v3, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 181
    invoke-virtual {p1, v5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 182
    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v1, v1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v1, v1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v1, v1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const/16 v3, 0x19

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    .line 184
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-gt p1, v3, :cond_5

    goto :goto_0

    .line 188
    :cond_5
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-static {p1, v0}, Lcom/narvii/account/PushSettingListFragment;->access$000(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto :goto_2

    .line 185
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v0, 0x7f0f0e4f

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    if-eqz p1, :cond_8

    .line 192
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-le p1, v3, :cond_8

    goto :goto_1

    .line 196
    :cond_8
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-static {p1, v0}, Lcom/narvii/account/PushSettingListFragment;->access$000(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/master/setting/CommunityPushResponse;)V

    goto :goto_2

    .line 193
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v0, 0x7f0f0e50

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    :cond_a
    :goto_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/account/PushSettingListFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method

.method public synthetic lambda$call$0$PushSettingListFragment$2(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v0, p1, Lcom/narvii/account/PushSettingListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$call$1$PushSettingListFragment$2(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 137
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 138
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$2;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$call$2$PushSettingListFragment$2(Lcom/narvii/master/setting/CommunityPushResponse;[ILandroid/view/View;)V
    .locals 0

    return-void
.end method
