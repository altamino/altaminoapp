.class public Lcom/narvii/account/settings/UpdatePhoneNumberFragment;
.super Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.source "UpdatePhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field action:Landroid/widget/TextView;

.field desc:Landroid/widget/TextView;

.field noPhoneSet:Landroid/widget/TextView;

.field phoneLayout:Lcom/narvii/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f0f0051

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09002c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getLocalCountryCode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/AccountWebHelper;->getUpdatePhoneNumberUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->openWebPage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0305

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090772

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->noPhoneSet:Landroid/widget/TextView;

    const p2, 0x7f090341

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->desc:Landroid/widget/TextView;

    const p2, 0x7f09082b

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    iput-object p2, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->phoneLayout:Lcom/narvii/widget/TextInputLayout;

    const p2, 0x7f09002c

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->action:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->action:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->updateViews()V

    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 50
    invoke-super {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->updateViews()V

    .line 51
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->noPhoneSet:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->phoneLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->action:Landroid/widget/TextView;

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->noPhoneSet:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->action:Landroid/widget/TextView;

    const v2, 0x7f0f110b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->phoneLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v1, " "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->phoneLayout:Lcom/narvii/widget/TextInputLayout;

    const v2, 0x7f0902f5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 65
    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;->phoneLayout:Lcom/narvii/widget/TextInputLayout;

    const v2, 0x7f0903bb

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 68
    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
