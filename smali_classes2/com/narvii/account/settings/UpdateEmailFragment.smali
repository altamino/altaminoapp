.class public Lcom/narvii/account/settings/UpdateEmailFragment;
.super Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.source "UpdateEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field addEmail:Landroid/widget/TextView;

.field changeEmail:Landroid/widget/TextView;

.field desc:Landroid/widget/TextView;

.field email:Landroid/widget/TextView;

.field verifyEmail:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f0f0034

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090064

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901c1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090c49

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1}, Lcom/narvii/util/AccountWebHelper;->getActivateEmailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->openWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1}, Lcom/narvii/util/AccountWebHelper;->getUpdateEmailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->openWebPage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0304

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903d5

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->email:Landroid/widget/TextView;

    const p2, 0x7f090341

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->desc:Landroid/widget/TextView;

    const p2, 0x7f090064

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->addEmail:Landroid/widget/TextView;

    const p2, 0x7f0901c1

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->changeEmail:Landroid/widget/TextView;

    const p2, 0x7f090c49

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->verifyEmail:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->addEmail:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->changeEmail:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->verifyEmail:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdateEmailFragment;->updateViews()V

    return-void
.end method

.method protected updateViews()V
    .locals 5

    .line 40
    invoke-super {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->updateViews()V

    .line 41
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->email:Landroid/widget/TextView;

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->addEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->changeEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->verifyEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->desc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->email:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->addEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasEmailActivation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->desc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0059

    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \ud83d\udc4f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->changeEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->verifyEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->desc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f0058

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \ud83d\ude31"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->changeEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailFragment;->verifyEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
