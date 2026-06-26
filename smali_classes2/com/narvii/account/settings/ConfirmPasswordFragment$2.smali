.class Lcom/narvii/account/settings/ConfirmPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ConfirmPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$2;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$2;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object v0, v0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextLoadingLayout;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$2;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object v1, v0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    iget-object v0, v0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountUtils;->isValidPassword(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

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
