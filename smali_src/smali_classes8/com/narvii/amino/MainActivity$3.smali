.class Lcom/narvii/amino/MainActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$3;->this$0:Lcom/narvii/amino/MainActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$3;->this$0:Lcom/narvii/amino/MainActivity;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

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
    const-string v1, "account"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    :cond_2
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/amino/MainActivity$3;->this$0:Lcom/narvii/amino/MainActivity;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 44
    .line 45
    new-instance v2, Lcom/narvii/amino/MainActivity$3$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v1}, Lcom/narvii/amino/MainActivity$3$1;-><init>(Lcom/narvii/amino/MainActivity$3;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    .line 52
    return-void
.end method
