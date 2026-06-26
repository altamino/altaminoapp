.class final Lcom/narvii/account/push/PushNotificationHelper$showConfirmDialog$1;
.super Ljava/lang/Object;
.source "PushNotificationHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/push/PushNotificationHelper;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method constructor <init>(Lcom/narvii/account/push/PushNotificationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showConfirmDialog$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showConfirmDialog$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper$showConfirmDialog$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-static {v0}, Lcom/narvii/account/push/PushNotificationHelper;->access$getNotificationManagerHelper$p(Lcom/narvii/account/push/PushNotificationHelper;)Lcom/narvii/util/NotificationManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
