.class Lcom/narvii/account/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity;->finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;

.field final synthetic val$crossAppFinish:Z

.field final synthetic val$finalSkipInterestPicker:Z

.field final synthetic val$newAccount:Z


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;ZZZ)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    iput-boolean p2, p0, Lcom/narvii/account/LoginActivity$4;->val$finalSkipInterestPicker:Z

    iput-boolean p3, p0, Lcom/narvii/account/LoginActivity$4;->val$crossAppFinish:Z

    iput-boolean p4, p0, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    const-string v1, "eventLogProfile"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 591
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->getResponse()Lcom/narvii/logging/EventLogProfileResponse;

    move-result-object v1

    .line 592
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->getError()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 596
    iget-boolean v3, p0, Lcom/narvii/account/LoginActivity$4;->val$finalSkipInterestPicker:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    if-eqz v3, :cond_2

    const-string v3, "interestPicker"

    const-string v4, "login success directly"

    .line 597
    invoke-static {v3, v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v3, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-virtual {v3}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;)V

    :cond_2
    const/4 v1, 0x1

    .line 602
    :goto_1
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v2, v2, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/narvii/account/LoginActivity$4;->val$crossAppFinish:Z

    if-eqz v2, :cond_4

    :cond_3
    if-nez v1, :cond_4

    .line 603
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->refreshIfIdle()V

    .line 604
    iget-object v1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    new-instance v2, Lcom/narvii/account/LoginActivity$4$1;

    invoke-direct {v2, p0}, Lcom/narvii/account/LoginActivity$4$1;-><init>(Lcom/narvii/account/LoginActivity$4;)V

    invoke-static {v1, v2}, Lcom/narvii/account/LoginActivity;->access$302(Lcom/narvii/account/LoginActivity;Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    .line 631
    iget-object v1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-static {v1}, Lcom/narvii/account/LoginActivity;->access$300(Lcom/narvii/account/LoginActivity;)Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    goto :goto_2

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    iget-boolean v1, p0, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    invoke-static {v0, v1}, Lcom/narvii/account/LoginActivity;->access$400(Lcom/narvii/account/LoginActivity;Z)V

    :goto_2
    return-void
.end method
