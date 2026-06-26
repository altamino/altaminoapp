.class Lcom/narvii/notice/NotificationTurnedOffWarningFragment$1;
.super Ljava/lang/Object;
.source "NotificationTurnedOffWarningFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NotificationTurnedOffWarningFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NotificationTurnedOffWarningFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment$1;->this$0:Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment$1;->this$0:Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    const-string v0, "NotificationsOffPrompt"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 43
    iget-object p1, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment$1;->this$0:Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    iget-object v0, p1, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
