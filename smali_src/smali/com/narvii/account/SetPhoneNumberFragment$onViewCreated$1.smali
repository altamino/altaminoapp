.class public final Lcom/narvii/account/SetPhoneNumberFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SetPhoneNumberFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SetPhoneNumberFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SetPhoneNumberFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$onViewCreated$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$onViewCreated$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/account/SetPhoneNumberFragment;->access$getBinding(Lcom/narvii/account/SetPhoneNumberFragment;)Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;->verifyPhone:Landroid/widget/Button;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/SetPhoneNumberFragment$onViewCreated$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/account/SetPhoneNumberFragment;->access$getBinding(Lcom/narvii/account/SetPhoneNumberFragment;)Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    xor-int/2addr v0, v2

    .line 30
    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    move v1, v2

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
