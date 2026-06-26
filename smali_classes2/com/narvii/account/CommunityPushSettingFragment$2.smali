.class Lcom/narvii/account/CommunityPushSettingFragment$2;
.super Ljava/lang/Object;
.source "CommunityPushSettingFragment.java"

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

    .line 141
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 8

    .line 144
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

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

    .line 145
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0e57

    .line 146
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/high16 v2, 0x1040000

    const/16 v3, 0x20

    const/4 v4, 0x0

    .line 147
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0e56

    const/4 v3, 0x4

    .line 148
    new-instance v4, Lcom/narvii/account/CommunityPushSettingFragment$2$1;

    invoke-direct {v4, p0}, Lcom/narvii/account/CommunityPushSettingFragment$2$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$2;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 154
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 155
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 156
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {v0}, Lcom/narvii/master/setting/CommunityPushResponse;->clone()Lcom/narvii/master/setting/CommunityPushResponse;

    move-result-object v0

    .line 163
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v3, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object v3, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v4, 0x7f0f0e51

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0193

    .line 165
    new-instance v4, Lcom/narvii/account/CommunityPushSettingFragment$2$2;

    invoke-direct {v4, p0, v2}, Lcom/narvii/account/CommunityPushSettingFragment$2$2;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/util/dialog/AlertDialog;)V

    const/16 v5, 0x40

    invoke-virtual {v2, v3, v5, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, -0xb56f1e

    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    new-array v3, v1, [I

    const v6, 0x7f0f119f

    .line 175
    new-instance v7, Lcom/narvii/account/CommunityPushSettingFragment$2$3;

    invoke-direct {v7, p0, v0, v3}, Lcom/narvii/account/CommunityPushSettingFragment$2$3;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V

    invoke-virtual {v2, v6, v5, v7}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 191
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 193
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v4, 0x7f0f0e4b

    const/4 v5, 0x0

    if-ne p1, v4, :cond_2

    .line 194
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v4, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v6, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    xor-int/2addr v6, v1

    iput-boolean v6, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 195
    iget-boolean v4, v4, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    if-eqz v4, :cond_1

    const v0, 0x7f0f0e52

    .line 196
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v1, v3, v5

    goto/16 :goto_2

    .line 200
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/narvii/account/CommunityPushSettingFragment;->access$000(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    goto/16 :goto_2

    :cond_2
    const v4, 0x7f0f0e4c

    if-ne p1, v4, :cond_4

    .line 204
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v4, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v6, v4, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v6, v6, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v7, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    xor-int/2addr v1, v7

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    .line 205
    iget-boolean p1, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const p1, 0x7f0f0e53

    .line 206
    invoke-virtual {v4, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v1, v3, v5

    goto/16 :goto_2

    .line 210
    :cond_3
    invoke-static {v4, v0, v1}, Lcom/narvii/account/CommunityPushSettingFragment;->access$000(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    goto/16 :goto_2

    :cond_4
    const v4, 0x7f0f0e49

    if-ne p1, v4, :cond_a

    .line 213
    iget-object p1, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-object v4, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v6, v4, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v6, v6, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v6, v6, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    xor-int/2addr v1, v6

    iput-boolean v1, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    .line 214
    invoke-static {v4}, Lcom/narvii/account/CommunityPushSettingFragment;->access$100(Lcom/narvii/account/CommunityPushSettingFragment;)I

    .line 215
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const-string v1, "community"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 216
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget v1, v1, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 217
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v1, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v1, v1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v1, v1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const/16 v4, 0x19

    const/4 v6, 0x2

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    .line 219
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-gt p1, v4, :cond_5

    goto :goto_0

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-static {p1, v0, v6}, Lcom/narvii/account/CommunityPushSettingFragment;->access$000(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    goto :goto_2

    .line 220
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v0, 0x7f0f0e4f

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v6, v3, v5

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    if-eqz p1, :cond_8

    .line 228
    iget p1, p1, Lcom/narvii/model/Community;->membersCount:I

    if-le p1, v4, :cond_8

    goto :goto_1

    .line 233
    :cond_8
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-static {p1, v0, v6}, Lcom/narvii/account/CommunityPushSettingFragment;->access$000(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    goto :goto_2

    .line 229
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v0, 0x7f0f0e50

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    aput v6, v3, v5

    :cond_a
    :goto_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/account/CommunityPushSettingFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
