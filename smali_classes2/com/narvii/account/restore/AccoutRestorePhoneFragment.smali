.class public Lcom/narvii/account/restore/AccoutRestorePhoneFragment;
.super Lcom/narvii/account/restore/AccountRestoreBaseFragment;
.source "AccoutRestorePhoneFragment.java"


# instance fields
.field countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

.field phoneInputLayout:Lcom/narvii/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;-><init>()V

    return-void
.end method

.method private getCurrentPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    invoke-virtual {v2}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->getCountryCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected forgetPassword()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/AccountWebUtils;->openForgetPasswordPage(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isContentVerified()Z
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    if-nez v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v3}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/narvii/account/AccountUtils;->isPhoneAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0276

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1, p2}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0902f5

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    iput-object p2, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    const p2, 0x7f09082b

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    iput-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 34
    iget-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p1, "phoneNumber"

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 38
    array-length v0, p2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    const v2, 0x7f0903bb

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 42
    aget-object p2, p2, v2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 49
    iget-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 51
    :cond_1
    new-instance p1, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;-><init>(Lcom/narvii/account/restore/AccoutRestorePhoneFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    .line 69
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-void
.end method

.method protected setupResultIntent(Landroid/content/Intent;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
