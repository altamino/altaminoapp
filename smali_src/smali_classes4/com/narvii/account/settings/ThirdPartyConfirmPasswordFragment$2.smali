.class Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$2;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$2;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/TextLoadingLayout;->isLoading()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$2;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountUtils;->isValidPassword(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
