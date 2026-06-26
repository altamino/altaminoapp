.class Lcom/narvii/account/LoginActivity$4$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity$4;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearResponseWhenAccountChange()V
    .locals 0

    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 1

    .line 607
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p2, p2, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p2, p2, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-boolean p2, p2, Lcom/narvii/account/LoginActivity$4;->val$finalSkipInterestPicker:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    if-eqz p2, :cond_1

    const-string p2, "interestPicker"

    const-string v0, "login success"

    .line 611
    invoke-static {p2, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p2, p2, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;)V

    .line 615
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p2, p1, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    iget-boolean p1, p1, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    invoke-static {p2, p1}, Lcom/narvii/account/LoginActivity;->access$400(Lcom/narvii/account/LoginActivity;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    .line 620
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p1, p1, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p1, p1, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4$1;->this$1:Lcom/narvii/account/LoginActivity$4;

    iget-object p2, p1, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    iget-boolean p1, p1, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    invoke-static {p2, p1}, Lcom/narvii/account/LoginActivity;->access$400(Lcom/narvii/account/LoginActivity;Z)V

    :cond_1
    :goto_0
    return-void
.end method
