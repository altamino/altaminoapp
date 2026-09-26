.class Lcom/narvii/account/LoginActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->logAuthPrompt()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 30
    const/4 p2, 0x3

    .line 31
    .line 32
    iput p2, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    iput p2, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 40
    .line 41
    iput p2, p1, Lcom/narvii/account/LoginActivity;->statErrorCode:I

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    iput-object v0, p1, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1}, Lcom/narvii/account/LoginActivity;->u(Lcom/narvii/account/LoginActivity;Z)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1, p2, v0}, Lcom/narvii/account/LoginActivity;->finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->u(Lcom/narvii/account/LoginActivity;Z)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->updateViews()V

    .line 65
    :cond_1
    :goto_0
    return-void
.end method
