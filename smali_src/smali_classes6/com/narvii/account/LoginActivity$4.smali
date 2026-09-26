.class Lcom/narvii/account/LoginActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity;->sendingPublicKeySucceed(ILcom/narvii/account/AccountBaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;

.field final synthetic val$finalSkipInterestPicker:Z

.field final synthetic val$newAccount:Z


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/account/LoginActivity$4;->val$finalSkipInterestPicker:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public clearResponseWhenAccountChange()V
    .locals 0

    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$4;->val$finalSkipInterestPicker:Z

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-boolean p2, p1, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    const-string p2, "interestPicker"

    .line 30
    .line 31
    const-string v0, "login success"

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;)V

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 46
    .line 47
    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->w(Lcom/narvii/account/LoginActivity;Z)V

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$4;->this$0:Lcom/narvii/account/LoginActivity;

    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity$4;->val$newAccount:Z

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/narvii/account/LoginActivity;->w(Lcom/narvii/account/LoginActivity;Z)V

    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public shouldShowDialog()V
    .locals 0

    return-void
.end method
