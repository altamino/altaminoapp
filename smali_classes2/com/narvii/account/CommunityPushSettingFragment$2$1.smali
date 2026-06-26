.class Lcom/narvii/account/CommunityPushSettingFragment$2$1;
.super Ljava/lang/Object;
.source "CommunityPushSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CommunityPushSettingFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment$2;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$1;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$1;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v0, p1, Lcom/narvii/account/CommunityPushSettingFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
