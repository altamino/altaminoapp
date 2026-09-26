.class Lcom/narvii/master/MasterActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/MasterActivity$1;->lambda$run$0(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/User;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0xc8

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 18
    :cond_0
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, v0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    return-void

    .line 28
    .line 29
    :cond_2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/master/MasterActivity$1;->this$0:Lcom/narvii/master/MasterActivity;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/master/p;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/narvii/master/p;-><init>(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    .line 50
    return-void
.end method
