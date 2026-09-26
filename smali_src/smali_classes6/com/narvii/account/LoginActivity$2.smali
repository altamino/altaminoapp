.class Lcom/narvii/account/LoginActivity$2;
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
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

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
    const-string p1, "com.narvii.action.FINISH_LOGIN_PAGE"

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
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    .line 41
    const/4 p2, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->v(Lcom/narvii/account/LoginActivity;Z)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$2;->this$0:Lcom/narvii/account/LoginActivity;

    .line 52
    const/4 p2, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->v(Lcom/narvii/account/LoginActivity;Z)V

    .line 56
    :cond_0
    return-void
.end method
