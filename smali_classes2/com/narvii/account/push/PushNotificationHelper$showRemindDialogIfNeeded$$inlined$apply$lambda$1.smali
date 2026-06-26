.class final Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "PushNotificationHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $messageText$inlined:Ljava/lang/String;

.field final synthetic $this_apply:Lcom/narvii/account/push/PushNotificationDialog2;

.field final synthetic $titleText$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method constructor <init>(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/account/push/PushNotificationDialog2;

    iput-object p2, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    iput-object p3, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;->$titleText$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;->$messageText$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/account/push/PushNotificationDialog2;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "YesArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 85
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-static {p1}, Lcom/narvii/account/push/PushNotificationHelper;->access$showConfirmDialog(Lcom/narvii/account/push/PushNotificationHelper;)V

    return-void
.end method
