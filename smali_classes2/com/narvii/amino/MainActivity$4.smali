.class Lcom/narvii/amino/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainActivity;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainActivity;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 533
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    const-string p2, "account"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 534
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    move-result p2

    if-lez p2, :cond_0

    .line 536
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    iget-object p2, p1, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    if-nez p2, :cond_4

    .line 537
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p2, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p1, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 539
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    iget-object p1, p1, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_2

    .line 542
    :cond_0
    iget-object p2, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    iget-object p2, p2, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p2, :cond_4

    .line 543
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    .line 544
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    iget-object v0, v0, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 545
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 547
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 549
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    goto :goto_1

    .line 551
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 553
    :goto_0
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    const p2, 0x7f0f0044

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 555
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-static {p1, p2, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 558
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/app/DrawerActivity;->peekDrawer(JJ)V

    .line 562
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    :goto_2
    return-void
.end method
