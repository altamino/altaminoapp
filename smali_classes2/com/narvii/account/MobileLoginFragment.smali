.class public Lcom/narvii/account/MobileLoginFragment;
.super Lcom/narvii/account/LoginBaseFragment;
.source "MobileLoginFragment.java"


# instance fields
.field countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

.field phoneInputLayout:Lcom/narvii/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/account/LoginBaseFragment;-><init>()V

    return-void
.end method

.method private getCurrentPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/narvii/account/MobileLoginFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/account/MobileLoginFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

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

    .line 106
    invoke-direct {p0}, Lcom/narvii/account/MobileLoginFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/AccountWebUtils;->openForgetPasswordPage(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isContentVerified()Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    iget-object v1, p0, Lcom/narvii/account/MobileLoginFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v2}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/account/AccountUtils;->isPhoneAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/account/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x3

    .line 36
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/4 v0, 0x0

    .line 37
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    const/4 v0, 0x1

    .line 38
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02b7

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 50
    invoke-super {p0, p1, p2}, Lcom/narvii/account/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090b9a

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09082b

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    iput-object p2, p0, Lcom/narvii/account/MobileLoginFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 54
    iget-object p2, p0, Lcom/narvii/account/MobileLoginFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p2}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p2, "phoneNumber"

    .line 55
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    const-string v1, "last_phoneNumber"

    .line 57
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0902f5

    if-nez v0, :cond_1

    const-string v0, " "

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 61
    array-length v0, p2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/narvii/account/MobileLoginFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    const/4 v2, 0x0

    .line 63
    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/account/MobileLoginFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    const v2, 0x7f0903bb

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 66
    aget-object p2, p2, v2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    const-string v0, "pass"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    iput-object p1, p0, Lcom/narvii/account/MobileLoginFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 73
    new-instance p1, Lcom/narvii/account/MobileLoginFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/account/MobileLoginFragment$1;-><init>(Lcom/narvii/account/MobileLoginFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/narvii/account/MobileLoginFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    .line 84
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v2, 0x2

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "v"

    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-void
.end method
