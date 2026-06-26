.class final Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;
.super Ljava/lang/Object;
.source "PushNotificationHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/narvii/account/push/PushNotificationDialog2;

.field final synthetic $prefsKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method constructor <init>(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    iput-object p2, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->$prefsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->$dialog:Lcom/narvii/account/push/PushNotificationDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-static {v0}, Lcom/narvii/account/push/PushNotificationHelper;->access$getPrefs$p(Lcom/narvii/account/push/PushNotificationHelper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->$prefsKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->$dialog:Lcom/narvii/account/push/PushNotificationDialog2;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 94
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-static {v0}, Lcom/narvii/account/push/PushNotificationHelper;->access$getPrefs$p(Lcom/narvii/account/push/PushNotificationHelper;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;->$prefsKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
