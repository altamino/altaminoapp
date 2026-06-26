.class Lcom/narvii/amino/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 506
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$3;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$3;->this$0:Lcom/narvii/amino/MainActivity;

    iget-object v1, v0, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v1, :cond_1

    .line 510
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    .line 511
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "account"

    .line 515
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 516
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 519
    :cond_2
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/amino/MainActivity$3;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 521
    new-instance v2, Lcom/narvii/amino/MainActivity$3$1;

    invoke-direct {v2, p0, v1}, Lcom/narvii/amino/MainActivity$3$1;-><init>(Lcom/narvii/amino/MainActivity$3;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    return-void
.end method
