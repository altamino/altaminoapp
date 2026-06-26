.class Lcom/narvii/monetization/StoreItemOwnStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "StoreItemOwnStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/StoreItemOwnStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/StoreItemOwnStatusController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$1;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$1;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    :cond_0
    return-void
.end method
