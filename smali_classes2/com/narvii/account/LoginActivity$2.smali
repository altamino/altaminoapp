.class Lcom/narvii/account/LoginActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->logAuthPrompt()V

    .line 470
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object p1, p1, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p2, 0x3

    iput p2, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/4 p2, 0x0

    .line 472
    iput p2, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    const/16 v0, 0xa

    .line 473
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 474
    iput p2, p1, Lcom/narvii/account/LoginActivity;->statErrorCode:I

    const/4 v0, 0x0

    .line 475
    iput-object v0, p1, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 476
    invoke-static {p1, v1}, Lcom/narvii/account/LoginActivity;->access$102(Lcom/narvii/account/LoginActivity;Z)Z

    .line 477
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1, v0, v1, p2, v0}, Lcom/narvii/account/LoginActivity;->finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->access$102(Lcom/narvii/account/LoginActivity;Z)Z

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->updateViews()V

    :cond_1
    :goto_0
    return-void
.end method
