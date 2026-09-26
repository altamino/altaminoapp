.class public Lcom/narvii/account/restore/AccountRestoreEmailFragment;
.super Lcom/narvii/account/restore/AccountRestoreBaseFragment;
.source "SourceFile"


# instance fields
.field emailInputLayout:Lcom/narvii/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected isContentVerified()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0, v3}, Lcom/narvii/account/AccountUtils;->isEmailAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    :goto_0
    return v1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d02a0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a04d5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 20
    .line 21
    const-string p2, "email"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    .line 59
    :cond_0
    new-instance p1, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;-><init>(Lcom/narvii/account/restore/AccountRestoreEmailFragment;)V

    .line 63
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 68
    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "email"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    return-void
.end method

.method protected setupResultIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "email"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    return-void
.end method
