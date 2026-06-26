.class Lcom/narvii/app/NVActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "NVActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 452
    iget-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    const-string p2, "account"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 453
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_0
    return-void
.end method
