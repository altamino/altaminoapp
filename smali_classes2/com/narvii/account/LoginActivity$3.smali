.class Lcom/narvii/account/LoginActivity$3;
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

    .line 486
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.FINISH_LOGIN_PAGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object p1, p1, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->access$202(Lcom/narvii/account/LoginActivity;Z)Z

    .line 492
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 493
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->access$202(Lcom/narvii/account/LoginActivity;Z)Z

    :cond_0
    return-void
.end method
