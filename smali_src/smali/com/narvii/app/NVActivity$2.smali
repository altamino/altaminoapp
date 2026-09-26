.class Lcom/narvii/app/NVActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    const-string p2, "account"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/app/NVActivity$2;->this$0:Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 30
    :cond_0
    return-void
.end method
