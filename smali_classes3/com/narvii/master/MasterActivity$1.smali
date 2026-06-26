.class Lcom/narvii/master/MasterActivity$1;
.super Ljava/lang/Object;
.source "MasterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterActivity;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    iget-boolean v1, v0, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    .line 256
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v0, v0, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 263
    :cond_2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 265
    iget-object v1, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    iget-object v1, v1, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    new-instance v2, Lcom/narvii/master/MasterActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/master/MasterActivity$1$1;-><init>(Lcom/narvii/master/MasterActivity$1;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    return-void
.end method
