.class final Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$dialog$1$1;
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
.field final synthetic $this_apply:Lcom/narvii/account/push/PushNotificationDialog2;


# direct methods
.method constructor <init>(Lcom/narvii/account/push/PushNotificationDialog2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$dialog$1$1;->$this_apply:Lcom/narvii/account/push/PushNotificationDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$dialog$1$1;->$this_apply:Lcom/narvii/account/push/PushNotificationDialog2;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "NoArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
